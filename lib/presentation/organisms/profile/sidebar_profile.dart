import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/features/auth/domain/entities/user_entity.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mqfm_apps/presentation/atoms/profile/profile_avatar.dart';
import 'package:mqfm_apps/core/manager/user_manager.dart';
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
                AppDims.w20,
                AppDims.h48,
                AppDims.w20,
                AppDims.h24,
              ), // adjusted padding for without background box
              child: ValueListenableBuilder<bool>(
                valueListenable: UserManager.instance.isLoadingNotifier,
                builder: (context, isLoading, _) {
                  if (isLoading) return _buildProfileShimmer();

                  return ValueListenableBuilder<UserEntity?>(
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
                            size: AppDims.r56,
                            text: userData?.initials ?? "?",
                            backgroundColor: bgColor,
                            textColor: Colors.white,
                            profilePictureUrl: userData?.profilePicture,
                          ),
                          SizedBox(height: AppDims.h16),
                          Text(
                            userData?.username ?? 'Guest',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: AppDims.sp20,
                              fontWeight: FontWeight.bold,
                              letterSpacing: -0.3,
                            ),
                          ),
                          SizedBox(height: AppDims.h4),
                          Text(
                            userData?.email ?? '',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: AppDims.sp13,
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

            SizedBox(height: AppDims.h8),

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
              padding: EdgeInsets.symmetric(horizontal: AppDims.w20, vertical: AppDims.h4),
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
              padding: EdgeInsets.fromLTRB(AppDims.w20, 0, AppDims.w20, AppDims.h24),
              child: Container(
                padding: EdgeInsets.all(AppDims.r16),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      const Color(0xFF1E1E2E),
                      const Color(0xFF2A2A3A).withOpacity(0.6),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(AppDims.r12),
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
                      size: AppDims.sp28,
                    ),
                    SizedBox(width: AppDims.w12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'MQFM Podcast',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: AppDims.sp13,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: AppDims.h2),
                          Text(
                            'Dengarkan kajian kapan saja',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.4),
                              fontSize: AppDims.sp11,
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
        padding: EdgeInsets.symmetric(horizontal: AppDims.w20, vertical: AppDims.h14),
        child: Row(
          children: [
            Icon(icon, color: Colors.white.withOpacity(0.7), size: AppDims.sp22),
            SizedBox(width: AppDims.w16),
            Text(
              title,
              style: TextStyle(
                color: Colors.white.withOpacity(0.85),
                fontSize: AppDims.sp15,
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
            width: AppDims.r56,
            height: AppDims.r56,
            decoration: const BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(height: AppDims.h16),
          Container(
            width: AppDims.w140,
            height: AppDims.h18,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(AppDims.r4),
            ),
          ),
          SizedBox(height: AppDims.h8),
          Container(
            width: AppDims.w180,
            height: AppDims.h12,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(AppDims.r4),
            ),
          ),
          SizedBox(height: AppDims.h8),
          Container(
            width: AppDims.w50,
            height: AppDims.h20,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(AppDims.r20),
            ),
          ),
        ],
      ),
    );
  }
}
