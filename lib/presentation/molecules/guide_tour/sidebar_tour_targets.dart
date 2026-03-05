import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';
import 'package:mqfm_apps/presentation/atoms/guide_tour/guide_tour_content.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';

List<TargetFocus> buildSidebarTargets({
  required GlobalKey profileSectionKey,
  required GlobalKey menuSectionKey,
  required GlobalKey settingsKey,
}) {
  return [
    TargetFocus(
      identify: 'sidebarProfile',
      keyTarget: profileSectionKey,
      alignSkip: Alignment.bottomRight,
      shape: ShapeLightFocus.RRect,
      radius: AppDims.r10,
      contents: [
        TargetContent(
          align: ContentAlign.bottom,
          child: const GuideTourContent(
            title: 'Profil Kamu',
            description: 'Informasi akun kamu ditampilkan di sini.',
          ),
        ),
      ],
    ),
    TargetFocus(
      identify: 'sidebarMenu',
      keyTarget: menuSectionKey,
      alignSkip: Alignment.bottomRight,
      shape: ShapeLightFocus.RRect,
      radius: AppDims.r10,
      contents: [
        TargetContent(
          align: ContentAlign.bottom,
          child: const GuideTourContent(
            title: 'Menu Navigasi',
            description: 'Akses riwayat, favorit, dan unduhan kamu dari sini.',
          ),
        ),
      ],
    ),
    TargetFocus(
      identify: 'sidebarSettings',
      keyTarget: settingsKey,
      alignSkip: Alignment.bottomRight,
      shape: ShapeLightFocus.RRect,
      radius: AppDims.r10,
      contents: [
        TargetContent(
          align: ContentAlign.bottom,
          child: const GuideTourContent(
            title: 'Pengaturan',
            description: 'Kelola pengaturan akun dan preferensi aplikasi.',
          ),
        ),
      ],
    ),
  ];
}
