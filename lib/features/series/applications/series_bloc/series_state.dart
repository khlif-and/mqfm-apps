import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mqfm_apps/features/series/domain/entities/series.dart';

part 'series_state.freezed.dart';

@freezed
class SeriesState with _$SeriesState {
  const factory SeriesState.initial() = SeriesInitial;
  const factory SeriesState.loading() = SeriesLoading;
  const factory SeriesState.loaded({required List<SeriesEntity> series}) =
      SeriesLoaded;
  const factory SeriesState.detail({required SeriesEntity series}) =
      SeriesDetail;
  const factory SeriesState.error({required String message}) = SeriesError;
}
