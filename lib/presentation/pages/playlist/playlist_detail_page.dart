import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mqfm_apps/controller/playlist/playlist_controller.dart';
import 'package:mqfm_apps/model/playlist/playlist_model.dart';
import 'package:mqfm_apps/presentation/molecules/playlist/playlist_track_tile.dart';
import 'package:mqfm_apps/presentation/organisms/playlist/playlist_detail_header.dart';

class PlaylistDetailPage extends StatefulWidget {
  final String playlistId;

  const PlaylistDetailPage({super.key, required this.playlistId});

  @override
  State<PlaylistDetailPage> createState() => _PlaylistDetailPageState();
}

class _PlaylistDetailPageState extends State<PlaylistDetailPage> {
  final PlaylistController _controller = PlaylistController();
  Playlist? _playlist;
  bool _isLoading = true;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    _fetchPlaylistDetail();
  }

  Future<void> _fetchPlaylistDetail() async {
    try {
      final id = int.tryParse(widget.playlistId) ?? 0;
      final response = await _controller.getDetailPlaylist(id);

      if (mounted) {
        if (response.status == 200 && response.data != null) {
          setState(() {
            _playlist = response.data;
            _isLoading = false;
          });
        } else {
          setState(() {
            _errorMessage = "Gagal: ${response.message}";
            _isLoading = false;
          });
        }
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _errorMessage = "Error: $e";
          _isLoading = false;
        });
      }
    }
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
      body: _isLoading
          ? const Center(child: CircularProgressIndicator(color: Colors.green))
          : _errorMessage != null
          ? Center(
              child: Text(
                _errorMessage!,
                style: TextStyle(color: Colors.red, fontSize: 16.sp),
              ),
            )
          : _playlist == null
          ? Center(
              child: Text(
                "Playlist tidak ditemukan",
                style: TextStyle(color: Colors.white, fontSize: 16.sp),
              ),
            )
          : SingleChildScrollView(
              padding: EdgeInsets.all(16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PlaylistDetailHeader(playlist: _playlist!),
                  SizedBox(height: 24.h),
                  if (_playlist!.audios.isEmpty)
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 20.h),
                        child: Text(
                          "Belum ada audio di playlist ini.",
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                      ),
                    )
                  else
                    ..._playlist!.audios.map(
                      (audio) => PlaylistTrackTile(audio: audio),
                    ),
                ],
              ),
            ),
    );
  }
}
