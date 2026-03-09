// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationEntityImpl _$$NotificationEntityImplFromJson(
  Map<String, dynamic> json,
) => _$NotificationEntityImpl(
  id: (json['id'] as num).toInt(),
  title: json['title'] as String? ?? '',
  body: json['body'] as String? ?? '',
  type: json['type'] as String? ?? '',
  isRead: json['isRead'] as bool? ?? false,
  createdAt: json['createdAt'] as String? ?? '',
);

Map<String, dynamic> _$$NotificationEntityImplToJson(
  _$NotificationEntityImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'body': instance.body,
  'type': instance.type,
  'isRead': instance.isRead,
  'createdAt': instance.createdAt,
};

_$NotificationSettingsEntityImpl _$$NotificationSettingsEntityImplFromJson(
  Map<String, dynamic> json,
) => _$NotificationSettingsEntityImpl(
  dailyReminder: json['dailyReminder'] as bool? ?? true,
  newContent: json['newContent'] as bool? ?? true,
  eventReminder: json['eventReminder'] as bool? ?? false,
);

Map<String, dynamic> _$$NotificationSettingsEntityImplToJson(
  _$NotificationSettingsEntityImpl instance,
) => <String, dynamic>{
  'dailyReminder': instance.dailyReminder,
  'newContent': instance.newContent,
  'eventReminder': instance.eventReminder,
};
