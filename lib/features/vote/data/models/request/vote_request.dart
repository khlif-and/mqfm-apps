import 'package:json_annotation/json_annotation.dart';

part 'vote_request.g.dart';

@JsonSerializable()
class CastVoteRequest {
  @JsonKey(name: 'audio_id')
  final int audioId;

  const CastVoteRequest({required this.audioId});

  factory CastVoteRequest.fromJson(Map<String, dynamic> json) =>
      _$CastVoteRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CastVoteRequestToJson(this);
}
