import 'package:json_annotation/json_annotation.dart';
import 'package:mqfm_apps/features/bookmark/domain/entities/bookmark.dart';

part 'bookmark_dto.g.dart';

@JsonSerializable()
class BookmarkDto {
  final int id;
  @JsonKey(name: 'audio_id', defaultValue: 0)
  final int audioId;
  @JsonKey(name: 'position_seconds', defaultValue: 0)
  final int positionSeconds;
  @JsonKey(defaultValue: '')
  final String label;
  @JsonKey(name: 'created_at', defaultValue: '')
  final String createdAt;

  const BookmarkDto({
    required this.id,
    this.audioId = 0,
    this.positionSeconds = 0,
    this.label = '',
    this.createdAt = '',
  });

  factory BookmarkDto.fromJson(Map<String, dynamic> json) =>
      _$BookmarkDtoFromJson(json);

  Map<String, dynamic> toJson() => _$BookmarkDtoToJson(this);

  BookmarkEntity toEntity() {
    return BookmarkEntity(
      id: id,
      audioId: audioId,
      positionSeconds: positionSeconds,
      label: label,
      createdAt: createdAt,
    );
  }
}
