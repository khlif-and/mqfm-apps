import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';

part 'audio_dto.g.dart';

@JsonSerializable()
class AudioDto {
  final int id;
  final String title;
  final String description;
  @JsonKey(name: 'audio_url')
  final String? audioUrl;
  final String? thumbnail;
  @JsonKey(name: 'category_id')
  final int categoryId;
  @JsonKey(name: 'created_at')
  final String createdAt;
  @JsonKey(name: 'updated_at')
  final String updatedAt;

  const AudioDto({
    required this.id,
    required this.title,
    this.description = '',
    this.audioUrl,
    this.thumbnail,
    this.categoryId = 0,
    this.createdAt = '',
    this.updatedAt = '',
  });

  factory AudioDto.fromJson(Map<String, dynamic> json) =>
      _$AudioDtoFromJson(json);

  Map<String, dynamic> toJson() => _$AudioDtoToJson(this);

  static String _fixUrl(String? path) {
    if (path == null || path.isEmpty) return '';
    if (path.startsWith('http') || path.startsWith('https')) return path;
    final baseUrl = dotenv.env['BASE_URL'] ?? '';
    final cleanPath = path.startsWith('/') ? path.substring(1) : path;
    return '$baseUrl/$cleanPath';
  }

  AudioEntity toEntity() {
    return AudioEntity(
      id: id,
      title: title,
      description: description,
      audioUrl: _fixUrl(audioUrl),
      thumbnail: _fixUrl(thumbnail),
      categoryId: categoryId,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}

@JsonSerializable()
class PlayHistoryDto {
  final int id;
  @JsonKey(name: 'user_id')
  final int userId;
  @JsonKey(name: 'audio_id')
  final int audioId;
  @JsonKey(name: 'play_count', defaultValue: 1)
  final int playCount;
  @JsonKey(name: 'played_at', defaultValue: '')
  final String playedAt;
  @JsonKey(name: 'created_at', defaultValue: '')
  final String createdAt;

  const PlayHistoryDto({
    required this.id,
    required this.userId,
    required this.audioId,
    this.playCount = 1,
    this.playedAt = '',
    this.createdAt = '',
  });

  factory PlayHistoryDto.fromJson(Map<String, dynamic> json) =>
      _$PlayHistoryDtoFromJson(json);

  Map<String, dynamic> toJson() => _$PlayHistoryDtoToJson(this);

  PlayHistoryEntity toEntity() {
    return PlayHistoryEntity(
      id: id,
      userId: userId,
      audioId: audioId,
      playCount: playCount,
      playedAt: playedAt,
      createdAt: createdAt,
    );
  }
}
