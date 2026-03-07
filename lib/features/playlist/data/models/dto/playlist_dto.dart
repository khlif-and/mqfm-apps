import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:mqfm_apps/features/audio/data/models/dto/audio_dto.dart';
import 'package:mqfm_apps/features/playlist/domain/entities/playlist.dart';

part 'playlist_dto.g.dart';

@JsonSerializable()
class PlaylistDto {
  final int id;
  @JsonKey(name: 'user_id')
  final int userId;
  final String name;
  @JsonKey(name: 'image_url')
  final String? imageUrl;
  final List<AudioDto>? audios;
  @JsonKey(name: 'created_at', defaultValue: '')
  final String createdAt;
  @JsonKey(name: 'updated_at', defaultValue: '')
  final String updatedAt;

  const PlaylistDto({
    required this.id,
    required this.userId,
    required this.name,
    this.imageUrl,
    this.audios,
    this.createdAt = '',
    this.updatedAt = '',
  });

  factory PlaylistDto.fromJson(Map<String, dynamic> json) =>
      _$PlaylistDtoFromJson(json);

  Map<String, dynamic> toJson() => _$PlaylistDtoToJson(this);

  static String _fixUrl(String? path) {
    if (path == null || path.isEmpty) return '';
    if (path.startsWith('http') || path.startsWith('https')) return path;
    final baseUrl = dotenv.env['BASE_URL'] ?? '';
    final cleanPath = path.startsWith('/') ? path.substring(1) : path;
    return '$baseUrl/$cleanPath';
  }

  PlaylistEntity toEntity() {
    return PlaylistEntity(
      id: id,
      userId: userId,
      name: name,
      imageUrl: _fixUrl(imageUrl),
      audios: audios?.map((a) => a.toEntity()).toList() ?? [],
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
