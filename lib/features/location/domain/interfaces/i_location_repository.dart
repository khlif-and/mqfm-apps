import 'package:dartz/dartz.dart';
import 'package:mqfm_apps/features/location/domain/entities/location.dart';

abstract class ILocationRepository {
  Future<Either<String, String>> updateLocation(
      double latitude, double longitude, String city);
  Future<Either<String, UserLocationEntity>> getLocation();
}
