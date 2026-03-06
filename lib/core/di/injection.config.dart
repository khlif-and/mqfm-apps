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
import 'package:mqfm_apps/features/artikel/data/datasources/artikel_remote_datasource.dart'
    as _i695;
import 'package:mqfm_apps/features/artikel/data/repositories/artikel_repository_impl.dart'
    as _i889;
import 'package:mqfm_apps/features/artikel/domain/repositories/i_artikel_repository.dart'
    as _i923;
import 'package:mqfm_apps/features/artikel/presentation/bloc/artikel_list_bloc/artikel_list_bloc.dart'
    as _i734;
import 'package:mqfm_apps/features/audio/data/datasources/audio_remote_datasource.dart'
    as _i895;
import 'package:mqfm_apps/features/audio/data/repositories/audio_repository_impl.dart'
    as _i254;
import 'package:mqfm_apps/features/audio/domain/repositories/i_audio_repository.dart'
    as _i1006;
import 'package:mqfm_apps/features/audio/presentation/bloc/audio_list_bloc/audio_list_bloc.dart'
    as _i489;
import 'package:mqfm_apps/features/audio/presentation/bloc/player_bloc/player_bloc.dart'
    as _i1053;
import 'package:mqfm_apps/features/auth/data/datasources/auth_remote_datasource.dart'
    as _i39;
import 'package:mqfm_apps/features/auth/data/repositories/auth_repository_impl.dart'
    as _i1044;
import 'package:mqfm_apps/features/auth/domain/repositories/i_auth_repository.dart'
    as _i130;
import 'package:mqfm_apps/features/auth/presentation/bloc/login_bloc/login_bloc.dart'
    as _i944;
import 'package:mqfm_apps/features/auth/presentation/bloc/profile_bloc/profile_bloc.dart'
    as _i678;
import 'package:mqfm_apps/features/auth/presentation/bloc/register_bloc/register_bloc.dart'
    as _i322;
import 'package:mqfm_apps/features/categories/data/datasources/category_remote_datasource.dart'
    as _i430;
import 'package:mqfm_apps/features/categories/data/repositories/category_repository_impl.dart'
    as _i208;
import 'package:mqfm_apps/features/categories/domain/repositories/i_category_repository.dart'
    as _i815;
import 'package:mqfm_apps/features/categories/presentation/bloc/category_bloc/category_bloc.dart'
    as _i228;
import 'package:mqfm_apps/features/like/data/datasources/like_remote_datasource.dart'
    as _i697;
import 'package:mqfm_apps/features/like/data/repositories/like_repository_impl.dart'
    as _i910;
import 'package:mqfm_apps/features/like/domain/repositories/i_like_repository.dart'
    as _i437;
import 'package:mqfm_apps/features/like/presentation/bloc/like_bloc/like_bloc.dart'
    as _i254;
import 'package:mqfm_apps/features/playlist/data/datasources/playlist_remote_datasource.dart'
    as _i1020;
import 'package:mqfm_apps/features/playlist/data/repositories/playlist_repository_impl.dart'
    as _i969;
import 'package:mqfm_apps/features/playlist/domain/repositories/i_playlist_repository.dart'
    as _i209;
import 'package:mqfm_apps/features/playlist/presentation/bloc/playlist_bloc/playlist_bloc.dart'
    as _i2;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i361.Dio>(() => registerModule.dio);
    gh.lazySingleton<_i39.AuthRemoteDatasource>(
      () => registerModule.authRemoteDatasource,
    );
    gh.lazySingleton<_i895.AudioRemoteDatasource>(
      () => registerModule.audioRemoteDatasource,
    );
    gh.lazySingleton<_i430.CategoryRemoteDatasource>(
      () => registerModule.categoryRemoteDatasource,
    );
    gh.lazySingleton<_i697.LikeRemoteDatasource>(
      () => registerModule.likeRemoteDatasource,
    );
    gh.lazySingleton<_i1020.PlaylistRemoteDatasource>(
      () => registerModule.playlistRemoteDatasource,
    );
    gh.lazySingleton<_i695.ArtikelRemoteDatasource>(
      () => registerModule.artikelRemoteDatasource,
    );
    gh.lazySingleton<_i130.IAuthRepository>(
      () => _i1044.AuthRepositoryImpl(
        gh<_i39.AuthRemoteDatasource>(),
        gh<_i361.Dio>(),
      ),
    );
    gh.lazySingleton<_i361.Dio>(
      () => registerModule.dioScraping,
      instanceName: 'dioScraping',
    );
    gh.factory<_i944.LoginBloc>(
      () => _i944.LoginBloc(gh<_i130.IAuthRepository>()),
    );
    gh.factory<_i678.ProfileBloc>(
      () => _i678.ProfileBloc(gh<_i130.IAuthRepository>()),
    );
    gh.factory<_i322.RegisterBloc>(
      () => _i322.RegisterBloc(gh<_i130.IAuthRepository>()),
    );
    gh.lazySingleton<_i815.ICategoryRepository>(
      () => _i208.CategoryRepositoryImpl(gh<_i430.CategoryRemoteDatasource>()),
    );
    gh.lazySingleton<_i923.IArtikelRepository>(
      () => _i889.ArtikelRepositoryImpl(gh<_i695.ArtikelRemoteDatasource>()),
    );
    gh.lazySingleton<_i1006.IAudioRepository>(
      () => _i254.AudioRepositoryImpl(gh<_i895.AudioRemoteDatasource>()),
    );
    gh.factory<_i734.ArtikelListBloc>(
      () => _i734.ArtikelListBloc(gh<_i923.IArtikelRepository>()),
    );
    gh.factory<_i228.CategoryBloc>(
      () => _i228.CategoryBloc(gh<_i815.ICategoryRepository>()),
    );
    gh.lazySingleton<_i437.ILikeRepository>(
      () => _i910.LikeRepositoryImpl(gh<_i697.LikeRemoteDatasource>()),
    );
    gh.lazySingleton<_i209.IPlaylistRepository>(
      () => _i969.PlaylistRepositoryImpl(
        gh<_i1020.PlaylistRemoteDatasource>(),
        gh<_i361.Dio>(),
      ),
    );
    gh.factory<_i489.AudioListBloc>(
      () => _i489.AudioListBloc(gh<_i1006.IAudioRepository>()),
    );
    gh.factory<_i1053.PlayerBloc>(
      () => _i1053.PlayerBloc(gh<_i1006.IAudioRepository>()),
    );
    gh.factory<_i254.LikeBloc>(
      () => _i254.LikeBloc(gh<_i437.ILikeRepository>()),
    );
    gh.factory<_i2.PlaylistBloc>(
      () => _i2.PlaylistBloc(gh<_i209.IPlaylistRepository>()),
    );
    return this;
  }
}

class _$RegisterModule extends _i994.RegisterModule {}
