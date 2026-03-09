// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vote.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VoteEntityImpl _$$VoteEntityImplFromJson(Map<String, dynamic> json) =>
    _$VoteEntityImpl(
      id: (json['id'] as num).toInt(),
      audioId: (json['audioId'] as num?)?.toInt() ?? 0,
      createdAt: json['createdAt'] as String? ?? '',
    );

Map<String, dynamic> _$$VoteEntityImplToJson(_$VoteEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'audioId': instance.audioId,
      'createdAt': instance.createdAt,
    };

_$VoteRankingEntityImpl _$$VoteRankingEntityImplFromJson(
  Map<String, dynamic> json,
) => _$VoteRankingEntityImpl(
  audioId: (json['audioId'] as num?)?.toInt() ?? 0,
  title: json['title'] as String? ?? '',
  artist: json['artist'] as String? ?? '',
  thumbnail: json['thumbnail'] as String? ?? '',
  voteCount: (json['voteCount'] as num?)?.toInt() ?? 0,
  rank: (json['rank'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$$VoteRankingEntityImplToJson(
  _$VoteRankingEntityImpl instance,
) => <String, dynamic>{
  'audioId': instance.audioId,
  'title': instance.title,
  'artist': instance.artist,
  'thumbnail': instance.thumbnail,
  'voteCount': instance.voteCount,
  'rank': instance.rank,
};
