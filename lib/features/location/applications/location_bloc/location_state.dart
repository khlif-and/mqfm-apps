import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mqfm_apps/features/location/domain/entities/location.dart';

part 'location_state.freezed.dart';

@freezed
class LocationState with _$LocationState {
  const factory LocationState.initial() = LocationInitial;
  const factory LocationState.loading() = LocationLoading;
  const factory LocationState.loaded({required UserLocationEntity location}) =
      LocationLoaded;
  const factory LocationState.updated({required String message}) =
      LocationUpdated;
  const factory LocationState.error({required String message}) = LocationError;
}
