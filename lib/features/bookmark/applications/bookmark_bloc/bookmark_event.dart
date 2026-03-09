import 'package:freezed_annotation/freezed_annotation.dart';

part 'bookmark_event.freezed.dart';

@freezed
class BookmarkEvent with _$BookmarkEvent {
  const factory BookmarkEvent.fetch() = BookmarkFetch;
  const factory BookmarkEvent.fetchByAudio({required int audioId}) =
      BookmarkFetchByAudio;
  const factory BookmarkEvent.create({
    required int audioId,
    required int positionSeconds,
    required String label,
  }) = BookmarkCreate;
  const factory BookmarkEvent.delete({required int id}) = BookmarkDelete;
}
