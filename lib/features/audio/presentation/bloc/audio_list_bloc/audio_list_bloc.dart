import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:mqfm_apps/features/audio/domain/repositories/i_audio_repository.dart';
import 'package:mqfm_apps/features/audio/presentation/bloc/audio_list_bloc/audio_list_event.dart';
import 'package:mqfm_apps/features/audio/presentation/bloc/audio_list_bloc/audio_list_state.dart';

@injectable
class AudioListBloc extends Bloc<AudioListEvent, AudioListState> {
  final IAudioRepository _audioRepository;

  AudioListBloc(this._audioRepository) : super(const AudioListState.initial()) {
    on<AudioListFetch>(_onFetch);
    on<AudioListSearch>(_onSearch);
  }

  Future<void> _onFetch(
    AudioListFetch event,
    Emitter<AudioListState> emit,
  ) async {
    emit(const AudioListState.loading());
    final result = await _audioRepository.getAudios();
    result.fold(
      (error) => emit(AudioListState.error(message: error)),
      (audios) => emit(AudioListState.loaded(audios: audios)),
    );
  }

  Future<void> _onSearch(
    AudioListSearch event,
    Emitter<AudioListState> emit,
  ) async {
    emit(const AudioListState.loading());
    final result = await _audioRepository.searchAudios(event.query);
    result.fold(
      (error) => emit(AudioListState.error(message: error)),
      (audios) => emit(AudioListState.loaded(audios: audios)),
    );
  }
}
