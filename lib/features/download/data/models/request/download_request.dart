import 'package:json_annotation/json_annotation.dart';

part 'download_request.g.dart';

@JsonSerializable()
class CreateDownloadRequest {
  @JsonKey(name: 'audio_id')
  final int audioId;

  const CreateDownloadRequest({required this.audioId});

  factory CreateDownloadRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateDownloadRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateDownloadRequestToJson(this);
}
