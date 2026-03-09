import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:mqfm_apps/features/audio/data/models/dto/audio_dto.dart';
import 'package:mqfm_apps/features/series/domain/entities/series.dart';

part 'series_dto.g.dart';

@JsonSerializable()
class SeriesDto {
  final int id;
  @JsonKey(defaultValue: '')
  final String title;
  @JsonKey(defaultValue: '')
  final String description;
  @JsonKey(defaultValue: '')
  final String artist;
  @JsonKey(name: 'image_url', defaultValue: '')
  final String? imageUrl;
  @JsonKey(defaultValue: [])
  final List<AudioDto>? items;
  @JsonKey(name: 'created_at', defaultValue: '')
  final String createdAt;
  @JsonKey(name: 'updated_at', defaultValue: '')
  final String updatedAt;

  const SeriesDto({
    required this.id,
    this.title = '',
    this.description = '',
    this.artist = '',
    this.imageUrl,
    this.items,
    this.createdAt = '',
    this.updatedAt = '',
  });

  factory SeriesDto.fromJson(Map<String, dynamic> json) =>
      _$SeriesDtoFromJson(json);

  Map<String, dynamic> toJson() => _$SeriesDtoToJson(this);

  static String _fixUrl(String? path) {
    if (path == null || path.isEmpty) return '';
    if (path.startsWith('http') || path.startsWith('https')) return path;
    final baseUrl = dotenv.env['BASE_URL'] ?? '';
    final cleanPath = path.startsWith('/') ? path.substring(1) : path;
    return '$baseUrl/$cleanPath';
  }

  SeriesEntity toEntity() {
    return SeriesEntity(
      id: id,
      title: title,
      description: description,
      artist: artist,
      imageUrl: _fixUrl(imageUrl),
      items: items?.map((e) => e.toEntity()).toList() ?? [],
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
