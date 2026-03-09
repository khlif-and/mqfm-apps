import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mqfm_apps/features/stats/domain/entities/stats.dart';

part 'stats_state.freezed.dart';

@freezed
class StatsState with _$StatsState {
  const factory StatsState.initial() = StatsInitial;
  const factory StatsState.loading() = StatsLoading;
  const factory StatsState.recapLoaded({required StatsRecapEntity recap}) =
      StatsRecapLoaded;
  const factory StatsState.recorded({required String message}) = StatsRecorded;
  const factory StatsState.error({required String message}) = StatsError;
}
