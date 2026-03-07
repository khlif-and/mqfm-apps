import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/features/auth/domain/entities/user.dart';
import 'package:mqfm_apps/presentation/atoms/profile/profile_avatar.dart';

class SidebarProfileSection extends StatelessWidget {
  final UserEntity? userData;

  const SidebarProfileSection({super.key, required this.userData});

  @override
  Widget build(BuildContext context) {
    Color bgColor = const Color(0xFF6C63FF);
    if (userData?.avatarColor != null) {
      try {
        String hex = userData!.avatarColor!.replaceFirst('#', '');
        bgColor = Color(int.parse('FF$hex', radix: 16));
      } catch (_) {}
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProfileAvatar(
          size: AppDims.r56,
          text: userData?.initials ?? "?",
          backgroundColor: bgColor,
          textColor: AppColors.textWhite,
          profilePictureUrl: userData?.profilePicture,
        ),
        SizedBox(height: AppDims.h16),
        Text(
          userData?.username ?? 'Guest',
          style: TextStyle(
            color: AppColors.textWhite,
            fontSize: AppDims.sp20,
            fontWeight: FontWeight.bold,
            letterSpacing: -0.3,
          ),
        ),
        SizedBox(height: AppDims.h4),
        Text(
          userData?.email ?? '',
          style: TextStyle(
            color: AppColors.textWhite.withValues(alpha: 0.5),
            fontSize: AppDims.sp13,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
