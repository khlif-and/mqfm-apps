import 'package:json_annotation/json_annotation.dart';

part 'favorite_artist_request.g.dart';

@JsonSerializable()
class AddFavoriteArtistRequest {
  @JsonKey(name: 'artist_name')
  final String artistName;

  const AddFavoriteArtistRequest({required this.artistName});

  factory AddFavoriteArtistRequest.fromJson(Map<String, dynamic> json) =>
      _$AddFavoriteArtistRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AddFavoriteArtistRequestToJson(this);
}
