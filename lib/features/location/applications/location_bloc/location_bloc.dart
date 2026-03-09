import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:mqfm_apps/features/location/applications/location_bloc/location_event.dart';
import 'package:mqfm_apps/features/location/applications/location_bloc/location_state.dart';
import 'package:mqfm_apps/features/location/domain/interfaces/i_location_repository.dart';

@injectable
class LocationBloc extends Bloc<LocationEvent, LocationState> {
  final ILocationRepository _repository;

  LocationBloc(this._repository) : super(const LocationState.initial()) {
    on<LocationFetch>(_onFetch);
    on<LocationUpdate>(_onUpdate);
  }

  Future<void> _onFetch(
      LocationFetch event, Emitter<LocationState> emit) async {
    emit(const LocationState.loading());
    final result = await _repository.getLocation();
    result.fold(
      (error) => emit(LocationState.error(message: error)),
      (location) => emit(LocationState.loaded(location: location)),
    );
  }

  Future<void> _onUpdate(
      LocationUpdate event, Emitter<LocationState> emit) async {
    emit(const LocationState.loading());
    final result = await _repository.updateLocation(
      event.latitude, event.longitude, event.city,
    );
    result.fold(
      (error) => emit(LocationState.error(message: error)),
      (location) =>
          emit(const LocationState.updated(message: 'Lokasi diperbarui')),
    );
  }
}
