// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationDto _$NotificationDtoFromJson(Map<String, dynamic> json) =>
    NotificationDto(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String? ?? '',
      body: json['body'] as String? ?? '',
      type: json['type'] as String? ?? '',
      isRead: json['is_read'] as bool? ?? false,
      createdAt: json['created_at'] as String? ?? '',
    );

Map<String, dynamic> _$NotificationDtoToJson(NotificationDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
      'type': instance.type,
      'is_read': instance.isRead,
      'created_at': instance.createdAt,
    };

NotificationSettingsDto _$NotificationSettingsDtoFromJson(
  Map<String, dynamic> json,
) => NotificationSettingsDto(
  dailyReminder: json['daily_reminder'] as bool? ?? true,
  newContent: json['new_content'] as bool? ?? true,
  eventReminder: json['event_reminder'] as bool? ?? true,
);

Map<String, dynamic> _$NotificationSettingsDtoToJson(
  NotificationSettingsDto instance,
) => <String, dynamic>{
  'daily_reminder': instance.dailyReminder,
  'new_content': instance.newContent,
  'event_reminder': instance.eventReminder,
};
