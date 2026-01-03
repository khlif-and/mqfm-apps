import 'package:flutter/material.dart';
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
    logic.fetchPlaylistDetail(widget.playlistId);
  }

  @override
  void dispose() {
    logic.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => context.pop(),
        ),
      ),
      body: ListenableBuilder(
        listenable: logic,
        builder: (context, child) {
          if (logic.isLoading) {
            return const Center(
              child: CircularProgressIndicator(color: Colors.green),
            );
          }

          if (logic.errorMessage != null) {
            return Center(
              child: Text(
                logic.errorMessage!,
                style: TextStyle(color: Colors.red, fontSize: 16.sp),
              ),
            );
          }

          if (logic.playlist == null) {
            return Center(
              child: Text(
                "Playlist tidak ditemukan",
                style: TextStyle(color: Colors.white, fontSize: 16.sp),
              ),
            );
          }

          return SingleChildScrollView(
            padding: EdgeInsets.all(16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PlaylistDetailHeader(playlist: logic.playlist!),
                SizedBox(height: 24.h),
                PlaylistTrackList(audios: logic.playlist!.audios),
              ],
            ),
          );
        },
      ),
    );
  }
}
