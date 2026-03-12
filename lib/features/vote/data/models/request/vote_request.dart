import 'package:json_annotation/json_annotation.dart';

part 'vote_request.g.dart';

@JsonSerializable(includeIfNull: false)
class CastVoteRequest {
  @JsonKey(name: 'audio_id')
  final int audioId;

  const CastVoteRequest({required this.audioId});

  Map<String, dynamic> toJson() => _$CastVoteRequestToJson(this);
}
