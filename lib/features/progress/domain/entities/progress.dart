import 'package:freezed_annotation/freezed_annotation.dart';

part 'progress.freezed.dart';
part 'progress.g.dart';

@freezed
class ProgressEntity with _$ProgressEntity {
  const factory ProgressEntity({
    @Default(0) int audioId,
    @Default(0) int lastPosition,
    @Default(0) int duration,
    @Default(0.0) double percentage,
    @Default(false) bool completed,
  }) = _ProgressEntity;

  factory ProgressEntity.fromJson(Map<String, dynamic> json) =>
      _$ProgressEntityFromJson(json);
}
