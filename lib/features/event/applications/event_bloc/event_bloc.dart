import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:mqfm_apps/features/event/domain/interfaces/i_event_repository.dart';
import 'package:mqfm_apps/features/event/applications/event_bloc/event_event.dart';
import 'package:mqfm_apps/features/event/applications/event_bloc/event_state.dart';

@injectable
class EventBloc extends Bloc<EventEvent, EventState> {
  final IEventRepository _repository;

  EventBloc(this._repository) : super(const EventState.initial()) {
    on<EventFetchUpcoming>(_onFetchUpcoming);
    on<EventFetchDetail>(_onFetchDetail);
    on<EventRsvp>(_onRsvp);
    on<EventCancelRsvp>(_onCancelRsvp);
    on<EventFetchMyRsvps>(_onFetchMyRsvps);
  }

  Future<void> _onFetchUpcoming(
      EventFetchUpcoming event, Emitter<EventState> emit) async {
    emit(const EventState.loading());
    final result = await _repository.getUpcomingEvents();
    result.fold(
      (error) => emit(EventState.error(message: error)),
      (events) => emit(EventState.loaded(events: events)),
    );
  }

  Future<void> _onFetchDetail(
      EventFetchDetail event, Emitter<EventState> emit) async {
    emit(const EventState.loading());
    final result = await _repository.getEventById(event.id);
    result.fold(
      (error) => emit(EventState.error(message: error)),
      (ev) => emit(EventState.detail(event: ev)),
    );
  }

  Future<void> _onRsvp(EventRsvp event, Emitter<EventState> emit) async {
    final result = await _repository.rsvpEvent(event.id);
    result.fold(
      (error) => emit(EventState.error(message: error)),
      (msg) => emit(EventState.actionSuccess(message: msg)),
    );
  }

  Future<void> _onCancelRsvp(
      EventCancelRsvp event, Emitter<EventState> emit) async {
    final result = await _repository.cancelRsvp(event.id);
    result.fold(
      (error) => emit(EventState.error(message: error)),
      (msg) => emit(EventState.actionSuccess(message: msg)),
    );
  }

  Future<void> _onFetchMyRsvps(
      EventFetchMyRsvps event, Emitter<EventState> emit) async {
    emit(const EventState.loading());
    final result = await _repository.getMyRsvps();
    result.fold(
      (error) => emit(EventState.error(message: error)),
      (events) => emit(EventState.loaded(events: events)),
    );
  }
}
