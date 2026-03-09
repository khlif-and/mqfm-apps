import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mqfm_apps/core/network/dio_client.dart';
import 'package:mqfm_apps/features/artikel/data/datasources/remotes/artikel_api_service.dart';
import 'package:mqfm_apps/features/audio/data/datasources/remotes/audio_api_service.dart';
import 'package:mqfm_apps/features/auth/data/datasources/remotes/auth_api_service.dart';
import 'package:mqfm_apps/features/bookmark/data/datasources/remotes/bookmark_api_service.dart';
import 'package:mqfm_apps/features/categories/data/datasources/remotes/category_remote_api_service.dart';
import 'package:mqfm_apps/features/clip/data/datasources/remotes/clip_api_service.dart';
import 'package:mqfm_apps/features/collab/data/datasources/remotes/collab_api_service.dart';
import 'package:mqfm_apps/features/download/data/datasources/remotes/download_api_service.dart';
import 'package:mqfm_apps/features/event/data/datasources/remotes/event_api_service.dart';
import 'package:mqfm_apps/features/favorite_artist/data/datasources/remotes/favorite_artist_api_service.dart';
import 'package:mqfm_apps/features/like/data/datasources/remotes/like_api_service.dart';
import 'package:mqfm_apps/features/location/data/datasources/remotes/location_api_service.dart';
import 'package:mqfm_apps/features/notification/data/datasources/remotes/notification_api_service.dart';
import 'package:mqfm_apps/features/playlist/data/datasources/remotes/playlist_api_service.dart';
import 'package:mqfm_apps/features/preferences/data/datasources/remotes/preferences_api_service.dart';
import 'package:mqfm_apps/features/progress/data/datasources/remotes/progress_api_service.dart';
import 'package:mqfm_apps/features/recommendation/data/datasources/remotes/recommendation_api_service.dart';
import 'package:mqfm_apps/features/resume/data/datasources/remotes/resume_api_service.dart';
import 'package:mqfm_apps/features/series/data/datasources/remotes/series_api_service.dart';
import 'package:mqfm_apps/features/share/data/datasources/remotes/share_api_service.dart';
import 'package:mqfm_apps/features/stats/data/datasources/remotes/stats_api_service.dart';
import 'package:mqfm_apps/features/vote/data/datasources/remotes/vote_api_service.dart';

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

  @lazySingleton
  RecommendationRemoteDatasource get recommendationRemoteDatasource =>
      RecommendationRemoteDatasource(dio);

  @lazySingleton
  SeriesRemoteDatasource get seriesRemoteDatasource =>
      SeriesRemoteDatasource(dio);

  @lazySingleton
  EventRemoteDatasource get eventRemoteDatasource =>
      EventRemoteDatasource(dio);

  @lazySingleton
  BookmarkRemoteDatasource get bookmarkRemoteDatasource =>
      BookmarkRemoteDatasource(dio);

  @lazySingleton
  NotificationRemoteDatasource get notificationRemoteDatasource =>
      NotificationRemoteDatasource(dio);

  @lazySingleton
  ProgressRemoteDatasource get progressRemoteDatasource =>
      ProgressRemoteDatasource(dio);

  @lazySingleton
  StatsRemoteDatasource get statsRemoteDatasource =>
      StatsRemoteDatasource(dio);

  @lazySingleton
  ClipRemoteDatasource get clipRemoteDatasource => ClipRemoteDatasource(dio);

  @lazySingleton
  PreferencesRemoteDatasource get preferencesRemoteDatasource =>
      PreferencesRemoteDatasource(dio);

  @lazySingleton
  VoteRemoteDatasource get voteRemoteDatasource => VoteRemoteDatasource(dio);

  @lazySingleton
  ResumeRemoteDatasource get resumeRemoteDatasource =>
      ResumeRemoteDatasource(dio);

  @lazySingleton
  FavoriteArtistRemoteDatasource get favoriteArtistRemoteDatasource =>
      FavoriteArtistRemoteDatasource(dio);

  @lazySingleton
  LocationRemoteDatasource get locationRemoteDatasource =>
      LocationRemoteDatasource(dio);

  @lazySingleton
  DownloadRemoteDatasource get downloadRemoteDatasource =>
      DownloadRemoteDatasource(dio);

  @lazySingleton
  CollabRemoteDatasource get collabRemoteDatasource =>
      CollabRemoteDatasource(dio);

  @lazySingleton
  ShareRemoteDatasource get shareRemoteDatasource =>
      ShareRemoteDatasource(dio);
}
