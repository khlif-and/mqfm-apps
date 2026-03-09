import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_event.freezed.dart';

@freezed
class EventEvent with _$EventEvent {
  const factory EventEvent.fetchUpcoming() = EventFetchUpcoming;
  const factory EventEvent.fetchDetail({required int id}) = EventFetchDetail;
  const factory EventEvent.rsvp({required int id}) = EventRsvp;
  const factory EventEvent.cancelRsvp({required int id}) = EventCancelRsvp;
  const factory EventEvent.fetchMyRsvps() = EventFetchMyRsvps;
}
