// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'like.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LikeEntityImpl _$$LikeEntityImplFromJson(Map<String, dynamic> json) =>
    _$LikeEntityImpl(
      status: (json['status'] as num).toInt(),
      message: json['message'] as String,
    );

Map<String, dynamic> _$$LikeEntityImplToJson(_$LikeEntityImpl instance) =>
    <String, dynamic>{'status': instance.status, 'message': instance.message};
