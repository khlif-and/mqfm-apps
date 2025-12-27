import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mqfm_apps/controller/playlist/playlist_controller.dart';
import 'package:mqfm_apps/model/playlist/playlist_model.dart';
import 'package:mqfm_apps/widgets/components/bottom/bottom_bar.dart';

class PlaylistScreen extends StatefulWidget {
  const PlaylistScreen({super.key});

  @override
  State<PlaylistScreen> createState() => _PlaylistScreenState();
}

class _PlaylistScreenState extends State<PlaylistScreen> {
  final PlaylistController _controller = PlaylistController();
  List<Playlist> _playlists = [];
  bool _isLoading = true;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    _fetchPlaylists();
  }

  // UBAH: Return Future<void> agar bisa dipakai oleh RefreshIndicator
  Future<void> _fetchPlaylists() async {
    // Opsional: Set loading true jika ingin menampilkan loading bar saat refresh
    // setState(() => _isLoading = true);

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
        // TAMBAHKAN: RefreshIndicator di sini
        child: RefreshIndicator(
          onRefresh: _fetchPlaylists, // Panggil fungsi fetch saat ditarik
          color: Colors.green, // Warna loading
          backgroundColor: const Color(0xFF242424),
          child: SingleChildScrollView(
            // TAMBAHKAN: Physics ini PENTING agar bisa ditarik walau konten sedikit
            physics: const AlwaysScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // --- HEADER ---
                Row(
                  children: [
                    CircleAvatar(
                      radius: 16.r,
                      backgroundImage: const AssetImage(
                        'assets/images/img_card.jpg',
                      ),
                    ),
                    SizedBox(width: 12.w),
                    Text(
                      'Pustaka Saya',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    Icon(Icons.search, color: Colors.white, size: 28.r),
                    SizedBox(width: 16.w),
                    Icon(Icons.add, color: Colors.white, size: 30.r),
                  ],
                ),

                SizedBox(height: 24.h),

                // --- FILTER CHIPS ---
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const _FilterChip(label: 'Playlists'),
                      SizedBox(width: 8.w),
                      const _FilterChip(label: 'Kajian'),
                      SizedBox(width: 8.w),
                      const _FilterChip(label: 'Ustadz'),
                    ],
                  ),
                ),

                SizedBox(height: 24.h),

                // --- SORT & VIEW OPTIONS ---
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

                // --- STATIC MENU ---
                _LibraryItem(
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

                _LibraryItem(
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

                // --- DYNAMIC PLAYLISTS ---
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
                        style: TextStyle(color: Colors.red),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                else if (_playlists.isEmpty)
                  Center(
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
                    return _LibraryItem(
                      title: playlist.name,
                      subtitle: 'Playlist • ${playlist.audios.length} audio',
                      imageUrl: playlist.imageUrl,
                      isRoundImage: false,
                    );
                  }),

                // Tambahan padding bawah agar item terakhir tidak tertutup BottomBar
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

// ... _FilterChip dan _LibraryItem tetap sama ...
class _FilterChip extends StatelessWidget {
  final String label;

  const _FilterChip({required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: const Color(0xFF2A2A2A),
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: Colors.transparent),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: Colors.white,
          fontSize: 13.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class _LibraryItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String? imageAsset;
  final String? imageUrl;
  final Widget? customImage;
  final bool isRoundImage;
  final bool isPinned;

  const _LibraryItem({
    required this.title,
    required this.subtitle,
    this.imageAsset,
    this.imageUrl,
    this.customImage,
    this.isRoundImage = false,
    this.isPinned = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      child: Row(
        children: [
          SizedBox(
            width: 64.w,
            height: 64.w,
            child:
                customImage ??
                Container(
                  decoration: BoxDecoration(
                    borderRadius: isRoundImage
                        ? BorderRadius.circular(32.r)
                        : BorderRadius.circular(4.r),
                    image: DecorationImage(
                      image: (imageUrl != null && imageUrl!.isNotEmpty)
                          ? NetworkImage(imageUrl!) as ImageProvider
                          : AssetImage(
                              imageAsset ?? 'assets/images/img_card.jpg',
                            ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 4.h),
                Row(
                  children: [
                    if (isPinned) ...[
                      Transform.rotate(
                        angle: 45 * 3.14 / 180,
                        child: Icon(
                          Icons.push_pin,
                          color: const Color(0xFF1DB954),
                          size: 12.r,
                        ),
                      ),
                      SizedBox(width: 4.w),
                    ],
                    Text(
                      subtitle,
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 13.sp,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
