// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_artist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FavoriteArtistEntityImpl _$$FavoriteArtistEntityImplFromJson(
  Map<String, dynamic> json,
) => _$FavoriteArtistEntityImpl(
  id: (json['id'] as num).toInt(),
  artistName: json['artistName'] as String? ?? '',
  createdAt: json['createdAt'] as String? ?? '',
);

Map<String, dynamic> _$$FavoriteArtistEntityImplToJson(
  _$FavoriteArtistEntityImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'artistName': instance.artistName,
  'createdAt': instance.createdAt,
};
