import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mqfm_apps/features/clip/data/datasources/remotes/clip_api_service.dart';
import 'package:mqfm_apps/features/clip/data/models/request/clip_request.dart';
import 'package:mqfm_apps/features/clip/domain/entities/clip.dart';
import 'package:mqfm_apps/features/clip/domain/interfaces/i_clip_repository.dart';

@LazySingleton(as: IClipRepository)
class ClipRepositoryImpl implements IClipRepository {
  final ClipRemoteDatasource _datasource;

  ClipRepositoryImpl(this._datasource);

  @override
  Future<Either<String, ClipEntity>> createClip(
      int audioId, int startTime, int endTime) async {
    try {
      final response = await _datasource.createClip(
        CreateClipRequest(
          audioId: audioId,
          startTime: startTime,
          endTime: endTime,
        ),
      );
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
  Future<Either<String, List<ClipEntity>>> getClips() async {
    try {
      final response = await _datasource.getClips();
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
  Future<Either<String, String>> deleteClip(int id) async {
    try {
      final response = await _datasource.deleteClip(id);
      if (response.status == 200) return Right(response.message);
      return Left(response.message);
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }
}
