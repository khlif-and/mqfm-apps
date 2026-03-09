import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_event.freezed.dart';

@freezed
class LocationEvent with _$LocationEvent {
  const factory LocationEvent.fetch() = LocationFetch;
  const factory LocationEvent.update({
    required double latitude,
    required double longitude,
    required String city,
  }) = LocationUpdate;
}
