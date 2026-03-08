import 'package:mqfm_apps/core/routes/app_path_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mqfm_apps/core/di/injection.dart';
import 'package:mqfm_apps/core/manager/playlist_change_notifier.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/features/auth/domain/entities/user.dart';
import 'package:mqfm_apps/features/playlist/domain/entities/playlist.dart';
import 'package:mqfm_apps/features/playlist/applications/playlist_bloc/playlist_bloc.dart';
import 'package:mqfm_apps/features/playlist/applications/playlist_bloc/playlist_event.dart';
import 'package:mqfm_apps/features/playlist/applications/playlist_bloc/playlist_state.dart';
import 'package:mqfm_apps/core/manager/user_manager.dart';
import 'package:mqfm_apps/presentation/logic/profile/profile_pic_logic.dart';
import 'package:mqfm_apps/presentation/logic/guide_tour/playlist_tour_targets.dart';
import 'package:mqfm_apps/presentation/logic/guide_tour/guide_tour_manager.dart';
import 'package:mqfm_apps/presentation/organisms/playlist/library_header.dart';
import 'package:mqfm_apps/presentation/organisms/playlist/library_playlist_list.dart';
import 'package:mqfm_apps/presentation/organisms/playlist/library_static_items.dart';

class PlaylistPage extends StatefulWidget {
  const PlaylistPage({super.key});

  @override
  State<PlaylistPage> createState() => PlaylistPageState();
}

class PlaylistPageState extends State<PlaylistPage> {
  String _searchQuery = '';
  final GlobalKey _headerKey = GlobalKey();
  final GlobalKey _searchKey = GlobalKey();
  final GlobalKey _staticItemsKey = GlobalKey();
  final GlobalKey _playlistListKey = GlobalKey();
  late final PlaylistBloc _playlistBloc;

  @override
  void initState() {
    super.initState();
    _playlistBloc = getIt<PlaylistBloc>()..add(const PlaylistEvent.fetch());
    PlaylistChangeNotifier.changeCounter.addListener(_onPlaylistChanged);
  }

  @override
  void dispose() {
    PlaylistChangeNotifier.changeCounter.removeListener(_onPlaylistChanged);
    _playlistBloc.close();
    super.dispose();
  }

  void _onPlaylistChanged() {
    _playlistBloc.add(const PlaylistEvent.fetch());
  }

  void triggerTour() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      final targets = buildPlaylistTargets(
        headerKey: _headerKey,
        searchKey: _searchKey,
        staticItemsKey: _staticItemsKey,
        playlistListKey: _playlistListKey,
      );
      GuideTourManager.showTourIfNeeded(context: context, targets: targets, tourKey: 'playlist_tour_shown');
    });
  }

  List<PlaylistEntity> _filter(List<PlaylistEntity> playlists) {
    if (_searchQuery.isEmpty) return playlists;
    return playlists.where((p) => p.name.toLowerCase().contains(_searchQuery)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _playlistBloc,
      child: BlocBuilder<PlaylistBloc, PlaylistState>(
        builder: (context, state) {
          final isLoading = state is PlaylistLoading;
          final errorMessage = state.maybeWhen(error: (m) => m, orElse: () => null);
          final playlists = state.maybeWhen(loaded: (p) => _filter(p), orElse: () => <PlaylistEntity>[]);

          return SafeArea(
            child: RefreshIndicator(
              onRefresh: () async => _playlistBloc.add(const PlaylistEvent.fetch()),
              color: AppColors.primaryClassic,
              backgroundColor: AppColors.surfaceHeader,
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: AppDims.w16, vertical: AppDims.h16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      key: _headerKey,
                      child: ValueListenableBuilder<UserEntity?>(
                        valueListenable: UserManager.instance.currentUserNotifier,
                        builder: (context, userData, _) {
                          return LibraryHeader(
                            displayUsername: ProfilePicLogic.getDisplayUsername(userData),
                            onSearchChanged: (q) => setState(() => _searchQuery = q.toLowerCase()),
                            searchKey: _searchKey,
                            userData: userData,
                            isUserLoading: UserManager.instance.isLoadingNotifier.value,
                            onAvatarTap: () => Scaffold.of(context).openDrawer(),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: AppDims.h24),
                    Container(key: _staticItemsKey, child: LibraryStaticItems(
                      onFavoritesTap: () => context.push(AppPathRoutes.favorites),
                    )),
                    Container(
                      key: _playlistListKey,
                      child: LibraryPlaylistList(
                        isLoading: isLoading,
                        errorMessage: errorMessage,
                        playlists: playlists,
                        onPlaylistTap: (playlistId) => context.push(AppPathRoutes.playlistDetailWithId(playlistId.toString())),
                      ),
                    ),
                    SizedBox(height: AppDims.h80),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
