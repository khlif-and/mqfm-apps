// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AudioDto _$AudioDtoFromJson(Map<String, dynamic> json) => AudioDto(
  id: (json['id'] as num).toInt(),
  title: json['title'] as String,
  description: json['description'] as String? ?? '',
  audioUrl: json['audio_url'] as String?,
  thumbnail: json['thumbnail'] as String?,
  categoryId: (json['category_id'] as num?)?.toInt() ?? 0,
  createdAt: json['created_at'] as String? ?? '',
  updatedAt: json['updated_at'] as String? ?? '',
);

Map<String, dynamic> _$AudioDtoToJson(AudioDto instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'description': instance.description,
  'audio_url': instance.audioUrl,
  'thumbnail': instance.thumbnail,
  'category_id': instance.categoryId,
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
};

AudioResponseDto _$AudioResponseDtoFromJson(Map<String, dynamic> json) =>
    AudioResponseDto(
      status: (json['status'] as num).toInt(),
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => AudioDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AudioResponseDtoToJson(AudioResponseDto instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

SingleAudioResponseDto _$SingleAudioResponseDtoFromJson(
  Map<String, dynamic> json,
) => SingleAudioResponseDto(
  status: (json['status'] as num).toInt(),
  message: json['message'] as String,
  data: json['data'] == null
      ? null
      : AudioDto.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$SingleAudioResponseDtoToJson(
  SingleAudioResponseDto instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': instance.message,
  'data': instance.data,
};

PlayHistoryDto _$PlayHistoryDtoFromJson(Map<String, dynamic> json) =>
    PlayHistoryDto(
      id: (json['id'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
      audioId: (json['audio_id'] as num).toInt(),
      playCount: (json['play_count'] as num?)?.toInt() ?? 1,
      playedAt: json['played_at'] as String? ?? '',
      createdAt: json['created_at'] as String? ?? '',
    );

Map<String, dynamic> _$PlayHistoryDtoToJson(PlayHistoryDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'audio_id': instance.audioId,
      'play_count': instance.playCount,
      'played_at': instance.playedAt,
      'created_at': instance.createdAt,
    };

PlayHistoryResponseDto _$PlayHistoryResponseDtoFromJson(
  Map<String, dynamic> json,
) => PlayHistoryResponseDto(
  status: (json['status'] as num).toInt(),
  message: json['message'] as String,
  data: (json['data'] as List<dynamic>?)
      ?.map((e) => PlayHistoryDto.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PlayHistoryResponseDtoToJson(
  PlayHistoryResponseDto instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': instance.message,
  'data': instance.data,
};
