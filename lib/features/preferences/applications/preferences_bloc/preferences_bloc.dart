import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:mqfm_apps/features/preferences/applications/preferences_bloc/preferences_event.dart';
import 'package:mqfm_apps/features/preferences/applications/preferences_bloc/preferences_state.dart';
import 'package:mqfm_apps/features/preferences/domain/interfaces/i_preferences_repository.dart';

@injectable
class PreferencesBloc extends Bloc<PreferencesEvent, PreferencesState> {
  final IPreferencesRepository _repository;

  PreferencesBloc(this._repository)
      : super(const PreferencesState.initial()) {
    on<PreferencesFetch>(_onFetch);
    on<PreferencesUpdate>(_onUpdate);
  }

  Future<void> _onFetch(
      PreferencesFetch event, Emitter<PreferencesState> emit) async {
    emit(const PreferencesState.loading());
    final result = await _repository.getPreferences();
    result.fold(
      (error) => emit(PreferencesState.error(message: error)),
      (prefs) => emit(PreferencesState.loaded(preferences: prefs)),
    );
  }

  Future<void> _onUpdate(
      PreferencesUpdate event, Emitter<PreferencesState> emit) async {
    emit(const PreferencesState.loading());
    final result = await _repository.updatePreferences(
      playbackSpeed: event.playbackSpeed,
      sleepTimerMinutes: event.sleepTimerMinutes,
      autoDownload: event.autoDownload,
    );
    result.fold(
      (error) => emit(PreferencesState.error(message: error)),
      (prefs) =>
          emit(const PreferencesState.updated(message: 'Preferensi diperbarui')),
    );
  }
}
