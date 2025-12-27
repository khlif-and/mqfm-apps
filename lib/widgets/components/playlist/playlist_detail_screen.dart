import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mqfm_apps/controller/playlist/playlist_controller.dart';
import 'package:mqfm_apps/model/playlist/playlist_model.dart';

class PlaylistDetailScreen extends StatefulWidget {
  final String playlistId;

  const PlaylistDetailScreen({super.key, required this.playlistId});

  @override
  State<PlaylistDetailScreen> createState() => _PlaylistDetailScreenState();
}

class _PlaylistDetailScreenState extends State<PlaylistDetailScreen> {
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
                  Center(
                    child: Container(
                      width: 200.w,
                      height: 200.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        image: DecorationImage(
                          image: (_playlist!.imageUrl.isNotEmpty)
                              ? NetworkImage(_playlist!.imageUrl)
                              : const AssetImage('assets/images/img_card.jpg')
                                    as ImageProvider,
                          fit: BoxFit.cover,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            blurRadius: 20.r,
                            offset: const Offset(0, 10),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 24.h),
                  Text(
                    _playlist!.name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    "Dibuat oleh User #${_playlist!.userId}",
                    style: TextStyle(color: Colors.grey[400], fontSize: 14.sp),
                  ),
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
                    ..._playlist!.audios.map((audio) {
                      return ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: Container(
                          width: 48.w,
                          height: 48.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.r),
                            image: DecorationImage(
                              image: (audio.thumbnail.isNotEmpty)
                                  ? NetworkImage(audio.thumbnail)
                                  : const AssetImage(
                                          'assets/images/img_card.jpg',
                                        )
                                        as ImageProvider,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        title: Text(
                          audio.title,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        subtitle: Text(
                          audio.description,
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 12.sp,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        onTap: () {
                          context.push('/player/${audio.id}');
                        },
                      );
                    }),
                ],
              ),
            ),
    );
  }
}
