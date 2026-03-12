// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vote_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VoteRankingDto _$VoteRankingDtoFromJson(Map<String, dynamic> json) =>
    VoteRankingDto(
      rank: (json['rank'] as num?)?.toInt() ?? 0,
      audioId: (json['audio_id'] as num?)?.toInt() ?? 0,
      audio: json['audio'] as Map<String, dynamic>?,
      likes: (json['likes'] as num?)?.toInt() ?? 0,
      updatedAt: json['updated_at'] as String? ?? '',
    );

Map<String, dynamic> _$VoteRankingDtoToJson(VoteRankingDto instance) =>
    <String, dynamic>{
      'rank': instance.rank,
      'audio_id': instance.audioId,
      'audio': instance.audio,
      'likes': instance.likes,
      'updated_at': instance.updatedAt,
    };

VoteStatusDto _$VoteStatusDtoFromJson(Map<String, dynamic> json) =>
    VoteStatusDto(
      audioId: (json['audio_id'] as num?)?.toInt() ?? 0,
      hasVoted: json['has_voted'] as bool? ?? false,
      totalVotes: (json['total_votes'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$VoteStatusDtoToJson(VoteStatusDto instance) =>
    <String, dynamic>{
      'audio_id': instance.audioId,
      'has_voted': instance.hasVoted,
      'total_votes': instance.totalVotes,
    };
