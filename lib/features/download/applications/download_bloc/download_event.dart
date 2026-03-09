import 'package:freezed_annotation/freezed_annotation.dart';

part 'download_event.freezed.dart';

@freezed
class DownloadEvent with _$DownloadEvent {
  const factory DownloadEvent.fetch() = DownloadFetch;
  const factory DownloadEvent.create({required int audioId}) = DownloadCreate;
  const factory DownloadEvent.delete({required int id}) = DownloadDelete;
  const factory DownloadEvent.fetchStorage() = DownloadFetchStorage;
  const factory DownloadEvent.fetchSmart() = DownloadFetchSmart;
}
