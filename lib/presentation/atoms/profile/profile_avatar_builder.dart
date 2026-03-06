import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mqfm_apps/features/auth/domain/entities/user_entity.dart';
import 'package:mqfm_apps/presentation/atoms/profile/profile_avatar.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/manager/user_manager.dart';
import 'package:shimmer/shimmer.dart';

class ProfileAvatarBuilder extends StatelessWidget {
  final double size;
  final bool openDrawerOnTap;
  final GlobalKey? widgetKey;

  const ProfileAvatarBuilder({
    super.key,
    this.size = 32,
    this.openDrawerOnTap = true,
    this.widgetKey,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      key: widgetKey,
      behavior: HitTestBehavior.opaque,
      onTap: openDrawerOnTap ? () => Scaffold.of(context).openDrawer() : null,
      child: ValueListenableBuilder<bool>(
        valueListenable: UserManager.instance.isLoadingNotifier,
        builder: (context, isLoading, _) {
          if (isLoading) {
            return Shimmer.fromColors(
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
            );
          }
          return ValueListenableBuilder<UserEntity?>(
            valueListenable: UserManager.instance.currentUserNotifier,
            builder: (context, userData, child) {
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
            },
          );
        },
      ),
    );
  }
}
