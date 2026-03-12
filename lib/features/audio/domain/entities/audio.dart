import 'package:freezed_annotation/freezed_annotation.dart';

part 'audio.freezed.dart';
part 'audio.g.dart';

@freezed
class AudioEntity with _$AudioEntity {
  const factory AudioEntity({
    required int id,
    required String title,
    @Default('') String artist,
    @Default('') String description,
    @Default('') String filePath,
    @Default(0) int duration,
    @Default('') String durationFmt,
    @Default(0) int fileSize,
    @Default('active') String status,
    @Default(0) int categoryId,
    @Default('') String thumbnail,
    @Default('') String dominantColor,
    @Default('') String createdAt,
    @Default('') String updatedAt,
  }) = _AudioEntity;

  factory AudioEntity.fromJson(Map<String, dynamic> json) =>
      _$AudioEntityFromJson(json);
}
