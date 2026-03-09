// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserLocationEntityImpl _$$UserLocationEntityImplFromJson(
  Map<String, dynamic> json,
) => _$UserLocationEntityImpl(
  latitude: (json['latitude'] as num?)?.toDouble() ?? 0.0,
  longitude: (json['longitude'] as num?)?.toDouble() ?? 0.0,
  city: json['city'] as String? ?? '',
  updatedAt: json['updatedAt'] as String? ?? '',
);

Map<String, dynamic> _$$UserLocationEntityImplToJson(
  _$UserLocationEntityImpl instance,
) => <String, dynamic>{
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'city': instance.city,
  'updatedAt': instance.updatedAt,
};
