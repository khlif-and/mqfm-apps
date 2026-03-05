import 'package:freezed_annotation/freezed_annotation.dart';

part 'audio_entity.freezed.dart';

@freezed
class AudioEntity with _$AudioEntity {
  const factory AudioEntity({
    required int id,
    required String title,
    required String description,
    required String audioUrl,
    required String thumbnail,
    required int categoryId,
    required String createdAt,
    required String updatedAt,
  }) = _AudioEntity;
}

@freezed
class PlayHistoryEntity with _$PlayHistoryEntity {
  const factory PlayHistoryEntity({
    required int id,
    required int userId,
    required int audioId,
    required int playCount,
    required String playedAt,
    required String createdAt,
  }) = _PlayHistoryEntity;
}
