import 'package:json_annotation/json_annotation.dart';

part 'create_playlist_request.g.dart';

@JsonSerializable()
class CreatePlaylistRequest {
  final String name;

  const CreatePlaylistRequest({required this.name});

  factory CreatePlaylistRequest.fromJson(Map<String, dynamic> json) =>
      _$CreatePlaylistRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreatePlaylistRequestToJson(this);
}
