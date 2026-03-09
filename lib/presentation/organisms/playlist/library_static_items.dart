import 'package:flutter/material.dart';
import 'package:mqfm_apps/presentation/molecules/playlist/library_item.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_strings.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';

class LibraryStaticItems extends StatelessWidget {
  final VoidCallback? onFavoritesTap;

  const LibraryStaticItems({super.key, this.onFavoritesTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(
              Icons.swap_vert_rounded,
              color: AppColors.textSecondary,
              size: AppDims.r22,
            ),
            SizedBox(width: AppDims.w8),
            Text(
              AppStrings.latest,
              style: TextStyle(
                color: AppColors.textWhite,
                fontSize: AppDims.sp14,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Spacer(),
            Icon(
              Icons.grid_view_outlined,
              color: AppColors.textSecondary,
              size: AppDims.r22,
            ),
          ],
        ),
        SizedBox(height: AppDims.h16),
        InkWell(
          onTap: onFavoritesTap,
          child: LibraryItem(
            title: AppStrings.favoriteKajian,
            subtitle: 'Playlist • 12 audio',
            isPinned: true,
            customImage: Container(
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    AppColors.gradientFavoriteStart,
                    AppColors.gradientFavoriteEnd,
                  ], // Spotify-like gradient for liked songs
                ),
                borderRadius: BorderRadius.circular(AppDims.r2),
              ),
              child: Center(
                child: Icon(
                  Icons.favorite,
                  color: AppColors.textWhite,
                  size: AppDims.r28,
                ),
              ),
            ),
          ),
        ),
        LibraryItem(
          title: AppStrings.latestKajian,
          subtitle: AppStrings.updatedToday,
          customImage: Container(
            decoration: BoxDecoration(
              color: AppColors.notificationBlue, // Vibrant blue
              borderRadius: BorderRadius.circular(AppDims.r2),
            ),
            child: Center(
              child: Icon(
                Icons.notifications_active_rounded,
                color: AppColors.textWhite,
                size: AppDims.r28,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
