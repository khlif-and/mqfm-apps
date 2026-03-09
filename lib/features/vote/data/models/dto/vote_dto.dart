import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:mqfm_apps/features/vote/domain/entities/vote.dart';

part 'vote_dto.g.dart';

@JsonSerializable()
class VoteDto {
  final int id;
  @JsonKey(name: 'audio_id', defaultValue: 0)
  final int audioId;
  @JsonKey(name: 'created_at', defaultValue: '')
  final String createdAt;

  const VoteDto({required this.id, this.audioId = 0, this.createdAt = ''});

  factory VoteDto.fromJson(Map<String, dynamic> json) =>
      _$VoteDtoFromJson(json);

  Map<String, dynamic> toJson() => _$VoteDtoToJson(this);

  VoteEntity toEntity() {
    return VoteEntity(id: id, audioId: audioId, createdAt: createdAt);
  }
}

@JsonSerializable()
class VoteRankingDto {
  @JsonKey(name: 'audio_id', defaultValue: 0)
  final int audioId;
  @JsonKey(defaultValue: '')
  final String title;
  @JsonKey(defaultValue: '')
  final String artist;
  @JsonKey(defaultValue: '')
  final String? thumbnail;
  @JsonKey(name: 'vote_count', defaultValue: 0)
  final int voteCount;
  @JsonKey(defaultValue: 0)
  final int rank;

  const VoteRankingDto({
    this.audioId = 0,
    this.title = '',
    this.artist = '',
    this.thumbnail,
    this.voteCount = 0,
    this.rank = 0,
  });

  factory VoteRankingDto.fromJson(Map<String, dynamic> json) =>
      _$VoteRankingDtoFromJson(json);

  static String _fixUrl(String? path) {
    if (path == null || path.isEmpty) return '';
    if (path.startsWith('http') || path.startsWith('https')) return path;
    final baseUrl = dotenv.env['BASE_URL'] ?? '';
    final cleanPath = path.startsWith('/') ? path.substring(1) : path;
    return '$baseUrl/$cleanPath';
  }

  VoteRankingEntity toEntity() {
    return VoteRankingEntity(
      audioId: audioId,
      title: title,
      artist: artist,
      thumbnail: _fixUrl(thumbnail),
      voteCount: voteCount,
      rank: rank,
    );
  }
}
