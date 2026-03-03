import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mqfm_apps/model/auth/auth_model.dart';
import 'package:mqfm_apps/presentation/atoms/profile/profile_avatar.dart';
import 'package:mqfm_apps/utils/app_colors.dart';
import 'package:mqfm_apps/utils/manager/user_manager.dart';
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
              baseColor: Colors.grey[800]!,
              highlightColor: Colors.grey[600]!,
              child: Container(
                width: size.r,
                height: size.r,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
              ),
            );
          }
          return ValueListenableBuilder<UserData?>(
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
                textColor: Colors.white,
                profilePictureUrl: userData?.profilePicture,
              );
            },
          );
        },
      ),
    );
  }
}
