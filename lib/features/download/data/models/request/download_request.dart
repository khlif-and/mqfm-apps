import 'package:json_annotation/json_annotation.dart';

part 'download_request.g.dart';

@JsonSerializable(includeIfNull: false)
class CreateDownloadRequest {
  @JsonKey(name: 'audio_id')
  final int audioId;
  @JsonKey(name: 'playlist_id')
  final int? playlistId;
  @JsonKey(name: 'file_size')
  final int? fileSize;

  const CreateDownloadRequest({
    required this.audioId,
    this.playlistId,
    this.fileSize,
  });

  factory CreateDownloadRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateDownloadRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateDownloadRequestToJson(this);
}
