import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';

part 'like.freezed.dart';
part 'like.g.dart';

@freezed
class LikeEntity with _$LikeEntity {
  const factory LikeEntity({
    @Default(0) int id,
    @Default(0) int userId,
    @Default('audio') String targetType,
    @Default(0) int targetId,
    @Default('') String createdAt,
    AudioEntity? audio,
  }) = _LikeEntity;

  factory LikeEntity.fromJson(Map<String, dynamic> json) =>
      _$LikeEntityFromJson(json);
}
