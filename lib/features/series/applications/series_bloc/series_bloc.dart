import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:mqfm_apps/features/series/domain/interfaces/i_series_repository.dart';
import 'package:mqfm_apps/features/series/applications/series_bloc/series_event.dart';
import 'package:mqfm_apps/features/series/applications/series_bloc/series_state.dart';

@injectable
class SeriesBloc extends Bloc<SeriesEvent, SeriesState> {
  final ISeriesRepository _repository;

  SeriesBloc(this._repository) : super(const SeriesState.initial()) {
    on<SeriesFetch>(_onFetch);
    on<SeriesSearch>(_onSearch);
    on<SeriesFetchDetail>(_onFetchDetail);
  }

  Future<void> _onFetch(SeriesFetch event, Emitter<SeriesState> emit) async {
    emit(const SeriesState.loading());
    final result = await _repository.getSeries();
    result.fold(
      (error) => emit(SeriesState.error(message: error)),
      (series) => emit(SeriesState.loaded(series: series)),
    );
  }

  Future<void> _onSearch(SeriesSearch event, Emitter<SeriesState> emit) async {
    emit(const SeriesState.loading());
    final result = await _repository.searchSeries(event.query);
    result.fold(
      (error) => emit(SeriesState.error(message: error)),
      (series) => emit(SeriesState.loaded(series: series)),
    );
  }

  Future<void> _onFetchDetail(
      SeriesFetchDetail event, Emitter<SeriesState> emit) async {
    emit(const SeriesState.loading());
    final result = await _repository.getSeriesById(event.id);
    result.fold(
      (error) => emit(SeriesState.error(message: error)),
      (series) => emit(SeriesState.detail(series: series)),
    );
  }
}
