// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collab.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CollaboratorEntityImpl _$$CollaboratorEntityImplFromJson(
  Map<String, dynamic> json,
) => _$CollaboratorEntityImpl(
  userId: (json['userId'] as num?)?.toInt() ?? 0,
  username: json['username'] as String? ?? '',
  role: json['role'] as String? ?? '',
  joinedAt: json['joinedAt'] as String? ?? '',
);

Map<String, dynamic> _$$CollaboratorEntityImplToJson(
  _$CollaboratorEntityImpl instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'username': instance.username,
  'role': instance.role,
  'joinedAt': instance.joinedAt,
};
