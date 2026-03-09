import 'package:json_annotation/json_annotation.dart';

part 'bookmark_request.g.dart';

@JsonSerializable()
class CreateBookmarkRequest {
  @JsonKey(name: 'audio_id')
  final int audioId;
  @JsonKey(name: 'position_seconds')
  final int positionSeconds;
  final String label;

  const CreateBookmarkRequest({
    required this.audioId,
    required this.positionSeconds,
    required this.label,
  });

  factory CreateBookmarkRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateBookmarkRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateBookmarkRequestToJson(this);
}
