import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';

part 'download_event.freezed.dart';

@freezed
class DownloadEvent with _$DownloadEvent {
  const factory DownloadEvent.fetch() = DownloadFetch;
  const factory DownloadEvent.create({
    required int audioId,
    int? playlistId,
    int? fileSize,
  }) = DownloadCreate;
  const factory DownloadEvent.downloadFile({
    required AudioEntity audio,
    int? playlistId,
  }) = DownloadFile;
  const factory DownloadEvent.delete({required int id}) = DownloadDelete;
  const factory DownloadEvent.fetchStorage() = DownloadFetchStorage;
  const factory DownloadEvent.fetchSmart() = DownloadFetchSmart;
}
