import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_event.freezed.dart';

@freezed
class PlayerEvent with _$PlayerEvent {
  const factory PlayerEvent.loadAudio({required int audioId}) = PlayerLoadAudio;
}
