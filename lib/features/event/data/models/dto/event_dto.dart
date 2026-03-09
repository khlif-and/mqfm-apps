import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:mqfm_apps/features/event/domain/entities/event.dart';

part 'event_dto.g.dart';

@JsonSerializable()
class EventDto {
  final int id;
  @JsonKey(defaultValue: '')
  final String title;
  @JsonKey(defaultValue: '')
  final String description;
  @JsonKey(name: 'event_date', defaultValue: '')
  final String eventDate;
  @JsonKey(defaultValue: '')
  final String location;
  @JsonKey(name: 'image_url', defaultValue: '')
  final String? imageUrl;
  @JsonKey(name: 'has_rsvp', defaultValue: false)
  final bool hasRsvp;
  @JsonKey(name: 'created_at', defaultValue: '')
  final String createdAt;

  const EventDto({
    required this.id,
    this.title = '',
    this.description = '',
    this.eventDate = '',
    this.location = '',
    this.imageUrl,
    this.hasRsvp = false,
    this.createdAt = '',
  });

  factory EventDto.fromJson(Map<String, dynamic> json) =>
      _$EventDtoFromJson(json);

  Map<String, dynamic> toJson() => _$EventDtoToJson(this);

  static String _fixUrl(String? path) {
    if (path == null || path.isEmpty) return '';
    if (path.startsWith('http') || path.startsWith('https')) return path;
    final baseUrl = dotenv.env['BASE_URL'] ?? '';
    final cleanPath = path.startsWith('/') ? path.substring(1) : path;
    return '$baseUrl/$cleanPath';
  }

  EventEntity toEntity() {
    return EventEntity(
      id: id,
      title: title,
      description: description,
      eventDate: eventDate,
      location: location,
      imageUrl: _fixUrl(imageUrl),
      hasRsvp: hasRsvp,
      createdAt: createdAt,
    );
  }
}
