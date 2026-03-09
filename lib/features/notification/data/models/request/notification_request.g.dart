// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateNotificationSettingsRequest _$UpdateNotificationSettingsRequestFromJson(
  Map<String, dynamic> json,
) => UpdateNotificationSettingsRequest(
  dailyReminder: json['daily_reminder'] as bool,
  newContent: json['new_content'] as bool,
  eventReminder: json['event_reminder'] as bool,
);

Map<String, dynamic> _$UpdateNotificationSettingsRequestToJson(
  UpdateNotificationSettingsRequest instance,
) => <String, dynamic>{
  'daily_reminder': instance.dailyReminder,
  'new_content': instance.newContent,
  'event_reminder': instance.eventReminder,
};
