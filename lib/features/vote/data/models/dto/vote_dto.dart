import 'package:json_annotation/json_annotation.dart';
import 'package:mqfm_apps/core/utils/constants/api/api_constants.dart';
import 'package:mqfm_apps/features/vote/domain/entities/vote.dart';

part 'vote_dto.g.dart';

@JsonSerializable()
class VoteRankingDto {
  @JsonKey(defaultValue: 0)
  final int rank;
  @JsonKey(name: 'audio_id', defaultValue: 0)
  final int audioId;
  final Map<String, dynamic>? audio;
  @JsonKey(defaultValue: 0)
  final int likes;
  @JsonKey(name: 'updated_at', defaultValue: '')
  final String updatedAt;

  const VoteRankingDto({
    this.rank = 0,
    this.audioId = 0,
    this.audio,
    this.likes = 0,
    this.updatedAt = '',
  });

  factory VoteRankingDto.fromJson(Map<String, dynamic> json) =>
      _$VoteRankingDtoFromJson(json);

  VoteRankingEntity toEntity() {
    final a = audio ?? {};
    return VoteRankingEntity(
      rank: rank,
      audioId: audioId,
      title: a['title']?.toString() ?? '',
      artist: a['artist']?.toString() ?? '',
      thumbnail: ApiConstants.buildMediaUrl(a['thumbnail']?.toString()),
      dominantColor: a['dominant_color']?.toString() ?? '',
      duration: (a['duration'] as num?)?.toInt() ?? 0,
      durationFmt: a['duration_fmt']?.toString() ?? '',
      likes: likes,
    );
  }
}

@JsonSerializable()
class VoteStatusDto {
  @JsonKey(name: 'audio_id', defaultValue: 0)
  final int audioId;
  @JsonKey(name: 'has_voted', defaultValue: false)
  final bool hasVoted;
  @JsonKey(name: 'total_votes', defaultValue: 0)
  final int totalVotes;

  const VoteStatusDto({
    this.audioId = 0,
    this.hasVoted = false,
    this.totalVotes = 0,
  });

  factory VoteStatusDto.fromJson(Map<String, dynamic> json) =>
      _$VoteStatusDtoFromJson(json);

  VoteStatusEntity toEntity() {
    return VoteStatusEntity(
      audioId: audioId,
      hasVoted: hasVoted,
      totalVotes: totalVotes,
    );
  }
}
