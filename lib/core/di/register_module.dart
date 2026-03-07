import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mqfm_apps/core/network/dio_client.dart';
import 'package:mqfm_apps/features/artikel/data/datasources/remotes/artikel_api_service.dart';
import 'package:mqfm_apps/features/audio/data/datasources/remotes/audio_api_service.dart';
import 'package:mqfm_apps/features/auth/data/datasources/remotes/auth_api_service.dart';
import 'package:mqfm_apps/features/categories/data/datasources/remotes/category_remote_api_service.dart';
import 'package:mqfm_apps/features/like/data/datasources/remotes/like_api_service.dart';
import 'package:mqfm_apps/features/playlist/data/datasources/remotes/playlist_api_service.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  Dio get dio => DioClient.instance;

  @Named('dioScraping')
  @lazySingleton
  Dio get dioScraping => DioClient.scrapingInstance;

  @lazySingleton
  AuthRemoteDatasource get authRemoteDatasource => AuthRemoteDatasource(dio);

  @lazySingleton
  AudioRemoteDatasource get audioRemoteDatasource => AudioRemoteDatasource(dio);

  @lazySingleton
  CategoryRemoteDatasource get categoryRemoteDatasource =>
      CategoryRemoteDatasource(dio);

  @lazySingleton
  LikeRemoteDatasource get likeRemoteDatasource => LikeRemoteDatasource(dio);

  @lazySingleton
  PlaylistRemoteDatasource get playlistRemoteDatasource =>
      PlaylistRemoteDatasource(dio);

  @lazySingleton
  ArtikelRemoteDatasource get artikelRemoteDatasource =>
      ArtikelRemoteDatasource(dioScraping);
}
