import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';

part 'audio_list_state.freezed.dart';

@freezed
class AudioListState with _$AudioListState {
  const factory AudioListState.initial() = AudioListInitial;
  const factory AudioListState.loading() = AudioListLoading;
  const factory AudioListState.loaded({required List<AudioEntity> audios}) =
      AudioListLoaded;
  const factory AudioListState.error({required String message}) =
      AudioListError;
}
