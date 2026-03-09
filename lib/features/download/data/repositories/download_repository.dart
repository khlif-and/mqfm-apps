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
  Future<Either<String, String>> createDownload(int audioId) async {
    try {
      final response = await _datasource.createDownload(
        CreateDownloadRequest(audioId: audioId),
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
  Future<Either<String, List<DownloadEntity>>> getDownloads() async {
    try {
      final response = await _datasource.getDownloads();
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
  Future<Either<String, String>> deleteDownload(int id) async {
    try {
      final response = await _datasource.deleteDownload(id);
      if (response.status == 200) return Right(response.message);
      return Left(response.message);
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, DownloadStorageEntity>> getStorage() async {
    try {
      final response = await _datasource.getStorage();
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
  Future<Either<String, List<AudioEntity>>> getSmartDownloads() async {
    try {
      final response = await _datasource.getSmartDownloads();
      if (response.status == 200 && response.data != null) {
        final audios = response.data!.map((d) {
          return AudioEntity(
            id: d.audioId,
            title: d.title,
            artist: d.artist,
          );
        }).toList();
        return Right(audios);
      }
      return Left(response.message);
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }
}
