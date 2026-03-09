import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mqfm_apps/features/share/data/datasources/remotes/share_api_service.dart';
import 'package:mqfm_apps/features/share/domain/entities/share.dart';
import 'package:mqfm_apps/features/share/domain/interfaces/i_share_repository.dart';

@LazySingleton(as: IShareRepository)
class ShareRepositoryImpl implements IShareRepository {
  final ShareRemoteDatasource _datasource;

  ShareRepositoryImpl(this._datasource);

  @override
  Future<Either<String, ShareEntity>> shareAudio(int audioId) async {
    try {
      final response = await _datasource.shareAudio(audioId);
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
  Future<Either<String, dynamic>> getSharedClip(String token) async {
    try {
      final response = await _datasource.getSharedClip(token);
      if (response.status == 200) return Right(response.data);
      return Left(response.message);
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, dynamic>> getSharedPlaylist(String token) async {
    try {
      final response = await _datasource.getSharedPlaylist(token);
      if (response.status == 200) return Right(response.data);
      return Left(response.message);
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }
}
