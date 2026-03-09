import 'package:freezed_annotation/freezed_annotation.dart';

part 'clip.freezed.dart';
part 'clip.g.dart';

@freezed
class ClipEntity with _$ClipEntity {
  const factory ClipEntity({
    required int id,
    @Default(0) int audioId,
    @Default(0) int startTime,
    @Default(0) int endTime,
    @Default('') String clipUrl,
    @Default('') String shareToken,
    @Default('') String createdAt,
  }) = _ClipEntity;

  factory ClipEntity.fromJson(Map<String, dynamic> json) =>
      _$ClipEntityFromJson(json);
}
