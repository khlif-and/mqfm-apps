// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookmark.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookmarkEntityImpl _$$BookmarkEntityImplFromJson(Map<String, dynamic> json) =>
    _$BookmarkEntityImpl(
      id: (json['id'] as num).toInt(),
      audioId: (json['audioId'] as num?)?.toInt() ?? 0,
      positionSeconds: (json['positionSeconds'] as num?)?.toInt() ?? 0,
      label: json['label'] as String? ?? '',
      createdAt: json['createdAt'] as String? ?? '',
    );

Map<String, dynamic> _$$BookmarkEntityImplToJson(
  _$BookmarkEntityImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'audioId': instance.audioId,
  'positionSeconds': instance.positionSeconds,
  'label': instance.label,
  'createdAt': instance.createdAt,
};
