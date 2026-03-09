// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vote_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VoteDto _$VoteDtoFromJson(Map<String, dynamic> json) => VoteDto(
  id: (json['id'] as num).toInt(),
  audioId: (json['audio_id'] as num?)?.toInt() ?? 0,
  createdAt: json['created_at'] as String? ?? '',
);

Map<String, dynamic> _$VoteDtoToJson(VoteDto instance) => <String, dynamic>{
  'id': instance.id,
  'audio_id': instance.audioId,
  'created_at': instance.createdAt,
};

VoteRankingDto _$VoteRankingDtoFromJson(Map<String, dynamic> json) =>
    VoteRankingDto(
      audioId: (json['audio_id'] as num?)?.toInt() ?? 0,
      title: json['title'] as String? ?? '',
      artist: json['artist'] as String? ?? '',
      thumbnail: json['thumbnail'] as String? ?? '',
      voteCount: (json['vote_count'] as num?)?.toInt() ?? 0,
      rank: (json['rank'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$VoteRankingDtoToJson(VoteRankingDto instance) =>
    <String, dynamic>{
      'audio_id': instance.audioId,
      'title': instance.title,
      'artist': instance.artist,
      'thumbnail': instance.thumbnail,
      'vote_count': instance.voteCount,
      'rank': instance.rank,
    };
