import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:mqfm_apps/core/network/dio_client.dart';
import 'package:mqfm_apps/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:mqfm_apps/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:mqfm_apps/features/auth/domain/repositories/auth_repository.dart';
import 'package:mqfm_apps/features/auth/presentation/bloc/login_bloc/login_bloc.dart';
import 'package:mqfm_apps/features/auth/presentation/bloc/register_bloc/register_bloc.dart';
import 'package:mqfm_apps/features/auth/presentation/bloc/profile_bloc/profile_bloc.dart';
import 'package:mqfm_apps/features/audio/data/datasources/audio_remote_datasource.dart';
import 'package:mqfm_apps/features/audio/data/repositories/audio_repository_impl.dart';
import 'package:mqfm_apps/features/audio/domain/repositories/audio_repository.dart';
import 'package:mqfm_apps/features/audio/presentation/bloc/audio_list_bloc/audio_list_bloc.dart';
import 'package:mqfm_apps/features/audio/presentation/bloc/player_bloc/player_bloc.dart';
import 'package:mqfm_apps/features/categories/data/datasources/category_remote_datasource.dart';
import 'package:mqfm_apps/features/categories/data/repositories/category_repository_impl.dart';
import 'package:mqfm_apps/features/categories/domain/repositories/category_repository.dart';
import 'package:mqfm_apps/features/categories/presentation/bloc/category_bloc/category_bloc.dart';
import 'package:mqfm_apps/features/like/data/datasources/like_remote_datasource.dart';
import 'package:mqfm_apps/features/like/data/repositories/like_repository_impl.dart';
import 'package:mqfm_apps/features/like/domain/repositories/like_repository.dart';
import 'package:mqfm_apps/features/like/presentation/bloc/like_bloc/like_bloc.dart';
import 'package:mqfm_apps/features/playlist/data/datasources/playlist_remote_datasource.dart';
import 'package:mqfm_apps/features/playlist/data/repositories/playlist_repository_impl.dart';
import 'package:mqfm_apps/features/playlist/domain/repositories/playlist_repository.dart';
import 'package:mqfm_apps/features/playlist/presentation/bloc/playlist_bloc/playlist_bloc.dart';

final getIt = GetIt.instance;

void setupDependencies() {
  final dio = DioClient.instance;

  _registerDatasources(dio);
  _registerRepositories(dio);
  _registerBlocs();
}

void _registerDatasources(Dio dio) {
  getIt.registerLazySingleton(() => AuthRemoteDatasource(dio));
  getIt.registerLazySingleton(() => AudioRemoteDatasource(dio));
  getIt.registerLazySingleton(() => CategoryRemoteDatasource(dio));
  getIt.registerLazySingleton(() => LikeRemoteDatasource(dio));
  getIt.registerLazySingleton(() => PlaylistRemoteDatasource(dio));
}

void _registerRepositories(Dio dio) {
  getIt.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(getIt<AuthRemoteDatasource>(), dio),
  );
  getIt.registerLazySingleton<AudioRepository>(
    () => AudioRepositoryImpl(getIt<AudioRemoteDatasource>()),
  );
  getIt.registerLazySingleton<CategoryRepository>(
    () => CategoryRepositoryImpl(getIt<CategoryRemoteDatasource>()),
  );
  getIt.registerLazySingleton<LikeRepository>(
    () => LikeRepositoryImpl(getIt<LikeRemoteDatasource>()),
  );
  getIt.registerLazySingleton<PlaylistRepository>(
    () => PlaylistRepositoryImpl(getIt<PlaylistRemoteDatasource>(), dio),
  );
}

void _registerBlocs() {
  getIt.registerFactory(() => LoginBloc(getIt<AuthRepository>()));
  getIt.registerFactory(() => RegisterBloc(getIt<AuthRepository>()));
  getIt.registerFactory(() => ProfileBloc(getIt<AuthRepository>()));
  getIt.registerFactory(() => AudioListBloc(getIt<AudioRepository>()));
  getIt.registerFactory(() => PlayerBloc(getIt<AudioRepository>()));
  getIt.registerFactory(() => CategoryBloc(getIt<CategoryRepository>()));
  getIt.registerFactory(() => LikeBloc(getIt<LikeRepository>()));
  getIt.registerFactory(() => PlaylistBloc(getIt<PlaylistRepository>()));
}
