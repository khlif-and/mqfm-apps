import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mqfm_apps/features/event/data/datasources/remotes/event_api_service.dart';
import 'package:mqfm_apps/features/event/domain/entities/event.dart';
import 'package:mqfm_apps/features/event/domain/interfaces/i_event_repository.dart';

@LazySingleton(as: IEventRepository)
class EventRepositoryImpl implements IEventRepository {
  final EventRemoteDatasource _datasource;

  EventRepositoryImpl(this._datasource);

  @override
  Future<Either<String, List<EventEntity>>> getUpcomingEvents() async {
    try {
      final response = await _datasource.getUpcomingEvents();
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
  Future<Either<String, EventEntity>> getEventById(int id) async {
    try {
      final response = await _datasource.getEventById(id);
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

  @override
  Future<Either<String, String>> rsvpEvent(int id) async {
    try {
      final response = await _datasource.rsvpEvent(id);
      if (response.status == 200) return Right(response.message);
      return Left(response.message);
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, String>> cancelRsvp(int id) async {
    try {
      final response = await _datasource.cancelRsvp(id);
      if (response.status == 200) return Right(response.message);
      return Left(response.message);
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, List<EventEntity>>> getMyRsvps() async {
    try {
      final response = await _datasource.getMyRsvps();
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
}
