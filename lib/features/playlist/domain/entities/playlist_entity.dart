import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio_entity.dart';

part 'playlist_entity.freezed.dart';
part 'playlist_entity.g.dart';

@freezed
class PlaylistEntity with _$PlaylistEntity {
  const factory PlaylistEntity({
    required int id,
    required int userId,
    required String name,
    required String imageUrl,
    required List<AudioEntity> audios,
    required String createdAt,
    required String updatedAt,
  }) = _PlaylistEntity;

  factory PlaylistEntity.fromJson(Map<String, dynamic> json) =>
      _$PlaylistEntityFromJson(json);
}
