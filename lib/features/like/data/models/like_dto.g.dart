// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'like_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LikeDto _$LikeDtoFromJson(Map<String, dynamic> json) => LikeDto(
  status: (json['status'] as num).toInt(),
  message: json['message'] as String,
);

Map<String, dynamic> _$LikeDtoToJson(LikeDto instance) => <String, dynamic>{
  'status': instance.status,
  'message': instance.message,
};

LikeRequestDto _$LikeRequestDtoFromJson(Map<String, dynamic> json) =>
    LikeRequestDto(audioId: (json['audio_id'] as num).toInt());

Map<String, dynamic> _$LikeRequestDtoToJson(LikeRequestDto instance) =>
    <String, dynamic>{'audio_id': instance.audioId};
