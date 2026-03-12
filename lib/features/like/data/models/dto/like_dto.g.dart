// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'like_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LikeDto _$LikeDtoFromJson(Map<String, dynamic> json) => LikeDto(
  id: (json['id'] as num).toInt(),
  userId: (json['user_id'] as num).toInt(),
  targetType: json['target_type'] as String,
  targetId: (json['target_id'] as num).toInt(),
  createdAt: json['created_at'] as String,
  audio: json['audio'] == null
      ? null
      : AudioDto.fromJson(json['audio'] as Map<String, dynamic>),
);

Map<String, dynamic> _$LikeDtoToJson(LikeDto instance) => <String, dynamic>{
  'id': instance.id,
  'user_id': instance.userId,
  'target_type': instance.targetType,
  'target_id': instance.targetId,
  'created_at': instance.createdAt,
  'audio': instance.audio,
};
