import 'package:json_annotation/json_annotation.dart';
import 'package:mqfm_apps/features/resume/domain/entities/resume.dart';

part 'resume_dto.g.dart';

@JsonSerializable()
class ResumeDto {
  @JsonKey(name: 'audio_id', defaultValue: 0)
  final int audioId;
  @JsonKey(name: 'position_seconds', defaultValue: 0)
  final int positionSeconds;
  @JsonKey(name: 'updated_at', defaultValue: '')
  final String updatedAt;

  const ResumeDto({
    this.audioId = 0,
    this.positionSeconds = 0,
    this.updatedAt = '',
  });

  factory ResumeDto.fromJson(Map<String, dynamic> json) =>
      _$ResumeDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ResumeDtoToJson(this);

  ResumeEntity toEntity() {
    return ResumeEntity(
      audioId: audioId,
      positionSeconds: positionSeconds,
      updatedAt: updatedAt,
    );
  }
}
