import 'package:dartz/dartz.dart';
import 'package:mqfm_apps/features/series/domain/entities/series.dart';

abstract class ISeriesRepository {
  Future<Either<String, List<SeriesEntity>>> getSeries();
  Future<Either<String, List<SeriesEntity>>> searchSeries(String query);
  Future<Either<String, SeriesEntity>> getSeriesById(int id);
}
