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
import 'package:mqfm_apps/features/categories/applications/category_bloc/category_bloc.dart'
    as _i88;
import 'package:mqfm_apps/features/categories/data/datasources/remotes/category_remote_api_service.dart'
    as _i876;
import 'package:mqfm_apps/features/categories/data/repositories/category_repository.dart'
    as _i639;
import 'package:mqfm_apps/features/categories/domain/interfaces/i_category_repository.dart'
    as _i132;
import 'package:mqfm_apps/features/like/applications/like_bloc/like_bloc.dart'
    as _i782;
import 'package:mqfm_apps/features/like/data/datasources/remotes/like_api_service.dart'
    as _i66;
import 'package:mqfm_apps/features/like/data/repositories/like_repository.dart'
    as _i759;
import 'package:mqfm_apps/features/like/domain/interfaces/i_like_repository.dart'
    as _i491;
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
    gh.lazySingleton<_i361.Dio>(
      () => registerModule.dioScraping,
      instanceName: 'dioScraping',
    );
    gh.lazySingleton<_i135.IAuthRepository>(
      () => _i817.AuthRepositoryImpl(
        gh<_i313.AuthRemoteDatasource>(),
        gh<_i361.Dio>(),
      ),
    );
    gh.lazySingleton<_i132.ICategoryRepository>(
      () => _i639.CategoryRepositoryImpl(gh<_i876.CategoryRemoteDatasource>()),
    );
    gh.lazySingleton<_i370.IPlaylistRepository>(
      () => _i797.PlaylistRepositoryImpl(
        gh<_i647.PlaylistRemoteDatasource>(),
        gh<_i361.Dio>(),
      ),
    );
    gh.lazySingleton<_i491.ILikeRepository>(
      () => _i759.LikeRepositoryImpl(gh<_i66.LikeRemoteDatasource>()),
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
    gh.lazySingleton<_i369.IArtikelRepository>(
      () => _i37.ArtikelRepositoryImpl(gh<_i237.ArtikelRemoteDatasource>()),
    );
    gh.factory<_i317.LoginBloc>(
      () => _i317.LoginBloc(gh<_i135.IAuthRepository>()),
    );
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
    gh.factory<_i782.LikeBloc>(
      () => _i782.LikeBloc(gh<_i491.ILikeRepository>()),
    );
    gh.factory<_i280.ArtikelListBloc>(
      () => _i280.ArtikelListBloc(gh<_i369.IArtikelRepository>()),
    );
    return this;
  }
}

class _$RegisterModule extends _i994.RegisterModule {}
