// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clip.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClipEntityImpl _$$ClipEntityImplFromJson(Map<String, dynamic> json) =>
    _$ClipEntityImpl(
      id: (json['id'] as num).toInt(),
      audioId: (json['audioId'] as num?)?.toInt() ?? 0,
      startTime: (json['startTime'] as num?)?.toInt() ?? 0,
      endTime: (json['endTime'] as num?)?.toInt() ?? 0,
      clipUrl: json['clipUrl'] as String? ?? '',
      shareToken: json['shareToken'] as String? ?? '',
      createdAt: json['createdAt'] as String? ?? '',
    );

Map<String, dynamic> _$$ClipEntityImplToJson(_$ClipEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'audioId': instance.audioId,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'clipUrl': instance.clipUrl,
      'shareToken': instance.shareToken,
      'createdAt': instance.createdAt,
    };
