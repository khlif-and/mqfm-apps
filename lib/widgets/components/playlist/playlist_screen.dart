import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mqfm_apps/widgets/components/bottom/bottom_bar.dart';

class PlaylistScreen extends StatelessWidget {
  const PlaylistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                    'Your Library',
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
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _FilterChip(label: 'Playlists'),
                    SizedBox(width: 8.w),
                    _FilterChip(label: 'Podcasts'),
                    SizedBox(width: 8.w),
                    _FilterChip(label: 'Artists'),
                  ],
                ),
              ),
              SizedBox(height: 24.h),
              Row(
                children: [
                  Icon(Icons.import_export, color: Colors.white, size: 18.r),
                  SizedBox(width: 8.w),
                  Text(
                    'Recents',
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
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                decoration: BoxDecoration(
                  color: const Color(0xFF242424),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.download_outlined,
                      color: Colors.grey[400],
                      size: 24.r,
                    ),
                    SizedBox(width: 12.w),
                    Expanded(
                      child: Text(
                        'Import your music from other apps',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.chevron_right,
                      color: Colors.grey[400],
                      size: 24.r,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.h),
              _LibraryItem(
                title: 'Liked Songs',
                subtitle: 'Playlist • 3 songs',
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
                title: 'New Episodes',
                subtitle: 'Updated Apr 12, 2025',
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
              _LibraryItem(
                title: 'Miley Cyrus',
                subtitle: 'Artist',
                isRoundImage: true,
                imageAsset: 'assets/images/img_card.jpg',
              ),
              _LibraryItem(
                title: 'Marcell',
                subtitle: 'Artist',
                isRoundImage: true,
                imageAsset: 'assets/images/img_card.jpg',
              ),
              _LibraryItem(
                title: 'Naughty Boy',
                subtitle: 'Artist',
                isRoundImage: true,
                imageAsset: 'assets/images/img_card.jpg',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}

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
  final Widget? customImage;
  final bool isRoundImage;
  final bool isPinned;

  const _LibraryItem({
    required this.title,
    required this.subtitle,
    this.imageAsset,
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
            child: isRoundImage
                ? CircleAvatar(backgroundImage: AssetImage(imageAsset!))
                : customImage ??
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(imageAsset!),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(4.r),
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
