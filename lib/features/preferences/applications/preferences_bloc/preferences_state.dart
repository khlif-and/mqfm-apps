import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mqfm_apps/features/preferences/domain/entities/preferences.dart';

part 'preferences_state.freezed.dart';

@freezed
class PreferencesState with _$PreferencesState {
  const factory PreferencesState.initial() = PreferencesInitial;
  const factory PreferencesState.loading() = PreferencesLoading;
  const factory PreferencesState.loaded(
      {required PreferencesEntity preferences}) = PreferencesLoaded;
  const factory PreferencesState.updated({required String message}) =
      PreferencesUpdated;
  const factory PreferencesState.error({required String message}) =
      PreferencesError;
}
