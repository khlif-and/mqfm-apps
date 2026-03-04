// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlist_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlaylistDto _$PlaylistDtoFromJson(Map<String, dynamic> json) => PlaylistDto(
  id: (json['id'] as num).toInt(),
  userId: (json['user_id'] as num).toInt(),
  name: json['name'] as String,
  imageUrl: json['image_url'] as String?,
  audios: (json['audios'] as List<dynamic>?)
      ?.map((e) => AudioDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  createdAt: json['created_at'] as String? ?? '',
  updatedAt: json['updated_at'] as String? ?? '',
);

Map<String, dynamic> _$PlaylistDtoToJson(PlaylistDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'name': instance.name,
      'image_url': instance.imageUrl,
      'audios': instance.audios,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

PlaylistListResponseDto _$PlaylistListResponseDtoFromJson(
  Map<String, dynamic> json,
) => PlaylistListResponseDto(
  status: (json['status'] as num).toInt(),
  message: json['message'] as String,
  data: (json['data'] as List<dynamic>?)
      ?.map((e) => PlaylistDto.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PlaylistListResponseDtoToJson(
  PlaylistListResponseDto instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': instance.message,
  'data': instance.data,
};

PlaylistResponseDto _$PlaylistResponseDtoFromJson(Map<String, dynamic> json) =>
    PlaylistResponseDto(
      status: (json['status'] as num).toInt(),
      message: json['message'] as String,
      data: json['data'] == null
          ? null
          : PlaylistDto.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PlaylistResponseDtoToJson(
  PlaylistResponseDto instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': instance.message,
  'data': instance.data,
};
