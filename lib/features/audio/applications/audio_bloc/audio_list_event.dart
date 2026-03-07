import 'package:freezed_annotation/freezed_annotation.dart';

part 'audio_list_event.freezed.dart';

@freezed
class AudioListEvent with _$AudioListEvent {
  const factory AudioListEvent.fetch() = AudioListFetch;
  const factory AudioListEvent.search({required String query}) =
      AudioListSearch;
}
