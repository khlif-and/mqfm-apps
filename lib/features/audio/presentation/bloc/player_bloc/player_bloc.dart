import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:mqfm_apps/features/audio/domain/repositories/i_audio_repository.dart';
import 'package:mqfm_apps/features/audio/presentation/bloc/player_bloc/player_event.dart';
import 'package:mqfm_apps/features/audio/presentation/bloc/player_bloc/player_state.dart';

@injectable
class PlayerBloc extends Bloc<PlayerEvent, PlayerState> {
  final IAudioRepository _audioRepository;

  PlayerBloc(this._audioRepository) : super(const PlayerState.initial()) {
    on<PlayerLoadAudio>(_onLoadAudio);
  }

  Future<void> _onLoadAudio(
    PlayerLoadAudio event,
    Emitter<PlayerState> emit,
  ) async {
    emit(const PlayerState.loading());
    final result = await _audioRepository.getAudioById(event.audioId);
    result.fold(
      (error) => emit(PlayerState.error(message: error)),
      (audio) => emit(PlayerState.loaded(audio: audio)),
    );
  }
}
