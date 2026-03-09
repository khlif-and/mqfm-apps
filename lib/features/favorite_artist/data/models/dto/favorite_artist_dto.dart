import 'package:json_annotation/json_annotation.dart';
import 'package:mqfm_apps/features/favorite_artist/domain/entities/favorite_artist.dart';

part 'favorite_artist_dto.g.dart';

@JsonSerializable()
class FavoriteArtistDto {
  final int id;
  @JsonKey(name: 'artist_name', defaultValue: '')
  final String artistName;
  @JsonKey(name: 'created_at', defaultValue: '')
  final String createdAt;

  const FavoriteArtistDto({
    required this.id,
    this.artistName = '',
    this.createdAt = '',
  });

  factory FavoriteArtistDto.fromJson(Map<String, dynamic> json) =>
      _$FavoriteArtistDtoFromJson(json);

  Map<String, dynamic> toJson() => _$FavoriteArtistDtoToJson(this);

  FavoriteArtistEntity toEntity() {
    return FavoriteArtistEntity(
      id: id,
      artistName: artistName,
      createdAt: createdAt,
    );
  }
}
