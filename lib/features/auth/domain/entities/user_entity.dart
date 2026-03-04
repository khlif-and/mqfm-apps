import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    required int id,
    required String username,
    required String email,
    required String role,
    required String createdAt,
    required String updatedAt,
    String? token,
    String? initials,
    String? avatarColor,
    String? profilePicture,
  }) = _UserEntity;
}
