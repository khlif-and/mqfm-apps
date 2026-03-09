// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_artist_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FavoriteArtistDto _$FavoriteArtistDtoFromJson(Map<String, dynamic> json) =>
    FavoriteArtistDto(
      id: (json['id'] as num).toInt(),
      artistName: json['artist_name'] as String? ?? '',
      createdAt: json['created_at'] as String? ?? '',
    );

Map<String, dynamic> _$FavoriteArtistDtoToJson(FavoriteArtistDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'artist_name': instance.artistName,
      'created_at': instance.createdAt,
    };
