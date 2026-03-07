import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mqfm_apps/features/auth/domain/entities/user.dart';
import 'package:mqfm_apps/presentation/atoms/profile/profile_avatar.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:shimmer/shimmer.dart';

class ProfileAvatarBuilder extends StatelessWidget {
  final double size;
  final VoidCallback? onTap;
  final GlobalKey? widgetKey;
  final UserEntity? userData;
  final bool isLoading;

  const ProfileAvatarBuilder({
    super.key,
    this.size = 32,
    this.onTap,
    this.widgetKey,
    this.userData,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      key: widgetKey,
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: isLoading
          ? Shimmer.fromColors(
              baseColor: AppColors.shimmerBase,
              highlightColor: AppColors.shimmerHighlight,
              child: Container(
                width: size.r,
                height: size.r,
                decoration: BoxDecoration(
                  color: AppColors.onPrimary,
                  shape: BoxShape.circle,
                ),
              ),
            )
          : _buildAvatar(),
    );
  }

  Widget _buildAvatar() {
    Color bgColor = AppColors.placeholder;
    if (userData?.avatarColor != null) {
      try {
        String hex = userData!.avatarColor!.replaceFirst('#', '');
        bgColor = Color(int.parse('FF$hex', radix: 16));
      } catch (_) {}
    }
    return ProfileAvatar(
      size: size,
      text: userData?.initials ?? "?",
      backgroundColor: bgColor,
      textColor: AppColors.textWhite,
      profilePictureUrl: userData?.profilePicture,
    );
  }
}
