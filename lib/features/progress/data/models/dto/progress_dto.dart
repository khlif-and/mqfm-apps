import 'package:json_annotation/json_annotation.dart';
import 'package:mqfm_apps/features/progress/domain/entities/progress.dart';

part 'progress_dto.g.dart';

@JsonSerializable()
class ProgressDto {
  @JsonKey(name: 'audio_id', defaultValue: 0)
  final int audioId;
  @JsonKey(name: 'last_position', defaultValue: 0)
  final int lastPosition;
  @JsonKey(defaultValue: 0)
  final int duration;
  @JsonKey(defaultValue: 0.0)
  final double percentage;
  @JsonKey(defaultValue: false)
  final bool completed;

  const ProgressDto({
    this.audioId = 0,
    this.lastPosition = 0,
    this.duration = 0,
    this.percentage = 0.0,
    this.completed = false,
  });

  factory ProgressDto.fromJson(Map<String, dynamic> json) =>
      _$ProgressDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ProgressDtoToJson(this);

  ProgressEntity toEntity() {
    return ProgressEntity(
      audioId: audioId,
      lastPosition: lastPosition,
      duration: duration,
      percentage: percentage,
      completed: completed,
    );
  }
}
