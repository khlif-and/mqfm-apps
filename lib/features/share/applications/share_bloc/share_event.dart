import 'package:freezed_annotation/freezed_annotation.dart';

part 'share_event.freezed.dart';

@freezed
class ShareEvent with _$ShareEvent {
  const factory ShareEvent.getAudioShare({required int audioId}) =
      ShareGetAudioShare;
  const factory ShareEvent.getSharedClip({required String token}) =
      ShareGetSharedClip;
  const factory ShareEvent.getSharedPlaylist({required String token}) =
      ShareGetSharedPlaylist;
}
