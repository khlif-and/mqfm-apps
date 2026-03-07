// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDto _$UserDtoFromJson(Map<String, dynamic> json) => UserDto(
  id: (json['id'] as num).toInt(),
  username: json['username'] as String,
  email: json['email'] as String,
  role: json['role'] as String,
  createdAt: json['created_at'] as String,
  updatedAt: json['updated_at'] as String,
  token: json['token'] as String?,
  initials: json['initials'] as String?,
  avatarColor: json['avatar_color'] as String?,
  profilePicture: json['profile_picture'] as String?,
);

Map<String, dynamic> _$UserDtoToJson(UserDto instance) => <String, dynamic>{
  'id': instance.id,
  'username': instance.username,
  'email': instance.email,
  'role': instance.role,
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
  'token': instance.token,
  'initials': instance.initials,
  'avatar_color': instance.avatarColor,
  'profile_picture': instance.profilePicture,
};
