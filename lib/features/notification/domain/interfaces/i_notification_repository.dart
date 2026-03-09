import 'package:dartz/dartz.dart';
import 'package:mqfm_apps/features/notification/domain/entities/notification.dart';

abstract class INotificationRepository {
  Future<Either<String, List<NotificationEntity>>> getNotifications();
  Future<Either<String, String>> markAsRead(int id);
  Future<Either<String, String>> markAllAsRead();
  Future<Either<String, int>> getUnreadCount();
  Future<Either<String, NotificationSettingsEntity>> getSettings();
  Future<Either<String, String>> updateSettings({
    required bool dailyReminder,
    required bool newContent,
    required bool eventReminder,
  });
}
