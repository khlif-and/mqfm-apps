import 'package:freezed_annotation/freezed_annotation.dart';

part 'resume.freezed.dart';
part 'resume.g.dart';

@freezed
class ResumeEntity with _$ResumeEntity {
  const factory ResumeEntity({
    @Default(0) int audioId,
    @Default(0) int positionSeconds,
    @Default('') String updatedAt,
  }) = _ResumeEntity;

  factory ResumeEntity.fromJson(Map<String, dynamic> json) =>
      _$ResumeEntityFromJson(json);
}
