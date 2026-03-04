import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mqfm_apps/core/di/injection.dart';
import 'package:mqfm_apps/features/playlist/domain/entities/playlist_entity.dart';
import 'package:mqfm_apps/features/playlist/domain/repositories/playlist_repository.dart';

class AddToPlaylistSheet extends StatefulWidget {
  final Function(int playlistId, String playlistName) onPlaylistSelected;
  final VoidCallback onCreateNewPlaylist;

  const AddToPlaylistSheet({
    super.key,
    required this.onPlaylistSelected,
    required this.onCreateNewPlaylist,
  });

  @override
  State<AddToPlaylistSheet> createState() => _AddToPlaylistSheetState();
}

class _AddToPlaylistSheetState extends State<AddToPlaylistSheet> {
  final PlaylistRepository _playlistRepository = getIt<PlaylistRepository>();
  List<PlaylistEntity> _playlists = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _fetchPlaylists();
  }

  Future<void> _fetchPlaylists() async {
    final result = await _playlistRepository.getPlaylists();
    if (mounted) {
      result.fold(
        (error) => setState(() => _isLoading = false),
        (playlists) => setState(() {
          _playlists = playlists;
          _isLoading = false;
        }),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              width: 40.w,
              height: 4.h,
              decoration: BoxDecoration(
                color: Colors.grey[600],
                borderRadius: BorderRadius.circular(2.r),
              ),
            ),
          ),
          SizedBox(height: 16.h),
          Text(
            "Tambahkan ke Playlist",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16.h),
          ListTile(
            leading: Container(
              width: 48.w,
              height: 48.w,
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(4.r),
              ),
              child: Icon(Icons.add, color: Colors.white, size: 28.r),
            ),
            title: Text(
              "Playlist Baru",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              widget.onCreateNewPlaylist();
            },
          ),
          const Divider(color: Colors.grey),
          Expanded(
            child: _isLoading
                ? const Center(
                    child: CircularProgressIndicator(color: Colors.white),
                  )
                : _playlists.isEmpty
                ? Center(
                    child: Text(
                      "Belum ada playlist",
                      style: TextStyle(color: Colors.grey[400]),
                    ),
                  )
                : ListView.builder(
                    itemCount: _playlists.length,
                    itemBuilder: (context, index) {
                      final playlist = _playlists[index];
                      return ListTile(
                        leading: Container(
                          width: 48.w,
                          height: 48.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.r),
                            image: DecorationImage(
                              image: (playlist.imageUrl.isNotEmpty)
                                  ? NetworkImage(playlist.imageUrl)
                                        as ImageProvider
                                  : const AssetImage(
                                      'assets/images/img_card.jpg',
                                    ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        title: Text(
                          playlist.name,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        subtitle: Text(
                          "${playlist.audios.length} audio",
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 12.sp,
                          ),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                          widget.onPlaylistSelected(playlist.id, playlist.name);
                        },
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
