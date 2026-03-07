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
