import 'package:mqfm_apps/core/routes/app_path_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mqfm_apps/core/di/injection.dart';
import 'package:mqfm_apps/core/manager/playlist_change_notifier.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_strings.dart';
import 'package:mqfm_apps/features/playlist/applications/playlist_bloc/playlist_bloc.dart';
import 'package:mqfm_apps/features/playlist/applications/playlist_bloc/playlist_event.dart';
import 'package:mqfm_apps/features/playlist/applications/playlist_bloc/playlist_state.dart';
import 'package:mqfm_apps/presentation/molecules/playlist/playlist_detail_header.dart';
import 'package:mqfm_apps/presentation/organisms/playlist/playlist_track_list.dart';

class PlaylistDetailPage extends StatefulWidget {
  final String playlistId;
  const PlaylistDetailPage({super.key, required this.playlistId});

  @override
  State<PlaylistDetailPage> createState() => _PlaylistDetailPageState();
}

class _PlaylistDetailPageState extends State<PlaylistDetailPage> {
  late final PlaylistBloc _bloc;
  late final int _id;

  @override
  void initState() {
    super.initState();
    _id = int.tryParse(widget.playlistId) ?? 0;
    _bloc = getIt<PlaylistBloc>()..add(PlaylistEvent.fetchDetail(id: _id));
    PlaylistChangeNotifier.changeCounter.addListener(_onPlaylistChanged);
  }

  @override
  void dispose() {
    PlaylistChangeNotifier.changeCounter.removeListener(_onPlaylistChanged);
    _bloc.close();
    super.dispose();
  }

  void _onPlaylistChanged() {
    _bloc.add(PlaylistEvent.fetchDetail(id: _id));
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _bloc,
      child: BlocBuilder<PlaylistBloc, PlaylistState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: AppColors.background,
            appBar: AppBar(
              backgroundColor: AppColors.transparent,
              elevation: 0,
              leading: IconButton(
                icon: Icon(Icons.arrow_back, color: AppColors.textWhite),
                onPressed: () => context.pop(),
              ),
            ),
            body: state.when(
              initial: () => const Center(child: CircularProgressIndicator(color: AppColors.primaryClassic)),
              loading: () => const Center(child: CircularProgressIndicator(color: AppColors.primaryClassic)),
              loaded: (_) => const SizedBox.shrink(),
              detailLoaded: (playlist) => RefreshIndicator(
                onRefresh: () async => _bloc.add(PlaylistEvent.fetchDetail(id: _id)),
                color: AppColors.primaryClassic,
                backgroundColor: AppColors.surfaceHeader,
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.all(AppDims.w16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      PlaylistDetailHeader(playlist: playlist),
                      SizedBox(height: AppDims.h24),
                      PlaylistTrackList(
                        audios: playlist.audios,
                        onAudioTap: (audioId) => context.push(AppPathRoutes.playerWithId(audioId.toString())),
                      ),
                    ],
                  ),
                ),
              ),
              created: (_) => const SizedBox.shrink(),
              audioAdded: () => const SizedBox.shrink(),
              error: (message) => Center(
                child: Text(
                  message.isEmpty ? AppStrings.playlistNotFound : message,
                  style: TextStyle(color: AppColors.error, fontSize: AppDims.sp16),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
