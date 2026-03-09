import 'package:freezed_annotation/freezed_annotation.dart';

part 'stats_event.freezed.dart';

@freezed
class StatsEvent with _$StatsEvent {
  const factory StatsEvent.record({
    required int audioId,
    required int listenedSeconds,
  }) = StatsRecord;
  const factory StatsEvent.fetchRecap() = StatsFetchRecap;
}
