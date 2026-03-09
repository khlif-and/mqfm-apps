import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mqfm_apps/features/notification/domain/entities/notification.dart';

part 'notification_state.freezed.dart';

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState.initial() = NotificationInitial;
  const factory NotificationState.loading() = NotificationLoading;
  const factory NotificationState.loaded(
          {required List<NotificationEntity> notifications}) =
      NotificationLoaded;
  const factory NotificationState.unreadCount({required int count}) =
      NotificationUnreadCount;
  const factory NotificationState.settingsLoaded(
          {required NotificationSettingsEntity settings}) =
      NotificationSettingsLoaded;
  const factory NotificationState.actionSuccess({required String message}) =
      NotificationActionSuccess;
  const factory NotificationState.error({required String message}) =
      NotificationError;
}
