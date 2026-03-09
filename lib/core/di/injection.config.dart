// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:mqfm_apps/core/di/register_module.dart' as _i994;
import 'package:mqfm_apps/features/artikel/applications/artikel_bloc/artikel_bloc.dart'
    as _i280;
import 'package:mqfm_apps/features/artikel/data/datasources/remotes/artikel_api_service.dart'
    as _i237;
import 'package:mqfm_apps/features/artikel/data/repositories/artikel_repository.dart'
    as _i37;
import 'package:mqfm_apps/features/artikel/domain/interfaces/i_artikel_repository.dart'
    as _i369;
import 'package:mqfm_apps/features/audio/applications/audio_bloc/audio_list_bloc.dart'
    as _i435;
import 'package:mqfm_apps/features/audio/applications/player_bloc/player_bloc.dart'
    as _i1048;
import 'package:mqfm_apps/features/audio/data/datasources/remotes/audio_api_service.dart'
    as _i918;
import 'package:mqfm_apps/features/audio/data/repositories/audio_repository.dart'
    as _i1040;
import 'package:mqfm_apps/features/audio/domain/interfaces/i_audio_repository.dart'
    as _i184;
import 'package:mqfm_apps/features/auth/applications/login_bloc/login_bloc.dart'
    as _i317;
import 'package:mqfm_apps/features/auth/applications/otp_bloc/otp_bloc.dart'
    as _i713;
import 'package:mqfm_apps/features/auth/applications/profile_bloc/profile_bloc.dart'
    as _i179;
import 'package:mqfm_apps/features/auth/applications/register_bloc/register_bloc.dart'
    as _i447;
import 'package:mqfm_apps/features/auth/data/datasources/remotes/auth_api_service.dart'
    as _i313;
import 'package:mqfm_apps/features/auth/data/repositories/user_repository.dart'
    as _i817;
import 'package:mqfm_apps/features/auth/domain/interfaces/i_user_repository.dart'
    as _i135;
import 'package:mqfm_apps/features/bookmark/applications/bookmark_bloc/bookmark_bloc.dart'
    as _i24;
import 'package:mqfm_apps/features/bookmark/data/datasources/remotes/bookmark_api_service.dart'
    as _i1052;
import 'package:mqfm_apps/features/bookmark/data/repositories/bookmark_repository.dart'
    as _i627;
import 'package:mqfm_apps/features/bookmark/domain/interfaces/i_bookmark_repository.dart'
    as _i36;
import 'package:mqfm_apps/features/categories/applications/category_bloc/category_bloc.dart'
    as _i88;
import 'package:mqfm_apps/features/categories/data/datasources/remotes/category_remote_api_service.dart'
    as _i876;
import 'package:mqfm_apps/features/categories/data/repositories/category_repository.dart'
    as _i639;
import 'package:mqfm_apps/features/categories/domain/interfaces/i_category_repository.dart'
    as _i132;
import 'package:mqfm_apps/features/clip/applications/clip_bloc/clip_bloc.dart'
    as _i553;
import 'package:mqfm_apps/features/clip/data/datasources/remotes/clip_api_service.dart'
    as _i20;
import 'package:mqfm_apps/features/clip/data/repositories/clip_repository.dart'
    as _i930;
import 'package:mqfm_apps/features/clip/domain/interfaces/i_clip_repository.dart'
    as _i924;
import 'package:mqfm_apps/features/collab/applications/collab_bloc/collab_bloc.dart'
    as _i775;
import 'package:mqfm_apps/features/collab/data/datasources/remotes/collab_api_service.dart'
    as _i256;
import 'package:mqfm_apps/features/collab/data/repositories/collab_repository.dart'
    as _i381;
import 'package:mqfm_apps/features/collab/domain/interfaces/i_collab_repository.dart'
    as _i665;
import 'package:mqfm_apps/features/download/applications/download_bloc/download_bloc.dart'
    as _i365;
import 'package:mqfm_apps/features/download/data/datasources/remotes/download_api_service.dart'
    as _i839;
import 'package:mqfm_apps/features/download/data/repositories/download_repository.dart'
    as _i332;
import 'package:mqfm_apps/features/download/domain/interfaces/i_download_repository.dart'
    as _i53;
import 'package:mqfm_apps/features/event/applications/event_bloc/event_bloc.dart'
    as _i511;
import 'package:mqfm_apps/features/event/data/datasources/remotes/event_api_service.dart'
    as _i921;
import 'package:mqfm_apps/features/event/data/repositories/event_repository.dart'
    as _i226;
import 'package:mqfm_apps/features/event/domain/interfaces/i_event_repository.dart'
    as _i764;
import 'package:mqfm_apps/features/favorite_artist/applications/favorite_artist_bloc/favorite_artist_bloc.dart'
    as _i86;
import 'package:mqfm_apps/features/favorite_artist/data/datasources/remotes/favorite_artist_api_service.dart'
    as _i540;
import 'package:mqfm_apps/features/favorite_artist/data/repositories/favorite_artist_repository.dart'
    as _i563;
import 'package:mqfm_apps/features/favorite_artist/domain/interfaces/i_favorite_artist_repository.dart'
    as _i314;
import 'package:mqfm_apps/features/like/applications/like_bloc/like_bloc.dart'
    as _i782;
import 'package:mqfm_apps/features/like/data/datasources/remotes/like_api_service.dart'
    as _i66;
import 'package:mqfm_apps/features/like/data/repositories/like_repository.dart'
    as _i759;
import 'package:mqfm_apps/features/like/domain/interfaces/i_like_repository.dart'
    as _i491;
import 'package:mqfm_apps/features/location/applications/location_bloc/location_bloc.dart'
    as _i450;
import 'package:mqfm_apps/features/location/data/datasources/remotes/location_api_service.dart'
    as _i586;
import 'package:mqfm_apps/features/location/data/repositories/location_repository.dart'
    as _i386;
import 'package:mqfm_apps/features/location/domain/interfaces/i_location_repository.dart'
    as _i633;
import 'package:mqfm_apps/features/notification/applications/notification_bloc/notification_bloc.dart'
    as _i87;
import 'package:mqfm_apps/features/notification/data/datasources/remotes/notification_api_service.dart'
    as _i1004;
import 'package:mqfm_apps/features/notification/data/repositories/notification_repository.dart'
    as _i959;
import 'package:mqfm_apps/features/notification/domain/interfaces/i_notification_repository.dart'
    as _i908;
import 'package:mqfm_apps/features/playlist/applications/add_playlist_bloc/add_playlist_bloc.dart'
    as _i779;
import 'package:mqfm_apps/features/playlist/applications/create_playlist_bloc/create_playlist_bloc.dart'
    as _i22;
import 'package:mqfm_apps/features/playlist/applications/playlist_bloc/playlist_bloc.dart'
    as _i472;
import 'package:mqfm_apps/features/playlist/data/datasources/remotes/playlist_api_service.dart'
    as _i647;
import 'package:mqfm_apps/features/playlist/data/repositories/playlist_repository.dart'
    as _i797;
import 'package:mqfm_apps/features/playlist/domain/interfaces/i_playlist_repository.dart'
    as _i370;
import 'package:mqfm_apps/features/preferences/applications/preferences_bloc/preferences_bloc.dart'
    as _i985;
import 'package:mqfm_apps/features/preferences/data/datasources/remotes/preferences_api_service.dart'
    as _i252;
import 'package:mqfm_apps/features/preferences/data/repositories/preferences_repository.dart'
    as _i197;
import 'package:mqfm_apps/features/preferences/domain/interfaces/i_preferences_repository.dart'
    as _i994;
import 'package:mqfm_apps/features/progress/applications/progress_bloc/progress_bloc.dart'
    as _i474;
import 'package:mqfm_apps/features/progress/data/datasources/remotes/progress_api_service.dart'
    as _i825;
import 'package:mqfm_apps/features/progress/data/repositories/progress_repository.dart'
    as _i254;
import 'package:mqfm_apps/features/progress/domain/interfaces/i_progress_repository.dart'
    as _i394;
import 'package:mqfm_apps/features/recommendation/applications/onboarding_pick_bloc/onboarding_pick_bloc.dart'
    as _i772;
import 'package:mqfm_apps/features/recommendation/applications/recommendation_bloc/recommendation_bloc.dart'
    as _i1066;
import 'package:mqfm_apps/features/recommendation/data/datasources/remotes/recommendation_api_service.dart'
    as _i237;
import 'package:mqfm_apps/features/recommendation/data/repositories/recommendation_repository.dart'
    as _i482;
import 'package:mqfm_apps/features/recommendation/domain/interfaces/i_recommendation_repository.dart'
    as _i840;
import 'package:mqfm_apps/features/resume/applications/resume_bloc/resume_bloc.dart'
    as _i367;
import 'package:mqfm_apps/features/resume/data/datasources/remotes/resume_api_service.dart'
    as _i445;
import 'package:mqfm_apps/features/resume/data/repositories/resume_repository.dart'
    as _i916;
import 'package:mqfm_apps/features/resume/domain/interfaces/i_resume_repository.dart'
    as _i785;
import 'package:mqfm_apps/features/series/applications/series_bloc/series_bloc.dart'
    as _i165;
import 'package:mqfm_apps/features/series/data/datasources/remotes/series_api_service.dart'
    as _i439;
import 'package:mqfm_apps/features/series/data/repositories/series_repository.dart'
    as _i484;
import 'package:mqfm_apps/features/series/domain/interfaces/i_series_repository.dart'
    as _i724;
import 'package:mqfm_apps/features/share/applications/share_bloc/share_bloc.dart'
    as _i178;
import 'package:mqfm_apps/features/share/data/datasources/remotes/share_api_service.dart'
    as _i576;
import 'package:mqfm_apps/features/share/data/repositories/share_repository.dart'
    as _i949;
import 'package:mqfm_apps/features/share/domain/interfaces/i_share_repository.dart'
    as _i597;
import 'package:mqfm_apps/features/stats/applications/stats_bloc/stats_bloc.dart'
    as _i969;
import 'package:mqfm_apps/features/stats/data/datasources/remotes/stats_api_service.dart'
    as _i722;
import 'package:mqfm_apps/features/stats/data/repositories/stats_repository.dart'
    as _i416;
import 'package:mqfm_apps/features/stats/domain/interfaces/i_stats_repository.dart'
    as _i838;
import 'package:mqfm_apps/features/vote/applications/vote_bloc/vote_bloc.dart'
    as _i846;
import 'package:mqfm_apps/features/vote/data/datasources/remotes/vote_api_service.dart'
    as _i698;
import 'package:mqfm_apps/features/vote/data/repositories/vote_repository.dart'
    as _i957;
import 'package:mqfm_apps/features/vote/domain/interfaces/i_vote_repository.dart'
    as _i901;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i361.Dio>(() => registerModule.dio);
    gh.lazySingleton<_i313.AuthRemoteDatasource>(
      () => registerModule.authRemoteDatasource,
    );
    gh.lazySingleton<_i918.AudioRemoteDatasource>(
      () => registerModule.audioRemoteDatasource,
    );
    gh.lazySingleton<_i876.CategoryRemoteDatasource>(
      () => registerModule.categoryRemoteDatasource,
    );
    gh.lazySingleton<_i66.LikeRemoteDatasource>(
      () => registerModule.likeRemoteDatasource,
    );
    gh.lazySingleton<_i647.PlaylistRemoteDatasource>(
      () => registerModule.playlistRemoteDatasource,
    );
    gh.lazySingleton<_i237.ArtikelRemoteDatasource>(
      () => registerModule.artikelRemoteDatasource,
    );
    gh.lazySingleton<_i237.RecommendationRemoteDatasource>(
      () => registerModule.recommendationRemoteDatasource,
    );
    gh.lazySingleton<_i439.SeriesRemoteDatasource>(
      () => registerModule.seriesRemoteDatasource,
    );
    gh.lazySingleton<_i921.EventRemoteDatasource>(
      () => registerModule.eventRemoteDatasource,
    );
    gh.lazySingleton<_i1052.BookmarkRemoteDatasource>(
      () => registerModule.bookmarkRemoteDatasource,
    );
    gh.lazySingleton<_i1004.NotificationRemoteDatasource>(
      () => registerModule.notificationRemoteDatasource,
    );
    gh.lazySingleton<_i825.ProgressRemoteDatasource>(
      () => registerModule.progressRemoteDatasource,
    );
    gh.lazySingleton<_i722.StatsRemoteDatasource>(
      () => registerModule.statsRemoteDatasource,
    );
    gh.lazySingleton<_i20.ClipRemoteDatasource>(
      () => registerModule.clipRemoteDatasource,
    );
    gh.lazySingleton<_i252.PreferencesRemoteDatasource>(
      () => registerModule.preferencesRemoteDatasource,
    );
    gh.lazySingleton<_i698.VoteRemoteDatasource>(
      () => registerModule.voteRemoteDatasource,
    );
    gh.lazySingleton<_i445.ResumeRemoteDatasource>(
      () => registerModule.resumeRemoteDatasource,
    );
    gh.lazySingleton<_i540.FavoriteArtistRemoteDatasource>(
      () => registerModule.favoriteArtistRemoteDatasource,
    );
    gh.lazySingleton<_i586.LocationRemoteDatasource>(
      () => registerModule.locationRemoteDatasource,
    );
    gh.lazySingleton<_i839.DownloadRemoteDatasource>(
      () => registerModule.downloadRemoteDatasource,
    );
    gh.lazySingleton<_i256.CollabRemoteDatasource>(
      () => registerModule.collabRemoteDatasource,
    );
    gh.lazySingleton<_i576.ShareRemoteDatasource>(
      () => registerModule.shareRemoteDatasource,
    );
    gh.lazySingleton<_i724.ISeriesRepository>(
      () => _i484.SeriesRepositoryImpl(gh<_i439.SeriesRemoteDatasource>()),
    );
    gh.lazySingleton<_i36.IBookmarkRepository>(
      () => _i627.BookmarkRepositoryImpl(gh<_i1052.BookmarkRemoteDatasource>()),
    );
    gh.lazySingleton<_i908.INotificationRepository>(
      () => _i959.NotificationRepositoryImpl(
        gh<_i1004.NotificationRemoteDatasource>(),
      ),
    );
    gh.lazySingleton<_i901.IVoteRepository>(
      () => _i957.VoteRepositoryImpl(gh<_i698.VoteRemoteDatasource>()),
    );
    gh.lazySingleton<_i394.IProgressRepository>(
      () => _i254.ProgressRepositoryImpl(gh<_i825.ProgressRemoteDatasource>()),
    );
    gh.lazySingleton<_i361.Dio>(
      () => registerModule.dioScraping,
      instanceName: 'dioScraping',
    );
    gh.lazySingleton<_i840.IRecommendationRepository>(
      () => _i482.RecommendationRepositoryImpl(
        gh<_i237.RecommendationRemoteDatasource>(),
      ),
    );
    gh.lazySingleton<_i764.IEventRepository>(
      () => _i226.EventRepositoryImpl(gh<_i921.EventRemoteDatasource>()),
    );
    gh.lazySingleton<_i665.ICollabRepository>(
      () => _i381.CollabRepositoryImpl(gh<_i256.CollabRemoteDatasource>()),
    );
    gh.factory<_i775.CollabBloc>(
      () => _i775.CollabBloc(gh<_i665.ICollabRepository>()),
    );
    gh.lazySingleton<_i53.IDownloadRepository>(
      () => _i332.DownloadRepositoryImpl(gh<_i839.DownloadRemoteDatasource>()),
    );
    gh.lazySingleton<_i633.ILocationRepository>(
      () => _i386.LocationRepositoryImpl(gh<_i586.LocationRemoteDatasource>()),
    );
    gh.factory<_i772.OnboardingPickBloc>(
      () => _i772.OnboardingPickBloc(gh<_i840.IRecommendationRepository>()),
    );
    gh.factory<_i1066.RecommendationBloc>(
      () => _i1066.RecommendationBloc(gh<_i840.IRecommendationRepository>()),
    );
    gh.lazySingleton<_i597.IShareRepository>(
      () => _i949.ShareRepositoryImpl(gh<_i576.ShareRemoteDatasource>()),
    );
    gh.factory<_i846.VoteBloc>(
      () => _i846.VoteBloc(gh<_i901.IVoteRepository>()),
    );
    gh.lazySingleton<_i785.IResumeRepository>(
      () => _i916.ResumeRepositoryImpl(gh<_i445.ResumeRemoteDatasource>()),
    );
    gh.lazySingleton<_i135.IAuthRepository>(
      () => _i817.AuthRepositoryImpl(
        gh<_i313.AuthRemoteDatasource>(),
        gh<_i361.Dio>(),
      ),
    );
    gh.lazySingleton<_i491.ILikeRepository>(
      () => _i759.LikeRepositoryImpl(
        gh<_i66.LikeRemoteDatasource>(),
        gh<_i361.Dio>(),
      ),
    );
    gh.lazySingleton<_i994.IPreferencesRepository>(
      () => _i197.PreferencesRepositoryImpl(
        gh<_i252.PreferencesRemoteDatasource>(),
      ),
    );
    gh.factory<_i474.ProgressBloc>(
      () => _i474.ProgressBloc(gh<_i394.IProgressRepository>()),
    );
    gh.factory<_i782.LikeBloc>(
      () => _i782.LikeBloc(gh<_i491.ILikeRepository>()),
    );
    gh.lazySingleton<_i132.ICategoryRepository>(
      () => _i639.CategoryRepositoryImpl(gh<_i876.CategoryRemoteDatasource>()),
    );
    gh.factory<_i365.DownloadBloc>(
      () => _i365.DownloadBloc(gh<_i53.IDownloadRepository>()),
    );
    gh.lazySingleton<_i370.IPlaylistRepository>(
      () => _i797.PlaylistRepositoryImpl(
        gh<_i647.PlaylistRemoteDatasource>(),
        gh<_i361.Dio>(),
      ),
    );
    gh.lazySingleton<_i314.IFavoriteArtistRepository>(
      () => _i563.FavoriteArtistRepositoryImpl(
        gh<_i540.FavoriteArtistRemoteDatasource>(),
      ),
    );
    gh.lazySingleton<_i184.IAudioRepository>(
      () => _i1040.AudioRepositoryImpl(gh<_i918.AudioRemoteDatasource>()),
    );
    gh.factory<_i779.PlaylistBloc>(
      () => _i779.PlaylistBloc(gh<_i370.IPlaylistRepository>()),
    );
    gh.factory<_i22.PlaylistBloc>(
      () => _i22.PlaylistBloc(gh<_i370.IPlaylistRepository>()),
    );
    gh.factory<_i472.PlaylistBloc>(
      () => _i472.PlaylistBloc(gh<_i370.IPlaylistRepository>()),
    );
    gh.factory<_i165.SeriesBloc>(
      () => _i165.SeriesBloc(gh<_i724.ISeriesRepository>()),
    );
    gh.lazySingleton<_i838.IStatsRepository>(
      () => _i416.StatsRepositoryImpl(gh<_i722.StatsRemoteDatasource>()),
    );
    gh.factory<_i86.FavoriteArtistBloc>(
      () => _i86.FavoriteArtistBloc(gh<_i314.IFavoriteArtistRepository>()),
    );
    gh.factory<_i87.NotificationBloc>(
      () => _i87.NotificationBloc(gh<_i908.INotificationRepository>()),
    );
    gh.factory<_i24.BookmarkBloc>(
      () => _i24.BookmarkBloc(gh<_i36.IBookmarkRepository>()),
    );
    gh.lazySingleton<_i924.IClipRepository>(
      () => _i930.ClipRepositoryImpl(gh<_i20.ClipRemoteDatasource>()),
    );
    gh.lazySingleton<_i369.IArtikelRepository>(
      () => _i37.ArtikelRepositoryImpl(gh<_i237.ArtikelRemoteDatasource>()),
    );
    gh.factory<_i969.StatsBloc>(
      () => _i969.StatsBloc(gh<_i838.IStatsRepository>()),
    );
    gh.factory<_i367.ResumeBloc>(
      () => _i367.ResumeBloc(gh<_i785.IResumeRepository>()),
    );
    gh.factory<_i511.EventBloc>(
      () => _i511.EventBloc(gh<_i764.IEventRepository>()),
    );
    gh.factory<_i317.LoginBloc>(
      () => _i317.LoginBloc(gh<_i135.IAuthRepository>()),
    );
    gh.factory<_i713.OtpBloc>(() => _i713.OtpBloc(gh<_i135.IAuthRepository>()));
    gh.factory<_i179.ProfileBloc>(
      () => _i179.ProfileBloc(gh<_i135.IAuthRepository>()),
    );
    gh.factory<_i447.RegisterBloc>(
      () => _i447.RegisterBloc(gh<_i135.IAuthRepository>()),
    );
    gh.factory<_i435.AudioListBloc>(
      () => _i435.AudioListBloc(gh<_i184.IAudioRepository>()),
    );
    gh.factory<_i1048.PlayerBloc>(
      () => _i1048.PlayerBloc(gh<_i184.IAudioRepository>()),
    );
    gh.factory<_i88.CategoryBloc>(
      () => _i88.CategoryBloc(gh<_i132.ICategoryRepository>()),
    );
    gh.factory<_i450.LocationBloc>(
      () => _i450.LocationBloc(gh<_i633.ILocationRepository>()),
    );
    gh.factory<_i178.ShareBloc>(
      () => _i178.ShareBloc(gh<_i597.IShareRepository>()),
    );
    gh.factory<_i553.ClipBloc>(
      () => _i553.ClipBloc(gh<_i924.IClipRepository>()),
    );
    gh.factory<_i985.PreferencesBloc>(
      () => _i985.PreferencesBloc(gh<_i994.IPreferencesRepository>()),
    );
    gh.factory<_i280.ArtikelListBloc>(
      () => _i280.ArtikelListBloc(gh<_i369.IArtikelRepository>()),
    );
    return this;
  }
}

class _$RegisterModule extends _i994.RegisterModule {}
