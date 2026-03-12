import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';

part 'playlist.freezed.dart';
part 'playlist.g.dart';

@freezed
class PlaylistEntity with _$PlaylistEntity {
  const factory PlaylistEntity({
    required int id,
    @Default(0) int userId,
    @Default('user') String creatorRole,
    @Default('') String name,
    @Default('') String imageUrl,
    @Default('') String dominantColor,
    @Default('') String shareToken,
    @Default(false) bool isPublic,
    @Default('') String timeSince,
    @Default(0) int audioCount,
    @Default([]) List<AudioEntity> audios,
    @Default('') String createdAt,
    @Default('') String updatedAt,
  }) = _PlaylistEntity;

  factory PlaylistEntity.fromJson(Map<String, dynamic> json) =>
      _$PlaylistEntityFromJson(json);
}
