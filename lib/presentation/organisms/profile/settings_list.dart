import 'package:mqfm_apps/core/routes/app_path_routes.dart';
import 'package:flutter/material.dart';
import 'package:mqfm_apps/presentation/molecules/profile/settings_tile.dart';

class SettingsList extends StatelessWidget {
  final void Function(String route)? onNavigate;

  const SettingsList({super.key, this.onNavigate});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SettingsTile(
          icon: Icons.download_outlined,
          title: 'Unduhan',
          subtitle: 'Kelola kajian yang diunduh',
          onTap: () => onNavigate?.call(AppPathRoutes.downloads),
        ),
        SettingsTile(
          icon: Icons.bookmark_border_rounded,
          title: 'Bookmark',
          subtitle: 'Kajian yang ditandai',
          onTap: () => onNavigate?.call(AppPathRoutes.bookmarks),
        ),
        SettingsTile(
          icon: Icons.bar_chart_rounded,
          title: 'Statistik',
          subtitle: 'Aktivitas mendengarkan kamu',
          onTap: () => onNavigate?.call(AppPathRoutes.stats),
        ),
        SettingsTile(
          icon: Icons.location_on_outlined,
          title: 'Lokasi',
          subtitle: 'Kelola pengaturan lokasi',
          onTap: () => onNavigate?.call(AppPathRoutes.location),
        ),
        SettingsTile(
          icon: Icons.tune_rounded,
          title: 'Preferensi',
          subtitle: 'Atur preferensi konten',
          onTap: () => onNavigate?.call(AppPathRoutes.preferences),
        ),
        SettingsTile(
          icon: Icons.help_outline_rounded,
          title: 'Bantuan & FAQ',
          subtitle: 'Panduan Ekstensif',
          onTap: () => onNavigate?.call(AppPathRoutes.help),
        ),
        SettingsTile(
          icon: Icons.info_outline,
          title: 'Tentang Aplikasi',
          subtitle: 'Versi • Info Aplikasi',
          onTap: () => onNavigate?.call(AppPathRoutes.about),
        ),
      ],
    );
  }
}
