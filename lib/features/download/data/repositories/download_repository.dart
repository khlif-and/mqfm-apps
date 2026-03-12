import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';
import 'package:mqfm_apps/features/download/data/datasources/remotes/download_api_service.dart';
import 'package:mqfm_apps/features/download/data/models/request/download_request.dart';
import 'package:mqfm_apps/features/download/domain/entities/download.dart';
import 'package:mqfm_apps/features/download/domain/interfaces/i_download_repository.dart';

@LazySingleton(as: IDownloadRepository)
class DownloadRepositoryImpl implements IDownloadRepository {
  final DownloadRemoteDatasource _datasource;

  DownloadRepositoryImpl(this._datasource);

  @override
  Future<Either<String, DownloadEntity>> createDownload({
    required int audioId,
    int? playlistId,
    int? fileSize,
  }) async {
    try {
      final dto = await _datasource.createDownload(
        CreateDownloadRequest(
          audioId: audioId,
          playlistId: playlistId,
          fileSize: fileSize,
        ),
      );
      return Right(dto.toEntity());
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, List<DownloadEntity>>> getDownloads() async {
    try {
      final dtos = await _datasource.getDownloads();
      return Right(dtos.map((d) => d.toEntity()).toList());
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, String>> deleteDownload(int id) async {
    try {
      await _datasource.deleteDownload(id);
      return const Right('Download dihapus');
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, DownloadStorageEntity>> getStorage() async {
    try {
      final dto = await _datasource.getStorage();
      return Right(dto.toEntity());
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, List<AudioEntity>>> getSmartDownloads() async {
    try {
      final dtos = await _datasource.getSmartDownloads();
      return Right(dtos.map((d) => d.toEntity()).toList());
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }
}
