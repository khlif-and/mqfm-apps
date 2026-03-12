// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'like.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LikeEntityImpl _$$LikeEntityImplFromJson(Map<String, dynamic> json) =>
    _$LikeEntityImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      userId: (json['userId'] as num?)?.toInt() ?? 0,
      targetType: json['targetType'] as String? ?? 'audio',
      targetId: (json['targetId'] as num?)?.toInt() ?? 0,
      createdAt: json['createdAt'] as String? ?? '',
      audio: json['audio'] == null
          ? null
          : AudioEntity.fromJson(json['audio'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LikeEntityImplToJson(_$LikeEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'targetType': instance.targetType,
      'targetId': instance.targetId,
      'createdAt': instance.createdAt,
      'audio': instance.audio,
    };
