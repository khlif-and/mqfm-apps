import 'package:freezed_annotation/freezed_annotation.dart';

part 'clip_event.freezed.dart';

@freezed
class ClipEvent with _$ClipEvent {
  const factory ClipEvent.fetch() = ClipFetch;
  const factory ClipEvent.create({
    required int audioId,
    required int startTime,
    required int endTime,
  }) = ClipCreate;
  const factory ClipEvent.delete({required int id}) = ClipDelete;
}
