import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification.freezed.dart';
part 'notification.g.dart';

@freezed
class NotificationEntity with _$NotificationEntity {
  const factory NotificationEntity({
    required int id,
    @Default('') String title,
    @Default('') String body,
    @Default('') String type,
    @Default(false) bool isRead,
    @Default('') String createdAt,
  }) = _NotificationEntity;

  factory NotificationEntity.fromJson(Map<String, dynamic> json) =>
      _$NotificationEntityFromJson(json);
}

@freezed
class NotificationSettingsEntity with _$NotificationSettingsEntity {
  const factory NotificationSettingsEntity({
    @Default(true) bool dailyReminder,
    @Default(true) bool newContent,
    @Default(false) bool eventReminder,
  }) = _NotificationSettingsEntity;

  factory NotificationSettingsEntity.fromJson(Map<String, dynamic> json) =>
      _$NotificationSettingsEntityFromJson(json);
}
