import 'package:freezed_annotation/freezed_annotation.dart';

part 'like_event.freezed.dart';

@freezed
class LikeEvent with _$LikeEvent {
  const factory LikeEvent.fetchLiked() = LikeFetchLiked;
  const factory LikeEvent.like({required int targetId, @Default('audio') String targetType}) = LikeLike;
  const factory LikeEvent.unlike({required int targetId, @Default('audio') String targetType}) = LikeUnlike;
}
