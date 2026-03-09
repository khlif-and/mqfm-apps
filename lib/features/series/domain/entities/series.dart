import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';

part 'series.freezed.dart';
part 'series.g.dart';

@freezed
class SeriesEntity with _$SeriesEntity {
  const factory SeriesEntity({
    required int id,
    @Default('') String title,
    @Default('') String description,
    @Default('') String artist,
    @Default('') String imageUrl,
    @Default([]) List<AudioEntity> items,
    @Default('') String createdAt,
    @Default('') String updatedAt,
  }) = _SeriesEntity;

  factory SeriesEntity.fromJson(Map<String, dynamic> json) =>
      _$SeriesEntityFromJson(json);
}
