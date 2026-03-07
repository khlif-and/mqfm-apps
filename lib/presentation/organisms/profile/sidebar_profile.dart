import 'package:mqfm_apps/core/routes/app_path_routes.dart';
import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/features/auth/domain/entities/user.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/presentation/atoms/profile/sidebar_menu_item.dart';
import 'package:mqfm_apps/presentation/atoms/profile/sidebar_profile_shimmer.dart';
import 'package:mqfm_apps/presentation/molecules/profile/sidebar_profile_section.dart';
import 'package:mqfm_apps/presentation/molecules/profile/sidebar_promo_card.dart';

class SidebarProfile extends StatelessWidget {
  final UserEntity? userData;
  final bool isLoading;
  final GlobalKey? profileSectionKey;
  final GlobalKey? menuSectionKey;
  final GlobalKey? settingsKey;
  final void Function(String route)? onNavigate;

  const SidebarProfile({
    super.key,
    required this.userData,
    required this.isLoading,
    this.profileSectionKey,
    this.menuSectionKey,
    this.settingsKey,
    this.onNavigate,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF121218),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              key: profileSectionKey,
              padding: EdgeInsets.fromLTRB(
                AppDims.w20,
                AppDims.h48,
                AppDims.w20,
                AppDims.h24,
              ),
              child: isLoading
                  ? const SidebarProfileShimmer()
                  : SidebarProfileSection(userData: userData),
            ),

            SizedBox(height: AppDims.h8),

            Container(
              key: menuSectionKey,
              child: Column(
                children: [
                  SidebarMenuItem(
                    icon: Icons.person_outline_rounded,
                    title: 'Profil Saya',
                    onTap: () => onNavigate?.call(AppPathRoutes.editProfile),
                  ),
                  SidebarMenuItem(
                    icon: Icons.history_rounded,
                    title: 'Riwayat Dengar',
                    onTap: () => onNavigate?.call(AppPathRoutes.history),
                  ),
                  SidebarMenuItem(
                    icon: Icons.favorite_border_rounded,
                    title: 'Kajian Favorit',
                    onTap: () {},
                  ),
                  SidebarMenuItem(
                    icon: Icons.download_outlined,
                    title: 'Unduhan',
                    onTap: () => onNavigate?.call(AppPathRoutes.downloads),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppDims.w20, vertical: AppDims.h4),
              child: Divider(
                color: AppColors.textWhite.withValues(alpha: 0.08),
                thickness: 1,
              ),
            ),

            SidebarMenuItem(
              key: settingsKey,
              icon: Icons.settings_outlined,
              title: 'Pengaturan',
              onTap: () => onNavigate?.call(AppPathRoutes.settings),
            ),
            SidebarMenuItem(
              icon: Icons.help_outline_rounded,
              title: 'Bantuan & FAQ',
              onTap: () => onNavigate?.call(AppPathRoutes.help),
            ),
            SidebarMenuItem(
              icon: Icons.info_outline_rounded,
              title: 'Tentang Aplikasi',
              onTap: () => onNavigate?.call(AppPathRoutes.about),
            ),

            const Spacer(),

            Padding(
              padding: EdgeInsets.fromLTRB(AppDims.w20, 0, AppDims.w20, AppDims.h24),
              child: const SidebarPromoCard(),
            ),
          ],
        ),
      ),
    );
  }
}