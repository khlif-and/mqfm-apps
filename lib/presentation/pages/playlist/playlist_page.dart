import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mqfm_apps/controller/playlist/playlist_controller.dart';
import 'package:mqfm_apps/model/playlist/playlist_model.dart';
import 'package:mqfm_apps/presentation/atoms/playlist/filter_chip.dart';
import 'package:mqfm_apps/presentation/molecules/playlist/library_item.dart';
import 'package:mqfm_apps/presentation/organisms/navigation/bottom_bar.dart';
import 'package:mqfm_apps/presentation/organisms/playlist/library_header.dart';

class PlaylistPage extends StatefulWidget {
  const PlaylistPage({super.key});

  @override
  State<PlaylistPage> createState() => _PlaylistPageState();
}

class _PlaylistPageState extends State<PlaylistPage> {
  final PlaylistController _controller = PlaylistController();
  List<Playlist> _playlists = [];
  bool _isLoading = true;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    _fetchPlaylists();
  }

  Future<void> _fetchPlaylists() async {
    try {
      final response = await _controller.getAllPlaylists();
      if (mounted) {
        if (response.status == 200 && response.data != null) {
          setState(() {
            _playlists = response.data!;
            _isLoading = false;
          });
        } else {
          setState(() {
            _errorMessage = "Gagal memuat data: ${response.message}";
            _isLoading = false;
          });
        }
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _errorMessage =
              "Terjadi kesalahan koneksi. Pastikan internet lancar.";
          _isLoading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: _fetchPlaylists,
          color: Colors.green,
          backgroundColor: const Color(0xFF242424),
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const LibraryHeader(),
                SizedBox(height: 24.h),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const FilterChipAtom(label: 'Playlists'),
                      SizedBox(width: 8.w),
                      const FilterChipAtom(label: 'Kajian'),
                      SizedBox(width: 8.w),
                      const FilterChipAtom(label: 'Ustadz'),
                    ],
                  ),
                ),
                SizedBox(height: 24.h),
                Row(
                  children: [
                    Icon(Icons.import_export, color: Colors.white, size: 18.r),
                    SizedBox(width: 8.w),
                    Text(
                      'Terbaru',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),
                    Icon(Icons.grid_view, color: Colors.white, size: 18.r),
                  ],
                ),
                SizedBox(height: 16.h),
                InkWell(
                  onTap: () {
                    context.push('/favorites');
                  },
                  child: LibraryItem(
                    title: 'Kajian Favorit',
                    subtitle: 'Playlist • 12 audio',
                    isPinned: true,
                    customImage: Container(
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Color(0xFF450AF5), Color(0xFFC4EFDA)],
                        ),
                        borderRadius: BorderRadius.circular(4.r),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.favorite,
                          color: Colors.white,
                          size: 24.r,
                        ),
                      ),
                    ),
                  ),
                ),
                LibraryItem(
                  title: 'Kajian Terbaru',
                  subtitle: 'Diupdate hari ini',
                  customImage: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFF5E35B1),
                      borderRadius: BorderRadius.circular(4.r),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.notifications_active,
                        color: const Color(0xFF1DB954),
                        size: 24.r,
                      ),
                    ),
                  ),
                ),
                if (_isLoading)
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: CircularProgressIndicator(color: Colors.green),
                    ),
                  )
                else if (_errorMessage != null)
                  Center(
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        _errorMessage!,
                        style: const TextStyle(color: Colors.red),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                else if (_playlists.isEmpty)
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        "Belum ada playlist kajian.",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  )
                else
                  ..._playlists.map((playlist) {
                    return InkWell(
                      onTap: () {
                        context.push('/playlist/${playlist.id}');
                      },
                      child: LibraryItem(
                        title: playlist.name,
                        subtitle: 'Playlist • ${playlist.audios.length} audio',
                        imageUrl: playlist.imageUrl,
                        isRoundImage: false,
                      ),
                    );
                  }),
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
