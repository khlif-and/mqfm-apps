import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:mqfm_apps/features/download/applications/download_bloc/download_event.dart';
import 'package:mqfm_apps/features/download/applications/download_bloc/download_state.dart';
import 'package:mqfm_apps/features/download/domain/interfaces/i_download_repository.dart';

@injectable
class DownloadBloc extends Bloc<DownloadEvent, DownloadState> {
  final IDownloadRepository _repository;

  DownloadBloc(this._repository) : super(const DownloadState.initial()) {
    on<DownloadFetch>(_onFetch);
    on<DownloadCreate>(_onCreate);
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
    final result = await _repository.createDownload(event.audioId);
    result.fold(
      (error) => emit(DownloadState.error(message: error)),
      (_) => emit(
          const DownloadState.actionSuccess(message: 'Download ditambahkan')),
    );
  }

  Future<void> _onDelete(
      DownloadDelete event, Emitter<DownloadState> emit) async {
    emit(const DownloadState.loading());
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
