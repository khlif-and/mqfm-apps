import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mqfm_apps/model/playlist/playlist_model.dart';
import 'package:mqfm_apps/presentation/atoms/common/empty_state_card.dart';
import 'package:mqfm_apps/presentation/molecules/playlist/library_item.dart';
import 'package:shimmer/shimmer.dart';

class LibraryPlaylistList extends StatelessWidget {
  final bool isLoading;
  final String? errorMessage;
  final List<Playlist> playlists;

  const LibraryPlaylistList({
    super.key,
    required this.isLoading,
    this.errorMessage,
    required this.playlists,
  });

  Widget _buildShimmer() {
    return Column(
      children: List.generate(4, (_) {
        return Padding(
          padding: EdgeInsets.only(bottom: 16.h),
          child: Shimmer.fromColors(
            baseColor: Colors.grey[800]!,
            highlightColor: Colors.grey[600]!,
            child: Row(
              children: [
                Container(
                  width: 56.w,
                  height: 56.w,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(6.r),
                  ),
                ),
                SizedBox(width: 14.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 150.w,
                        height: 14.h,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(4.r),
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Container(
                        width: 100.w,
                        height: 12.h,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(4.r),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return _buildShimmer();
    }

    if (errorMessage != null) {
      return EmptyStateCard(
        message: errorMessage!,
        icon: Icons.error_outline_rounded,
      );
    }

    if (playlists.isEmpty) {
      return const EmptyStateCard(
        message: 'Belum ada playlist kajian',
        icon: Icons.queue_music_rounded,
      );
    }

    return Column(
      children: playlists.map((playlist) {
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
      }).toList(),
    );
  }
}
