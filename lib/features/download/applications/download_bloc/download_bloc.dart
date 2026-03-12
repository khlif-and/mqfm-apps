import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:mqfm_apps/features/download/applications/download_bloc/download_event.dart';
import 'package:mqfm_apps/features/download/applications/download_bloc/download_state.dart';
import 'package:mqfm_apps/features/download/data/datasources/locals/audio_file_downloader.dart';
import 'package:mqfm_apps/features/download/data/datasources/locals/download_db_helper.dart';
import 'package:mqfm_apps/features/download/domain/interfaces/i_download_repository.dart';

@injectable
class DownloadBloc extends Bloc<DownloadEvent, DownloadState> {
  final IDownloadRepository _repository;

  DownloadBloc(this._repository) : super(const DownloadState.initial()) {
    on<DownloadFetch>(_onFetch);
    on<DownloadCreate>(_onCreate);
    on<DownloadFile>(_onDownloadFile);
    on<DownloadDelete>(_onDelete);
    on<DownloadFetchStorage>(_onFetchStorage);
    on<DownloadFetchSmart>(_onFetchSmart);
  }

  Future<void> _onFetch(
      DownloadFetch event, Emitter<DownloadState> emit) async {
    emit(const DownloadState.loading());
    final result = await _repository.getDownloads();
    result.fold(
      (error) => emit(DownloadState.error(message: error)),
      (downloads) => emit(DownloadState.loaded(downloads: downloads)),
    );
  }

  Future<void> _onCreate(
      DownloadCreate event, Emitter<DownloadState> emit) async {
    emit(const DownloadState.loading());
    final result = await _repository.createDownload(
      audioId: event.audioId,
      playlistId: event.playlistId,
      fileSize: event.fileSize,
    );
    result.fold(
      (error) => emit(DownloadState.error(message: error)),
      (_) => emit(
          const DownloadState.actionSuccess(message: 'Download ditambahkan')),
    );
  }

  Future<void> _onDownloadFile(
      DownloadFile event, Emitter<DownloadState> emit) async {
    final audio = event.audio;

    emit(DownloadState.downloading(audioId: audio.id));

    final apiResult = await _repository.createDownload(
      audioId: audio.id,
      playlistId: event.playlistId,
      fileSize: audio.fileSize > 0 ? audio.fileSize : null,
    );

    final downloadEntity = apiResult.fold(
      (error) {
        emit(DownloadState.error(message: error));
        return null;
      },
      (entity) => entity,
    );
    if (downloadEntity == null) return;

    try {
      final localPath = await AudioFileDownloader().download(
        audioId: audio.id,
        filePath: audio.filePath,
        title: audio.title,
      );

      await DownloadDbHelper.insert(
        audioId: audio.id,
        title: audio.title,
        artist: audio.artist,
        thumbnail: audio.thumbnail,
        dominantColor: audio.dominantColor,
        duration: audio.duration,
        durationFmt: audio.durationFmt,
        fileSize: audio.fileSize,
        filePath: audio.filePath,
        localPath: localPath,
        downloadId: downloadEntity.id,
        createdAt: downloadEntity.createdAt,
      );

      emit(const DownloadState.actionSuccess(
          message: 'Audio berhasil diunduh'));
    } catch (e) {
      emit(DownloadState.error(message: 'Gagal mengunduh file: $e'));
    }
  }

  Future<void> _onDelete(
      DownloadDelete event, Emitter<DownloadState> emit) async {
    emit(const DownloadState.loading());

    final rows = await DownloadDbHelper.getAll();
    final localRow = rows.where((r) => r['download_id'] == event.id).firstOrNull;
    if (localRow != null) {
      final audioId = localRow['audio_id'] as int;
      await AudioFileDownloader().deleteFile(audioId);
      await DownloadDbHelper.deleteByAudioId(audioId);
    }

    final result = await _repository.deleteDownload(event.id);
    result.fold(
      (error) => emit(DownloadState.error(message: error)),
      (_) =>
          emit(const DownloadState.actionSuccess(message: 'Download dihapus')),
    );
  }

  Future<void> _onFetchStorage(
      DownloadFetchStorage event, Emitter<DownloadState> emit) async {
    emit(const DownloadState.loading());
    final result = await _repository.getStorage();
    result.fold(
      (error) => emit(DownloadState.error(message: error)),
      (storage) => emit(DownloadState.storageLoaded(storage: storage)),
    );
  }

  Future<void> _onFetchSmart(
      DownloadFetchSmart event, Emitter<DownloadState> emit) async {
    emit(const DownloadState.loading());
    final result = await _repository.getSmartDownloads();
    result.fold(
      (error) => emit(DownloadState.error(message: error)),
      (suggestions) =>
          emit(DownloadState.smartLoaded(suggestions: suggestions)),
    );
  }
}
