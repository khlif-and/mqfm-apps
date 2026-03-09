import 'package:json_annotation/json_annotation.dart';
import 'package:mqfm_apps/features/notification/domain/entities/notification.dart';

part 'notification_dto.g.dart';

@JsonSerializable()
class NotificationDto {
  final int id;
  @JsonKey(defaultValue: '')
  final String title;
  @JsonKey(defaultValue: '')
  final String body;
  @JsonKey(defaultValue: '')
  final String type;
  @JsonKey(name: 'is_read', defaultValue: false)
  final bool isRead;
  @JsonKey(name: 'created_at', defaultValue: '')
  final String createdAt;

  const NotificationDto({
    required this.id,
    this.title = '',
    this.body = '',
    this.type = '',
    this.isRead = false,
    this.createdAt = '',
  });

  factory NotificationDto.fromJson(Map<String, dynamic> json) =>
      _$NotificationDtoFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationDtoToJson(this);

  NotificationEntity toEntity() {
    return NotificationEntity(
      id: id,
      title: title,
      body: body,
      type: type,
      isRead: isRead,
      createdAt: createdAt,
    );
  }
}

@JsonSerializable()
class NotificationSettingsDto {
  @JsonKey(name: 'daily_reminder', defaultValue: true)
  final bool dailyReminder;
  @JsonKey(name: 'new_content', defaultValue: true)
  final bool newContent;
  @JsonKey(name: 'event_reminder', defaultValue: true)
  final bool eventReminder;

  const NotificationSettingsDto({
    this.dailyReminder = true,
    this.newContent = true,
    this.eventReminder = true,
  });

  factory NotificationSettingsDto.fromJson(Map<String, dynamic> json) =>
      _$NotificationSettingsDtoFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationSettingsDtoToJson(this);

  NotificationSettingsEntity toEntity() {
    return NotificationSettingsEntity(
      dailyReminder: dailyReminder,
      newContent: newContent,
      eventReminder: eventReminder,
    );
  }
}
