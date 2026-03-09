import 'package:json_annotation/json_annotation.dart';
import 'package:mqfm_apps/features/collab/domain/entities/collab.dart';

part 'collab_dto.g.dart';

@JsonSerializable()
class CollaboratorDto {
  @JsonKey(name: 'user_id', defaultValue: 0)
  final int userId;
  @JsonKey(defaultValue: '')
  final String username;
  @JsonKey(defaultValue: '')
  final String role;
  @JsonKey(name: 'joined_at', defaultValue: '')
  final String joinedAt;

  const CollaboratorDto({
    this.userId = 0,
    this.username = '',
    this.role = '',
    this.joinedAt = '',
  });

  factory CollaboratorDto.fromJson(Map<String, dynamic> json) =>
      _$CollaboratorDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CollaboratorDtoToJson(this);

  CollaboratorEntity toEntity() {
    return CollaboratorEntity(
      userId: userId,
      username: username,
      role: role,
      joinedAt: joinedAt,
    );
  }
}
