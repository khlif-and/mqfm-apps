import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:mqfm_apps/features/audio/data/models/dto/audio_dto.dart';
import 'package:mqfm_apps/features/series/domain/entities/series.dart';

part 'series_dto.g.dart';

@JsonSerializable()
class SeriesItemDto {
  final int id;
  @JsonKey(name: 'series_id', defaultValue: 0)
  final int seriesId;
  @JsonKey(name: 'audio_id', defaultValue: 0)
  final int audioId;
  final AudioDto? audio;
  @JsonKey(name: 'order_num', defaultValue: 0)
  final int orderNum;

  const SeriesItemDto({
    required this.id,
    this.seriesId = 0,
    this.audioId = 0,
    this.audio,
    this.orderNum = 0,
  });

  factory SeriesItemDto.fromJson(Map<String, dynamic> json) =>
      _$SeriesItemDtoFromJson(json);

  Map<String, dynamic> toJson() => _$SeriesItemDtoToJson(this);
}

@JsonSerializable()
class SeriesDto {
  final int id;
  @JsonKey(defaultValue: '')
  final String title;
  @JsonKey(defaultValue: '')
  final String description;
  @JsonKey(defaultValue: '')
  final String artist;
  @JsonKey(name: 'image', defaultValue: '')
  final String? imageUrl;
  @JsonKey(defaultValue: [])
  final List<SeriesItemDto>? items;
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
      items:
          items
              ?.where((e) => e.audio != null)
              .map((e) => e.audio!.toEntity())
              .toList() ??
          [],
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
