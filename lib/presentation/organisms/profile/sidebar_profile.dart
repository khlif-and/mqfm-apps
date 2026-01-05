import 'package:flutter/material.dart';
import 'package:mqfm_apps/model/auth/auth_model.dart';
import 'package:mqfm_apps/utils/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mqfm_apps/presentation/atoms/profile/profile_avatar.dart';
import 'package:mqfm_apps/utils/manager/user_manager.dart';
import 'package:shimmer/shimmer.dart';

class SidebarProfile extends StatefulWidget {
  const SidebarProfile({super.key});

  @override
  State<SidebarProfile> createState() => _SidebarProfileState();
}

class _SidebarProfileState extends State<SidebarProfile> {
  @override
  void initState() {
    super.initState();
    // Fetch user data when sidebar initializes
    WidgetsBinding.instance.addPostFrameCallback((_) {
      UserManager.instance.fetchUser();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.background,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 16.w, top: 20.h, bottom: 20.h),
              child: ValueListenableBuilder<bool>(
                valueListenable: UserManager.instance.isLoadingNotifier,
                builder: (context, isLoading, _) {
                  if (isLoading) {
                    return _buildShimmerLoading();
                  }

                  return ValueListenableBuilder<UserData?>(
                    valueListenable: UserManager.instance.currentUserNotifier,
                    builder: (context, userData, child) {
                      // Parse hex color from backend
                      Color bgColor = const Color(0xFF8B5A3C);
                      if (userData?.avatarColor != null) {
                        try {
                          String hex = userData!.avatarColor!.replaceFirst(
                            '#',
                            '',
                          );
                          bgColor = Color(int.parse('FF$hex', radix: 16));
                        } catch (_) {}
                      }

                      return Row(
                        children: [
                          ProfileAvatar(
                            size: 40.r,
                            text: userData?.initials ?? "?",
                            backgroundColor: bgColor,
                          ),
                          SizedBox(width: 12.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                userData?.email ?? "Guest",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                "View profile",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 10.sp,
                                ),
                              ),
                            ],
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ),
            Divider(
              color: Colors.grey.withOpacity(0.3),
              height: 1.h,
              thickness: 1,
            ),
            SizedBox(height: 10.h),
            _buildMenuItem(Icons.add, "Add account"),
            _buildMenuItem(Icons.flash_on_outlined, "What's new"),
            _buildMenuItem(Icons.history, "Recents"),
            _buildMenuItem(
              Icons.settings_outlined,
              "Settings and privacy",
              onTap: () {
                context.push('/settings');
              },
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Messages",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    "Share what you love with friends, right on Spotify.",
                    style: TextStyle(color: Colors.grey, fontSize: 12.sp),
                  ),
                  SizedBox(height: 16.h),
                  Row(
                    children: [
                      Container(
                        width: 40.r,
                        height: 40.r,
                        decoration: BoxDecoration(
                          color: AppColors.surfaceHighlight,
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: Icon(
                          Icons.edit_outlined,
                          color: Colors.white,
                          size: 20.sp,
                        ),
                      ),
                      SizedBox(width: 12.w),
                      Text(
                        "New message",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(IconData icon, String title, {VoidCallback? onTap}) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
      minLeadingWidth: 20.w,
      leading: Icon(icon, color: Colors.white, size: 24.sp),
      title: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
        ),
      ),
      onTap: onTap ?? () {},
    );
  }

  Widget _buildShimmerLoading() {
    return Shimmer.fromColors(
      baseColor: Colors.grey[800]!,
      highlightColor: Colors.grey[700]!,
      child: Row(
        children: [
          Container(
            width: 40.r,
            height: 40.r,
            decoration: const BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(width: 12.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 120.w,
                height: 16.sp,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(4.r),
                ),
              ),
              SizedBox(height: 8.h),
              Container(
                width: 80.w,
                height: 10.sp,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(4.r),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
