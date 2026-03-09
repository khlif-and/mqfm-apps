import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mqfm_apps/features/notification/data/datasources/remotes/notification_api_service.dart';
import 'package:mqfm_apps/features/notification/data/models/request/notification_request.dart';
import 'package:mqfm_apps/features/notification/domain/entities/notification.dart';
import 'package:mqfm_apps/features/notification/domain/interfaces/i_notification_repository.dart';

@LazySingleton(as: INotificationRepository)
class NotificationRepositoryImpl implements INotificationRepository {
  final NotificationRemoteDatasource _datasource;

  NotificationRepositoryImpl(this._datasource);

  @override
  Future<Either<String, List<NotificationEntity>>> getNotifications() async {
    try {
      final response = await _datasource.getNotifications();
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
  Future<Either<String, String>> markAsRead(int id) async {
    try {
      final response = await _datasource.markAsRead(id);
      if (response.status == 200) return Right(response.message);
      return Left(response.message);
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, String>> markAllAsRead() async {
    try {
      final response = await _datasource.markAllAsRead();
      if (response.status == 200) return Right(response.message);
      return Left(response.message);
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, int>> getUnreadCount() async {
    try {
      final response = await _datasource.getUnreadCount();
      if (response.status == 200 && response.data != null) {
        final data = response.data;
        if (data is Map<String, dynamic>) {
          return Right(data['count'] as int? ?? 0);
        }
        return const Right(0);
      }
      return Left(response.message);
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, NotificationSettingsEntity>> getSettings() async {
    try {
      final response = await _datasource.getSettings();
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
  Future<Either<String, String>> updateSettings({
    required bool dailyReminder,
    required bool newContent,
    required bool eventReminder,
  }) async {
    try {
      final response = await _datasource.updateSettings(
        UpdateNotificationSettingsRequest(
          dailyReminder: dailyReminder,
          newContent: newContent,
          eventReminder: eventReminder,
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
}
