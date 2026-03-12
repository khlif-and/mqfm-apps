import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:mqfm_apps/features/playlist/domain/entities/playlist.dart';

abstract class IPlaylistRepository {
  Future<Either<String, List<PlaylistEntity>>> getPlaylists();
  Future<Either<String, PlaylistEntity>> getDetail(int id);
  Future<Either<String, PlaylistEntity>> create(String name, {File? imageFile});
  Future<Either<String, PlaylistEntity>> createFromAudio({
    required String name,
    required int audioId,
  });
  Future<Either<String, PlaylistEntity>> update(
    int id, {
    String? name,
    File? imageFile,
  });
  Future<Either<String, String>> delete(int id);
  Future<Either<String, bool>> addAudio(int playlistId, int audioId);
  Future<Either<String, bool>> removeAudio(int playlistId, int audioId);
  Future<Either<String, String>> share(int id);
  Future<Either<String, List<PlaylistEntity>>> search(String query);
}
