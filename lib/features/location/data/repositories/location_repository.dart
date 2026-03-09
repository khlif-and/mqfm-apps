import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mqfm_apps/features/location/data/datasources/remotes/location_api_service.dart';
import 'package:mqfm_apps/features/location/data/models/request/location_request.dart';
import 'package:mqfm_apps/features/location/domain/entities/location.dart';
import 'package:mqfm_apps/features/location/domain/interfaces/i_location_repository.dart';

@LazySingleton(as: ILocationRepository)
class LocationRepositoryImpl implements ILocationRepository {
  final LocationRemoteDatasource _datasource;

  LocationRepositoryImpl(this._datasource);

  @override
  Future<Either<String, String>> updateLocation(
      double latitude, double longitude, String city) async {
    try {
      final response = await _datasource.updateLocation(
        UpdateLocationRequest(
          latitude: latitude,
          longitude: longitude,
          city: city,
        ),
      );
      if (response.status == 200) return Right(response.message);
      return Left(response.message);
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, UserLocationEntity>> getLocation() async {
    try {
      final response = await _datasource.getLocation();
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
