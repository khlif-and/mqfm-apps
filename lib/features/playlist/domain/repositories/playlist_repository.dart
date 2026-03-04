import 'package:dartz/dartz.dart';
import 'package:mqfm_apps/features/playlist/domain/entities/playlist_entity.dart';
import 'dart:io';

abstract class PlaylistRepository {
  Future<Either<String, List<PlaylistEntity>>> getPlaylists();
  Future<Either<String, PlaylistEntity>> getDetailPlaylist(int id);
  Future<Either<String, PlaylistEntity>> createPlaylist(
    String name, {
    File? imageFile,
  });
  Future<Either<String, bool>> addAudioToPlaylist(int playlistId, int audioId);
}
