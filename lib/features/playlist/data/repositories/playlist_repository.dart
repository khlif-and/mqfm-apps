import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mqfm_apps/core/manager/playlist_change_notifier.dart';
import 'package:mqfm_apps/features/playlist/data/datasources/remotes/playlist_api_service.dart';
import 'package:mqfm_apps/features/playlist/data/models/request/create_playlist_request.dart';
import 'package:mqfm_apps/features/playlist/domain/entities/playlist.dart';
import 'package:mqfm_apps/features/playlist/domain/interfaces/i_playlist_repository.dart';

@LazySingleton(as: IPlaylistRepository)
class PlaylistRepositoryImpl implements IPlaylistRepository {
  final PlaylistRemoteDatasource _datasource;

  PlaylistRepositoryImpl(this._datasource);

  @override
  Future<Either<String, List<PlaylistEntity>>> getPlaylists() async {
    try {
      final dtos = await _datasource.getPlaylists();
      return Right(dtos.map((d) => d.toEntity()).toList());
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, PlaylistEntity>> getDetail(int id) async {
    try {
      final dto = await _datasource.getDetail(id);
      return Right(dto.toEntity());
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, PlaylistEntity>> create(
    String name, {
    File? imageFile,
  }) async {
    try {
      final dto = await _datasource.create(name, imageFile: imageFile);
      PlaylistChangeNotifier.notifyChange();
      return Right(dto.toEntity());
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, PlaylistEntity>> createFromAudio({
    required String name,
    required int audioId,
  }) async {
    try {
      final dto = await _datasource.createFromAudio(
        CreatePlaylistFromAudioRequest(name: name, audioId: audioId),
      );
      PlaylistChangeNotifier.notifyChange();
      return Right(dto.toEntity());
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, PlaylistEntity>> update(
    int id, {
    String? name,
    File? imageFile,
  }) async {
    try {
      final dto = await _datasource.update(id, name: name, imageFile: imageFile);
      PlaylistChangeNotifier.notifyChange();
      return Right(dto.toEntity());
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, String>> delete(int id) async {
    try {
      await _datasource.delete(id);
      PlaylistChangeNotifier.notifyChange();
      return const Right('Playlist dihapus');
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, bool>> addAudio(int playlistId, int audioId) async {
    try {
      await _datasource.addAudio(
        PlaylistAudioRequest(playlistId: playlistId, audioId: audioId),
      );
      PlaylistChangeNotifier.notifyChange();
      return const Right(true);
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, bool>> removeAudio(int playlistId, int audioId) async {
    try {
      await _datasource.removeAudio(
        PlaylistAudioRequest(playlistId: playlistId, audioId: audioId),
      );
      PlaylistChangeNotifier.notifyChange();
      return const Right(true);
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, String>> share(int id) async {
    try {
      final token = await _datasource.share(id);
      return Right(token);
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, List<PlaylistEntity>>> search(String query) async {
    try {
      final dtos = await _datasource.search(query);
      return Right(dtos.map((d) => d.toEntity()).toList());
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }
}
