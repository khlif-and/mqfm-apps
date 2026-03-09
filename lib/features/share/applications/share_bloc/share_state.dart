import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';
import 'package:mqfm_apps/features/clip/domain/entities/clip.dart';
import 'package:mqfm_apps/features/share/domain/entities/share.dart';

part 'share_state.freezed.dart';

@freezed
class ShareState with _$ShareState {
  const factory ShareState.initial() = ShareInitial;
  const factory ShareState.loading() = ShareLoading;
  const factory ShareState.shareLoaded({required ShareEntity share}) =
      ShareShareLoaded;
  const factory ShareState.clipLoaded({required ClipEntity clip}) =
      ShareClipLoaded;
  const factory ShareState.playlistLoaded(
      {required List<AudioEntity> audios}) = SharePlaylistLoaded;
  const factory ShareState.error({required String message}) = ShareError;
}
