import 'package:dartz/dartz.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';
import 'package:mqfm_apps/features/download/domain/entities/download.dart';

abstract class IDownloadRepository {
  Future<Either<String, String>> createDownload(int audioId);
  Future<Either<String, List<DownloadEntity>>> getDownloads();
  Future<Either<String, String>> deleteDownload(int id);
  Future<Either<String, DownloadStorageEntity>> getStorage();
  Future<Either<String, List<AudioEntity>>> getSmartDownloads();
}
