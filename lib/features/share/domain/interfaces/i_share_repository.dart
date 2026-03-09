import 'package:dartz/dartz.dart';
import 'package:mqfm_apps/features/share/domain/entities/share.dart';

abstract class IShareRepository {
  Future<Either<String, ShareEntity>> shareAudio(int audioId);
  Future<Either<String, dynamic>> getSharedClip(String token);
  Future<Either<String, dynamic>> getSharedPlaylist(String token);
}
