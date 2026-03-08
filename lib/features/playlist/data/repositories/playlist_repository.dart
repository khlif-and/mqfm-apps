import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mqfm_apps/core/manager/playlist_change_notifier.dart';
import 'package:mqfm_apps/core/models/base_response.dart';
import 'package:mqfm_apps/features/audio/data/models/dto/audio_dto.dart';
import 'package:mqfm_apps/features/playlist/data/datasources/remotes/playlist_api_service.dart';
import 'package:mqfm_apps/features/playlist/data/models/dto/playlist_dto.dart';
import 'package:mqfm_apps/features/playlist/domain/entities/playlist.dart';
import 'package:injectable/injectable.dart';
import 'package:mqfm_apps/features/playlist/domain/interfaces/i_playlist_repository.dart';

@LazySingleton(as: IPlaylistRepository)
class PlaylistRepositoryImpl implements IPlaylistRepository {
  final PlaylistRemoteDatasource _datasource;
  final Dio _dio;

  PlaylistRepositoryImpl(this._datasource, this._dio);

  @override
  Future<Either<String, List<PlaylistEntity>>> getPlaylists() async {
    try {
      final json = await _datasource.getPlaylists() as Map<String, dynamic>;
      final dto = BaseResponse<List<PlaylistDto>>.fromJson(
        json,
        (json) => (json as List)
            .map((e) => PlaylistDto.fromJson(e as Map<String, dynamic>))
            .toList(),
      );
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
      if ((json['status'] as int?) == 200 && json['data'] != null) {
        final data = json['data'] as Map<String, dynamic>;
        final rawAudios = data['audios'] as List?;

        List<AudioDto> parsedAudios = [];
        if (rawAudios != null) {
          for (final item in rawAudios) {
            try {
              final map = item as Map<String, dynamic>;
              if (map.containsKey('audio') && map['audio'] is Map) {
                parsedAudios.add(AudioDto.fromJson(Map<String, dynamic>.from(map['audio'])));
              } else if (map.containsKey('title')) {
                parsedAudios.add(AudioDto.fromJson(map));
              } else if (map.containsKey('audio_id')) {
                final resp = await _dio.get('/api/audios/${map['audio_id']}');
                final aData = resp.data as Map<String, dynamic>;
                if ((aData['status'] as int?) == 200 && aData['data'] != null) {
                  parsedAudios.add(AudioDto.fromJson(Map<String, dynamic>.from(aData['data'])));
                }
              }
            } catch (_) {}
          }
        }

        String fixUrl(String? path) {
          if (path == null || path.isEmpty) return '';
          if (path.startsWith('http')) return path;
          final baseUrl = dotenv.env['BASE_URL'] ?? '';
          final cleanPath = path.startsWith('/') ? path.substring(1) : path;
          return '$baseUrl/$cleanPath';
        }

        final dto = PlaylistDto(
          id: data['id'] as int? ?? 0,
          userId: data['user_id'] as int? ?? 0,
          name: data['name'] as String? ?? '',
          imageUrl: data['image_url'] as String?,
          audios: parsedAudios,
          createdAt: data['created_at'] as String? ?? '',
          updatedAt: data['updated_at'] as String? ?? '',
        );
        final entity = dto.toEntity();
        return Right(PlaylistEntity(
          id: entity.id,
          userId: entity.userId,
          name: entity.name,
          imageUrl: fixUrl(data['image_url'] as String?),
          audios: entity.audios,
          createdAt: entity.createdAt,
          updatedAt: entity.updatedAt,
        ));
      }
      return Left(json['message'] as String? ?? 'Terjadi kesalahan');
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

      final dto = BaseResponse<PlaylistDto>.fromJson(
        response.data,
        (json) => PlaylistDto.fromJson(json as Map<String, dynamic>),
      );
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
        PlaylistChangeNotifier.notifyChange();
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
