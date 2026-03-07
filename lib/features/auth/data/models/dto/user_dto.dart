import 'package:json_annotation/json_annotation.dart';
import 'package:mqfm_apps/features/auth/domain/entities/user.dart';

part 'user_dto.g.dart';

@JsonSerializable()
class UserDto {
  final int id;
  final String username;
  final String email;
  final String role;
  @JsonKey(name: 'created_at')
  final String createdAt;
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  final String? token;
  final String? initials;
  @JsonKey(name: 'avatar_color')
  final String? avatarColor;
  @JsonKey(name: 'profile_picture')
  final String? profilePicture;

  const UserDto({
    required this.id,
    required this.username,
    required this.email,
    required this.role,
    required this.createdAt,
    required this.updatedAt,
    this.token,
    this.initials,
    this.avatarColor,
    this.profilePicture,
  });

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  Map<String, dynamic> toJson() => _$UserDtoToJson(this);

  UserEntity toEntity() {
    return UserEntity(
      id: id,
      username: username,
      email: email,
      role: role,
      createdAt: createdAt,
      updatedAt: updatedAt,
      token: token,
      initials: initials,
      avatarColor: avatarColor,
      profilePicture: profilePicture,
    );
  }
}
