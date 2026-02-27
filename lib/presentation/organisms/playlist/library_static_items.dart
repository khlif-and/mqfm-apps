import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mqfm_apps/presentation/molecules/playlist/library_item.dart';

class LibraryStaticItems extends StatelessWidget {
  const LibraryStaticItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(
              Icons.swap_vert_rounded,
              color: const Color(0xFFB3B3B3),
              size: 22.r,
            ),
            SizedBox(width: 8.w),
            Text(
              'Terbaru',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Spacer(),
            Icon(
              Icons.grid_view_outlined,
              color: const Color(0xFFB3B3B3),
              size: 22.r,
            ),
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
                  colors: [
                    Color(0xFF450AF5),
                    Color(0xFFC4EFD9),
                  ], // Spotify-like gradient for liked songs
                ),
                borderRadius: BorderRadius.circular(2.r),
              ),
              child: Center(
                child: Icon(Icons.favorite, color: Colors.white, size: 28.r),
              ),
            ),
          ),
        ),
        LibraryItem(
          title: 'Kajian Terbaru',
          subtitle: 'Diupdate hari ini',
          customImage: Container(
            decoration: BoxDecoration(
              color: const Color(0xFF0D72EA), // Vibrant blue
              borderRadius: BorderRadius.circular(2.r),
            ),
            child: Center(
              child: Icon(
                Icons.notifications_active_rounded,
                color: Colors.white,
                size: 28.r,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
