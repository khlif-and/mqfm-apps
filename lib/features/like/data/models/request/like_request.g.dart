// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'like_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LikeRequest _$LikeRequestFromJson(Map<String, dynamic> json) => LikeRequest(
  targetType: json['target_type'] as String,
  targetId: (json['target_id'] as num).toInt(),
);

Map<String, dynamic> _$LikeRequestToJson(LikeRequest instance) =>
    <String, dynamic>{
      'target_type': instance.targetType,
      'target_id': instance.targetId,
    };
