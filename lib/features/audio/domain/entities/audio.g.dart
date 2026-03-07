// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AudioEntityImpl _$$AudioEntityImplFromJson(Map<String, dynamic> json) =>
    _$AudioEntityImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      description: json['description'] as String,
      audioUrl: json['audioUrl'] as String,
      thumbnail: json['thumbnail'] as String,
      categoryId: (json['categoryId'] as num).toInt(),
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$AudioEntityImplToJson(_$AudioEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'audioUrl': instance.audioUrl,
      'thumbnail': instance.thumbnail,
      'categoryId': instance.categoryId,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$PlayHistoryEntityImpl _$$PlayHistoryEntityImplFromJson(
  Map<String, dynamic> json,
) => _$PlayHistoryEntityImpl(
  id: (json['id'] as num).toInt(),
  userId: (json['userId'] as num).toInt(),
  audioId: (json['audioId'] as num).toInt(),
  playCount: (json['playCount'] as num).toInt(),
  playedAt: json['playedAt'] as String,
  createdAt: json['createdAt'] as String,
);

Map<String, dynamic> _$$PlayHistoryEntityImplToJson(
  _$PlayHistoryEntityImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'audioId': instance.audioId,
  'playCount': instance.playCount,
  'playedAt': instance.playedAt,
  'createdAt': instance.createdAt,
};
