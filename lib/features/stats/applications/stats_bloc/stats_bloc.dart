import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:mqfm_apps/features/stats/domain/interfaces/i_stats_repository.dart';
import 'package:mqfm_apps/features/stats/applications/stats_bloc/stats_event.dart';
import 'package:mqfm_apps/features/stats/applications/stats_bloc/stats_state.dart';

@injectable
class StatsBloc extends Bloc<StatsEvent, StatsState> {
  final IStatsRepository _repository;

  StatsBloc(this._repository) : super(const StatsState.initial()) {
    on<StatsRecord>(_onRecord);
    on<StatsFetchRecap>(_onFetchRecap);
  }

  Future<void> _onRecord(StatsRecord event, Emitter<StatsState> emit) async {
    final result =
        await _repository.recordStats(event.audioId, event.listenedSeconds);
    result.fold(
      (error) => emit(StatsState.error(message: error)),
      (msg) => emit(StatsState.recorded(message: msg)),
    );
  }

  Future<void> _onFetchRecap(
      StatsFetchRecap event, Emitter<StatsState> emit) async {
    emit(const StatsState.loading());
    final result = await _repository.getRecap();
    result.fold(
      (error) => emit(StatsState.error(message: error)),
      (recap) => emit(StatsState.recapLoaded(recap: recap)),
    );
  }
}
