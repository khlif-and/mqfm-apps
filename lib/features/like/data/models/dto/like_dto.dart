import 'package:json_annotation/json_annotation.dart';
import 'package:mqfm_apps/features/audio/data/models/dto/audio_dto.dart';
import 'package:mqfm_apps/features/like/domain/entities/like.dart';

part 'like_dto.g.dart';

@JsonSerializable()
class LikeDto {
  final int id;
  @JsonKey(name: 'user_id')
  final int userId;
  @JsonKey(name: 'target_type')
  final String targetType;
  @JsonKey(name: 'target_id')
  final int targetId;
  @JsonKey(name: 'created_at')
  final String createdAt;
  final AudioDto? audio;

  const LikeDto({
    required this.id,
    required this.userId,
    required this.targetType,
    required this.targetId,
    required this.createdAt,
    this.audio,
  });

  factory LikeDto.fromJson(Map<String, dynamic> json) =>
      _$LikeDtoFromJson(json);

  LikeEntity toEntity() {
    return LikeEntity(
      id: id,
      userId: userId,
      targetType: targetType,
      targetId: targetId,
      createdAt: createdAt,
      audio: audio?.toEntity(),
    );
  }
}
