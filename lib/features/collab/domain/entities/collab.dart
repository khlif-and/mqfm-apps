import 'package:freezed_annotation/freezed_annotation.dart';

part 'collab.freezed.dart';
part 'collab.g.dart';

@freezed
class CollaboratorEntity with _$CollaboratorEntity {
  const factory CollaboratorEntity({
    @Default(0) int userId,
    @Default('') String username,
    @Default('') String role,
    @Default('') String joinedAt,
  }) = _CollaboratorEntity;

  factory CollaboratorEntity.fromJson(Map<String, dynamic> json) =>
      _$CollaboratorEntityFromJson(json);
}
