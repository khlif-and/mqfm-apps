import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';

part 'audio_dto.g.dart';

@JsonSerializable()
class AudioDto {
  @JsonKey(name: 'audio_id')
  final int audioId;
  final String title;
  @JsonKey(defaultValue: '')
  final String artist;
  @JsonKey(defaultValue: '')
  final String description;
  @JsonKey(name: 'file_path', defaultValue: '')
  final String filePath;
  @JsonKey(defaultValue: 0)
  final int duration;
  @JsonKey(defaultValue: 'active')
  final String status;
  @JsonKey(name: 'category_id', defaultValue: 0)
  final int categoryId;
  @JsonKey(defaultValue: '')
  final String? thumbnail;
  @JsonKey(name: 'dominant_color', defaultValue: '')
  final String dominantColor;
  @JsonKey(name: 'created_at', defaultValue: '')
  final String createdAt;
  @JsonKey(name: 'updated_at', defaultValue: '')
  final String updatedAt;

  const AudioDto({
    required this.audioId,
    required this.title,
    this.artist = '',
    this.description = '',
    this.filePath = '',
    this.duration = 0,
    this.status = 'active',
    this.categoryId = 0,
    this.thumbnail,
    this.dominantColor = '',
    this.createdAt = '',
    this.updatedAt = '',
  });

  factory AudioDto.fromJson(Map<String, dynamic> json) =>
      _$AudioDtoFromJson(json);

  Map<String, dynamic> toJson() => _$AudioDtoToJson(this);

  static String _fixUrl(String? path) {
    if (path == null || path.isEmpty) return '';
    if (path.startsWith('http')) return path;
    final baseUrl = (dotenv.env['BASE_URL'] ?? '').replaceAll(RegExp(r'/+$'), '');
    final cleanPath = path.startsWith('/') ? path.substring(1) : path;
    return '$baseUrl/$cleanPath';
  }

  AudioEntity toEntity() {
    return AudioEntity(
      id: audioId,
      title: title,
      artist: artist,
      description: description,
      filePath: _fixUrl(filePath),
      duration: duration,
      status: status,
      categoryId: categoryId,
      thumbnail: _fixUrl(thumbnail),
      dominantColor: dominantColor,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
