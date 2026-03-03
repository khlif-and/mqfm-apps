import 'package:flutter/material.dart';
import 'package:mqfm_apps/model/auth/auth_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mqfm_apps/presentation/atoms/profile/profile_avatar.dart';
import 'package:mqfm_apps/utils/manager/user_manager.dart';
import 'package:shimmer/shimmer.dart';

class SidebarProfile extends StatefulWidget {
  final GlobalKey? profileSectionKey;
  final GlobalKey? menuSectionKey;
  final GlobalKey? settingsKey;

  const SidebarProfile({
    super.key,
    this.profileSectionKey,
    this.menuSectionKey,
    this.settingsKey,
  });

  @override
  State<SidebarProfile> createState() => _SidebarProfileState();
}

class _SidebarProfileState extends State<SidebarProfile> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      UserManager.instance.fetchUser();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF121218),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              key: widget.profileSectionKey,
              padding: EdgeInsets.fromLTRB(
                20.w,
                48.h,
                20.w,
                24.h,
              ), // adjusted padding for without background box
              child: ValueListenableBuilder<bool>(
                valueListenable: UserManager.instance.isLoadingNotifier,
                builder: (context, isLoading, _) {
                  if (isLoading) return _buildProfileShimmer();

                  return ValueListenableBuilder<UserData?>(
                    valueListenable: UserManager.instance.currentUserNotifier,
                    builder: (context, userData, child) {
                      Color bgColor = const Color(0xFF6C63FF);
                      if (userData?.avatarColor != null) {
                        try {
                          String hex = userData!.avatarColor!.replaceFirst(
                            '#',
                            '',
                          );
                          bgColor = Color(int.parse('FF$hex', radix: 16));
                        } catch (_) {}
                      }

                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ProfileAvatar(
                            size: 56.r,
                            text: userData?.initials ?? "?",
                            backgroundColor: bgColor,
                            textColor: Colors.white,
                            profilePictureUrl: userData?.profilePicture,
                          ),
                          SizedBox(height: 16.h),
                          Text(
                            userData?.username ?? 'Guest',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold,
                              letterSpacing: -0.3,
                            ),
                          ),
                          SizedBox(height: 4.h),
                          Text(
                            userData?.email ?? '',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ),

            SizedBox(height: 8.h),

            Container(
              key: widget.menuSectionKey,
              child: Column(
                children: [
                  _buildMenuItem(
                    icon: Icons.person_outline_rounded,
                    title: 'Profil Saya',
                    onTap: () {
                      context.push('/edit-profile');
                    },
                  ),
                  _buildMenuItem(
                    icon: Icons.history_rounded,
                    title: 'Riwayat Dengar',
                    onTap: () {
                      context.push('/history');
                    },
                  ),
                  _buildMenuItem(
                    icon: Icons.favorite_border_rounded,
                    title: 'Kajian Favorit',
                    onTap: () {},
                  ),
                  _buildMenuItem(
                    icon: Icons.download_outlined,
                    title: 'Unduhan',
                    onTap: () {
                      context.push('/downloads');
                    },
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 4.h),
              child: Divider(
                color: Colors.white.withOpacity(0.08),
                thickness: 1,
              ),
            ),

            _buildMenuItem(
              key: widget.settingsKey,
              icon: Icons.settings_outlined,
              title: 'Pengaturan',
              onTap: () {
                context.push('/settings');
              },
            ),
            _buildMenuItem(
              icon: Icons.help_outline_rounded,
              title: 'Bantuan & FAQ',
              onTap: () {
                context.push('/help');
              },
            ),
            _buildMenuItem(
              icon: Icons.info_outline_rounded,
              title: 'Tentang Aplikasi',
              onTap: () {
                context.push('/about');
              },
            ),

            const Spacer(),

            Padding(
              padding: EdgeInsets.fromLTRB(20.w, 0, 20.w, 24.h),
              child: Container(
                padding: EdgeInsets.all(16.r),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      const Color(0xFF1E1E2E),
                      const Color(0xFF2A2A3A).withOpacity(0.6),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(12.r),
                  border: Border.all(
                    color: Colors.white.withOpacity(0.06),
                    width: 1,
                  ),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.mosque_rounded,
                      color: const Color(0xFF9D8DF1),
                      size: 28.sp,
                    ),
                    SizedBox(width: 12.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'MQFM Podcast',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 2.h),
                          Text(
                            'Dengarkan kajian kapan saja',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.4),
                              fontSize: 11.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem({
    required IconData icon,
    required String title,
    VoidCallback? onTap,
    GlobalKey? key,
  }) {
    return InkWell(
      key: key,
      onTap: onTap ?? () {},
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 14.h),
        child: Row(
          children: [
            Icon(icon, color: Colors.white.withOpacity(0.7), size: 22.sp),
            SizedBox(width: 16.w),
            Text(
              title,
              style: TextStyle(
                color: Colors.white.withOpacity(0.85),
                fontSize: 15.sp,
                fontWeight: FontWeight.w500,
                letterSpacing: -0.1,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileShimmer() {
    return Shimmer.fromColors(
      baseColor: Colors.grey[800]!,
      highlightColor: Colors.grey[600]!,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 56.r,
            height: 56.r,
            decoration: const BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(height: 16.h),
          Container(
            width: 140.w,
            height: 18.h,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(4.r),
            ),
          ),
          SizedBox(height: 8.h),
          Container(
            width: 180.w,
            height: 12.h,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(4.r),
            ),
          ),
          SizedBox(height: 8.h),
          Container(
            width: 50.w,
            height: 20.h,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20.r),
            ),
          ),
        ],
      ),
    );
  }
}
