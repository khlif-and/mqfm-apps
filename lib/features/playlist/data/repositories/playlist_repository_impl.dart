import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mqfm_apps/features/playlist/data/datasources/playlist_remote_datasource.dart';
import 'package:mqfm_apps/features/playlist/data/models/playlist_dto.dart';
import 'package:mqfm_apps/features/playlist/domain/entities/playlist_entity.dart';
import 'package:mqfm_apps/features/playlist/domain/repositories/playlist_repository.dart';

class PlaylistRepositoryImpl implements PlaylistRepository {
  final PlaylistRemoteDatasource _datasource;
  final Dio _dio;

  PlaylistRepositoryImpl(this._datasource, this._dio);

  @override
  Future<Either<String, List<PlaylistEntity>>> getPlaylists() async {
    try {
      final json = await _datasource.getPlaylists() as Map<String, dynamic>;
      final dto = PlaylistListResponseDto.fromJson(json);
      if (dto.status == 200 && dto.data != null) {
        return Right(dto.data!.map((d) => d.toEntity()).toList());
      }
      return Left(dto.message);
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, PlaylistEntity>> getDetailPlaylist(int id) async {
    try {
      final json =
          await _datasource.getDetailPlaylist(id) as Map<String, dynamic>;
      final dto = PlaylistResponseDto.fromJson(json);
      if (dto.status == 200 && dto.data != null) {
        return Right(dto.data!.toEntity());
      }
      return Left(dto.message);
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, PlaylistEntity>> createPlaylist(
    String name, {
    File? imageFile,
  }) async {
    try {
      final Map<String, dynamic> fields = {'name': name};
      if (imageFile != null) {
        fields['image_file'] = await MultipartFile.fromFile(imageFile.path);
      }

      final formData = FormData.fromMap(fields);
      final response = await _dio.post('/api/user/playlists/', data: formData);

      final dto = PlaylistResponseDto.fromJson(response.data);
      if (dto.status == 200 || dto.status == 201) {
        if (dto.data != null) {
          return Right(dto.data!.toEntity());
        }
      }
      return Left(dto.message);
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, bool>> addAudioToPlaylist(
    int playlistId,
    int audioId,
  ) async {
    try {
      final formData = FormData.fromMap({
        'playlist_id': playlistId.toString(),
        'audio_id': audioId.toString(),
      });

      final response = await _dio.post(
        '/api/user/playlists/add-audio',
        data: formData,
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        return const Right(true);
      }

      final body = response.data;
      final message = body is Map ? body['message'] ?? 'Gagal' : 'Gagal';
      return Left(message);
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }
}
