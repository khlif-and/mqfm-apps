import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mqfm_apps/features/event/domain/entities/event.dart';

part 'event_state.freezed.dart';

@freezed
class EventState with _$EventState {
  const factory EventState.initial() = EventInitial;
  const factory EventState.loading() = EventLoading;
  const factory EventState.loaded({required List<EventEntity> events}) =
      EventLoaded;
  const factory EventState.detail({required EventEntity event}) = EventDetail;
  const factory EventState.actionSuccess({required String message}) =
      EventActionSuccess;
  const factory EventState.error({required String message}) = EventError;
}
