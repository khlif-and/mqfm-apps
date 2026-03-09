// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookmark_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateBookmarkRequest _$CreateBookmarkRequestFromJson(
  Map<String, dynamic> json,
) => CreateBookmarkRequest(
  audioId: (json['audio_id'] as num).toInt(),
  positionSeconds: (json['position_seconds'] as num).toInt(),
  label: json['label'] as String,
);

Map<String, dynamic> _$CreateBookmarkRequestToJson(
  CreateBookmarkRequest instance,
) => <String, dynamic>{
  'audio_id': instance.audioId,
  'position_seconds': instance.positionSeconds,
  'label': instance.label,
};
