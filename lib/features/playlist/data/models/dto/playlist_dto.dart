import 'package:json_annotation/json_annotation.dart';
import 'package:mqfm_apps/core/utils/constants/api/api_constants.dart';
import 'package:mqfm_apps/features/audio/data/models/dto/audio_dto.dart';
import 'package:mqfm_apps/features/playlist/domain/entities/playlist.dart';

part 'playlist_dto.g.dart';

@JsonSerializable()
class PlaylistDto {
  final int id;
  @JsonKey(name: 'user_id', defaultValue: 0)
  final int userId;
  @JsonKey(name: 'creator_role', defaultValue: 'user')
  final String creatorRole;
  @JsonKey(defaultValue: '')
  final String name;
  @JsonKey(name: 'image_url')
  final String? imageUrl;
  @JsonKey(name: 'dominant_color', defaultValue: '')
  final String dominantColor;
  @JsonKey(name: 'share_token', defaultValue: '')
  final String shareToken;
  @JsonKey(name: 'is_public', defaultValue: false)
  final bool isPublic;
  @JsonKey(name: 'time_since', defaultValue: '')
  final String timeSince;
  @JsonKey(name: 'audio_count', defaultValue: 0)
  final int audioCount;
  final List<AudioDto>? audios;
  @JsonKey(name: 'created_at', defaultValue: '')
  final String createdAt;
  @JsonKey(name: 'updated_at', defaultValue: '')
  final String updatedAt;

  const PlaylistDto({
    required this.id,
    this.userId = 0,
    this.creatorRole = 'user',
    this.name = '',
    this.imageUrl,
    this.dominantColor = '',
    this.shareToken = '',
    this.isPublic = false,
    this.timeSince = '',
    this.audioCount = 0,
    this.audios,
    this.createdAt = '',
    this.updatedAt = '',
  });

  factory PlaylistDto.fromJson(Map<String, dynamic> json) =>
      _$PlaylistDtoFromJson(json);

  Map<String, dynamic> toJson() => _$PlaylistDtoToJson(this);

  PlaylistEntity toEntity() {
    return PlaylistEntity(
      id: id,
      userId: userId,
      creatorRole: creatorRole,
      name: name,
      imageUrl: ApiConstants.buildMediaUrl(imageUrl),
      dominantColor: dominantColor,
      shareToken: shareToken,
      isPublic: isPublic,
      timeSince: timeSince,
      audioCount: audioCount,
      audios: audios?.map((a) => a.toEntity()).toList() ?? [],
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
