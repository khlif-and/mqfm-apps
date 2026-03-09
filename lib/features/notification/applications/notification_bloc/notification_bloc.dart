import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:mqfm_apps/features/notification/domain/interfaces/i_notification_repository.dart';
import 'package:mqfm_apps/features/notification/applications/notification_bloc/notification_event.dart';
import 'package:mqfm_apps/features/notification/applications/notification_bloc/notification_state.dart';

@injectable
class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final INotificationRepository _repository;

  NotificationBloc(this._repository)
      : super(const NotificationState.initial()) {
    on<NotificationFetch>(_onFetch);
    on<NotificationMarkRead>(_onMarkRead);
    on<NotificationMarkAllRead>(_onMarkAllRead);
    on<NotificationFetchUnreadCount>(_onFetchUnreadCount);
    on<NotificationFetchSettings>(_onFetchSettings);
    on<NotificationUpdateSettings>(_onUpdateSettings);
  }

  Future<void> _onFetch(
      NotificationFetch event, Emitter<NotificationState> emit) async {
    emit(const NotificationState.loading());
    final result = await _repository.getNotifications();
    result.fold(
      (error) => emit(NotificationState.error(message: error)),
      (n) => emit(NotificationState.loaded(notifications: n)),
    );
  }

  Future<void> _onMarkRead(
      NotificationMarkRead event, Emitter<NotificationState> emit) async {
    final result = await _repository.markAsRead(event.id);
    result.fold(
      (error) => emit(NotificationState.error(message: error)),
      (msg) => emit(NotificationState.actionSuccess(message: msg)),
    );
  }

  Future<void> _onMarkAllRead(
      NotificationMarkAllRead event, Emitter<NotificationState> emit) async {
    final result = await _repository.markAllAsRead();
    result.fold(
      (error) => emit(NotificationState.error(message: error)),
      (msg) => emit(NotificationState.actionSuccess(message: msg)),
    );
  }

  Future<void> _onFetchUnreadCount(
      NotificationFetchUnreadCount event, Emitter<NotificationState> emit) async {
    final result = await _repository.getUnreadCount();
    result.fold(
      (error) => emit(NotificationState.error(message: error)),
      (count) => emit(NotificationState.unreadCount(count: count)),
    );
  }

  Future<void> _onFetchSettings(
      NotificationFetchSettings event, Emitter<NotificationState> emit) async {
    emit(const NotificationState.loading());
    final result = await _repository.getSettings();
    result.fold(
      (error) => emit(NotificationState.error(message: error)),
      (s) => emit(NotificationState.settingsLoaded(settings: s)),
    );
  }

  Future<void> _onUpdateSettings(
      NotificationUpdateSettings event, Emitter<NotificationState> emit) async {
    final result = await _repository.updateSettings(
      dailyReminder: event.dailyReminder,
      newContent: event.newContent,
      eventReminder: event.eventReminder,
    );
    result.fold(
      (error) => emit(NotificationState.error(message: error)),
      (msg) => emit(NotificationState.actionSuccess(message: msg)),
    );
  }
}
