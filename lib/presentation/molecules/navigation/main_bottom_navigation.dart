import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mqfm_apps/presentation/pages/shell/main_shell_page.dart';

class MainBottomNavigation extends StatelessWidget {
  final int currentIndex;

  const MainBottomNavigation({super.key, this.currentIndex = 0});

  @override
  Widget build(BuildContext context) {
    final shellState = MainShellPage.of(context);

    return Container(
      color: AppColors.background,
      padding: EdgeInsets.only(top: AppDims.h12, bottom: AppDims.h16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(
            context,
            Icons.home_filled,
            'home',
            currentIndex == 0,
            () => shellState?.switchTab(0),
          ),
          _buildNavItem(
            context,
            Icons.search,
            'search',
            currentIndex == 1,
            () => shellState?.switchTab(1),
          ),
          _buildNavItem(
            context,
            Icons.queue_music,
            'playlist',
            currentIndex == 2,
            () => shellState?.switchTab(2),
          ),
          _buildNavItem(
            context,
            Icons.favorite_border,
            'like',
            false,
            () => context.push('/favorites'),
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem(
    BuildContext context,
    IconData icon,
    String label,
    bool isActive,
    VoidCallback? onTap,
  ) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: isActive ? AppColors.textWhite : AppColors.textMuted, size: AppDims.sp26),
          SizedBox(height: AppDims.h4),
          Text(
            label,
            style: TextStyle(
              color: isActive ? AppColors.textWhite : AppColors.textMuted,
              fontSize: AppDims.sp11,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
