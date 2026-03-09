import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:mqfm_apps/features/share/applications/share_bloc/share_event.dart';
import 'package:mqfm_apps/features/share/applications/share_bloc/share_state.dart';
import 'package:mqfm_apps/features/share/domain/interfaces/i_share_repository.dart';

@injectable
class ShareBloc extends Bloc<ShareEvent, ShareState> {
  final IShareRepository _repository;

  ShareBloc(this._repository) : super(const ShareState.initial()) {
    on<ShareGetAudioShare>(_onGetAudioShare);
    on<ShareGetSharedClip>(_onGetSharedClip);
    on<ShareGetSharedPlaylist>(_onGetSharedPlaylist);
  }

  Future<void> _onGetAudioShare(
      ShareGetAudioShare event, Emitter<ShareState> emit) async {
    emit(const ShareState.loading());
    final result = await _repository.shareAudio(event.audioId);
    result.fold(
      (error) => emit(ShareState.error(message: error)),
      (share) => emit(ShareState.shareLoaded(share: share)),
    );
  }

  Future<void> _onGetSharedClip(
      ShareGetSharedClip event, Emitter<ShareState> emit) async {
    emit(const ShareState.loading());
    final result = await _repository.getSharedClip(event.token);
    result.fold(
      (error) => emit(ShareState.error(message: error)),
      (clip) => emit(ShareState.clipLoaded(clip: clip)),
    );
  }

  Future<void> _onGetSharedPlaylist(
      ShareGetSharedPlaylist event, Emitter<ShareState> emit) async {
    emit(const ShareState.loading());
    final result = await _repository.getSharedPlaylist(event.token);
    result.fold(
      (error) => emit(ShareState.error(message: error)),
      (audios) => emit(ShareState.playlistLoaded(audios: audios)),
    );
  }
}
