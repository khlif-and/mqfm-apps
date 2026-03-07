import 'package:freezed_annotation/freezed_annotation.dart';

part 'like_event.freezed.dart';

@freezed
class LikeEvent with _$LikeEvent {
  const factory LikeEvent.fetchLiked() = LikeFetchLiked;
  const factory LikeEvent.toggle({required int audioId}) = LikeToggle;
  const factory LikeEvent.unlike({required int audioId, required int index}) =
      LikeUnlike;
}
