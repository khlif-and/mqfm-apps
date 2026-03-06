import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mqfm_apps/presentation/logic/playlist/playlist_detail_logic.dart';
import 'package:mqfm_apps/presentation/organisms/playlist/playlist_detail_header.dart';
import 'package:mqfm_apps/presentation/organisms/playlist/playlist_track_list.dart';

class PlaylistDetailPage extends StatefulWidget {
  final String playlistId;

  const PlaylistDetailPage({super.key, required this.playlistId});

  @override
  State<PlaylistDetailPage> createState() => _PlaylistDetailPageState();
}

class _PlaylistDetailPageState extends State<PlaylistDetailPage> {
  final PlaylistDetailLogic logic = PlaylistDetailLogic();

  @override
  void initState() {
    super.initState();
    logic.fetchPlaylistDetail(int.tryParse(widget.playlistId) ?? 0);
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
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: AppColors.textWhite),
          onPressed: () => context.pop(),
        ),
      ),
      body: ListenableBuilder(
        listenable: logic,
        builder: (context, child) {
          if (logic.isLoading) {
            return const Center(
              child: CircularProgressIndicator(color: AppColors.primaryClassic),
            );
          }

          if (logic.errorMessage != null) {
            return Center(
              child: Text(
                logic.errorMessage!,
                style: TextStyle(color: AppColors.error, fontSize: AppDims.sp16),
              ),
            );
          }

          if (logic.playlist == null) {
            return Center(
              child: Text(
                "Playlist tidak ditemukan",
                style: TextStyle(color: AppColors.textWhite, fontSize: AppDims.sp16),
              ),
            );
          }

          return SingleChildScrollView(
            padding: EdgeInsets.all(AppDims.w16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PlaylistDetailHeader(playlist: logic.playlist!),
                SizedBox(height: AppDims.h24),
                PlaylistTrackList(audios: logic.playlist!.audios),
              ],
            ),
          );
        },
      ),
    );
  }
}
