import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mqfm_apps/features/series/data/datasources/remotes/series_api_service.dart';
import 'package:mqfm_apps/features/series/domain/entities/series.dart';
import 'package:mqfm_apps/features/series/domain/interfaces/i_series_repository.dart';

@LazySingleton(as: ISeriesRepository)
class SeriesRepositoryImpl implements ISeriesRepository {
  final SeriesRemoteDatasource _datasource;

  SeriesRepositoryImpl(this._datasource);

  @override
  Future<Either<String, List<SeriesEntity>>> getSeries() async {
    try {
      final response = await _datasource.getSeries();
      if (response.status == 200 && response.data != null) {
        return Right(response.data!.map((d) => d.toEntity()).toList());
      }
      return Left(response.message);
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, List<SeriesEntity>>> searchSeries(String query) async {
    try {
      final response = await _datasource.searchSeries(query);
      if (response.status == 200 && response.data != null) {
        return Right(response.data!.map((d) => d.toEntity()).toList());
      }
      return Left(response.message);
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, SeriesEntity>> getSeriesById(int id) async {
    try {
      final response = await _datasource.getSeriesById(id);
      if (response.status == 200 && response.data != null) {
        return Right(response.data!.toEntity());
      }
      return Left(response.message);
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }
}
