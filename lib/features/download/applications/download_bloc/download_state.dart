import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';
import 'package:mqfm_apps/features/download/domain/entities/download.dart';

part 'download_state.freezed.dart';

@freezed
class DownloadState with _$DownloadState {
  const factory DownloadState.initial() = DownloadInitial;
  const factory DownloadState.loading() = DownloadLoading;
  const factory DownloadState.downloading({required int audioId}) =
      DownloadDownloading;
  const factory DownloadState.loaded(
      {required List<DownloadEntity> downloads}) = DownloadLoaded;
  const factory DownloadState.storageLoaded(
      {required DownloadStorageEntity storage}) = DownloadStorageLoaded;
  const factory DownloadState.smartLoaded(
      {required List<AudioEntity> suggestions}) = DownloadSmartLoaded;
  const factory DownloadState.actionSuccess({required String message}) =
      DownloadActionSuccess;
  const factory DownloadState.error({required String message}) = DownloadError;
}
