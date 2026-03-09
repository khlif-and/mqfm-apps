// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'share.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShareEntityImpl _$$ShareEntityImplFromJson(Map<String, dynamic> json) =>
    _$ShareEntityImpl(
      shareUrl: json['shareUrl'] as String? ?? '',
      token: json['token'] as String? ?? '',
      type: json['type'] as String? ?? '',
    );

Map<String, dynamic> _$$ShareEntityImplToJson(_$ShareEntityImpl instance) =>
    <String, dynamic>{
      'shareUrl': instance.shareUrl,
      'token': instance.token,
      'type': instance.type,
    };
