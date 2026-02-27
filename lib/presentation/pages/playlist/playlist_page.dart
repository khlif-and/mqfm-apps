import 'package:flutter/material.dart';
import 'package:mqfm_apps/utils/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mqfm_apps/presentation/logic/playlist/playlist_logic.dart';
import 'package:mqfm_apps/presentation/molecules/guide_tour/playlist_tour_targets.dart';
import 'package:mqfm_apps/presentation/organisms/guide_tour/guide_tour_manager.dart';
import 'package:mqfm_apps/presentation/organisms/navigation/bottom_bar.dart';
import 'package:mqfm_apps/presentation/organisms/playlist/library_filter_list.dart';
import 'package:mqfm_apps/presentation/organisms/playlist/library_header.dart';
import 'package:mqfm_apps/presentation/organisms/playlist/library_playlist_list.dart';
import 'package:mqfm_apps/presentation/organisms/playlist/library_static_items.dart';

class PlaylistPage extends StatefulWidget {
  const PlaylistPage({super.key});

  @override
  State<PlaylistPage> createState() => _PlaylistPageState();
}

class _PlaylistPageState extends State<PlaylistPage> {
  final PlaylistLogic logic = PlaylistLogic();
  final GlobalKey _headerKey = GlobalKey();
  final GlobalKey _searchKey = GlobalKey();
  final GlobalKey _staticItemsKey = GlobalKey();
  final GlobalKey _playlistListKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    logic.fetchPlaylists();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final targets = buildPlaylistTargets(
        headerKey: _headerKey,
        searchKey: _searchKey,
        staticItemsKey: _staticItemsKey,
        playlistListKey: _playlistListKey,
      );
      GuideTourManager.showTourIfNeeded(
        context: context,
        targets: targets,
        tourKey: 'playlist_tour_shown',
      );
    });
  }

  @override
  void dispose() {
    logic.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: logic.fetchPlaylists,
          color: AppColors.primaryClassic,
          backgroundColor: AppColors.surfaceHeader,
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  key: _headerKey,
                  child: LibraryHeader(
                    onSearchChanged: logic.onSearchChanged,
                    searchKey: _searchKey,
                  ),
                ),
                SizedBox(height: 24.h),
                Container(
                  key: _staticItemsKey,
                  child: const LibraryStaticItems(),
                ),
                Container(
                  key: _playlistListKey,
                  child: ListenableBuilder(
                    listenable: logic,
                    builder: (context, child) {
                      return LibraryPlaylistList(
                        isLoading: logic.isLoading,
                        errorMessage: logic.errorMessage,
                        playlists: logic.filteredPlaylists,
                      );
                    },
                  ),
                ),
                SizedBox(height: 80.h),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
