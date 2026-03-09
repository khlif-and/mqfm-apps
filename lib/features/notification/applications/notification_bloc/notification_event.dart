import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_event.freezed.dart';

@freezed
class NotificationEvent with _$NotificationEvent {
  const factory NotificationEvent.fetch() = NotificationFetch;
  const factory NotificationEvent.markRead({required int id}) =
      NotificationMarkRead;
  const factory NotificationEvent.markAllRead() = NotificationMarkAllRead;
  const factory NotificationEvent.fetchUnreadCount() =
      NotificationFetchUnreadCount;
  const factory NotificationEvent.fetchSettings() = NotificationFetchSettings;
  const factory NotificationEvent.updateSettings({
    required bool dailyReminder,
    required bool newContent,
    required bool eventReminder,
  }) = NotificationUpdateSettings;
}
