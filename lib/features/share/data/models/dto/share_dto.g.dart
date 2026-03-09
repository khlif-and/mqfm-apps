// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'share_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShareDto _$ShareDtoFromJson(Map<String, dynamic> json) => ShareDto(
  shareUrl: json['share_url'] as String? ?? '',
  token: json['token'] as String? ?? '',
  type: json['type'] as String? ?? '',
);

Map<String, dynamic> _$ShareDtoToJson(ShareDto instance) => <String, dynamic>{
  'share_url': instance.shareUrl,
  'token': instance.token,
  'type': instance.type,
};
