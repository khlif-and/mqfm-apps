import 'dart:io';
import 'package:dio/dio.dart';
import 'package:mqfm_apps/features/playlist/data/models/dto/playlist_dto.dart';
import 'package:mqfm_apps/features/playlist/data/models/request/create_playlist_request.dart';

class PlaylistRemoteDatasource {
  final Dio _dio;

  PlaylistRemoteDatasource(this._dio);

  static const _base = '/api/v1/user/playlists';

  Future<List<PlaylistDto>> getPlaylists() async {
    final response = await _dio.get('$_base/');
    final list = response.data['data'] as List? ?? [];
    return list.map((e) => PlaylistDto.fromJson(e)).toList();
  }

  Future<PlaylistDto> getDetail(int id) async {
    final response = await _dio.get('$_base/$id');
    return PlaylistDto.fromJson(response.data['data']);
  }

  Future<PlaylistDto> create(String name, {File? imageFile}) async {
    final fields = <String, dynamic>{'name': name};
    if (imageFile != null) {
      fields['image_file'] = await MultipartFile.fromFile(imageFile.path);
    }
    final response = await _dio.post(
      '$_base/',
      data: FormData.fromMap(fields),
    );
    return PlaylistDto.fromJson(response.data['data']);
  }

  Future<PlaylistDto> createFromAudio(CreatePlaylistFromAudioRequest body) async {
    final response = await _dio.post('$_base/from-audio', data: body.toJson());
    return PlaylistDto.fromJson(response.data['data']);
  }

  Future<PlaylistDto> update(int id, {String? name, File? imageFile}) async {
    final fields = <String, dynamic>{};
    if (name != null) fields['name'] = name;
    if (imageFile != null) {
      fields['image_file'] = await MultipartFile.fromFile(imageFile.path);
    }
    final response = await _dio.put(
      '$_base/$id',
      data: FormData.fromMap(fields),
    );
    return PlaylistDto.fromJson(response.data['data']);
  }

  Future<void> delete(int id) async {
    await _dio.delete('$_base/$id');
  }

  Future<void> addAudio(PlaylistAudioRequest body) async {
    await _dio.post('$_base/add-audio', data: body.toJson());
  }

  Future<void> removeAudio(PlaylistAudioRequest body) async {
    await _dio.post('$_base/remove-audio', data: body.toJson());
  }

  Future<String> share(int id) async {
    final response = await _dio.post('$_base/$id/share');
    return response.data['data']['share_token'] as String? ?? '';
  }

  Future<List<PlaylistDto>> search(String query) async {
    final response = await _dio.get('$_base/search', queryParameters: {'q': query});
    final list = response.data['data'] as List? ?? [];
    return list.map((e) => PlaylistDto.fromJson(e)).toList();
  }
}
