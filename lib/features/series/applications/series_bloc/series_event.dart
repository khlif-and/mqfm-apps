import 'package:freezed_annotation/freezed_annotation.dart';

part 'series_event.freezed.dart';

@freezed
class SeriesEvent with _$SeriesEvent {
  const factory SeriesEvent.fetch() = SeriesFetch;
  const factory SeriesEvent.search({required String query}) = SeriesSearch;
  const factory SeriesEvent.fetchDetail({required int id}) = SeriesFetchDetail;
}
