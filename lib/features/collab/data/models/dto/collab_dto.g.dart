// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collab_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CollaboratorDto _$CollaboratorDtoFromJson(Map<String, dynamic> json) =>
    CollaboratorDto(
      userId: (json['user_id'] as num?)?.toInt() ?? 0,
      username: json['username'] as String? ?? '',
      role: json['role'] as String? ?? '',
      joinedAt: json['joined_at'] as String? ?? '',
    );

Map<String, dynamic> _$CollaboratorDtoToJson(CollaboratorDto instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'username': instance.username,
      'role': instance.role,
      'joined_at': instance.joinedAt,
    };
