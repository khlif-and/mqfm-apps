import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';
import 'package:mqfm_apps/presentation/atoms/guide_tour/guide_tour_content.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';

List<TargetFocus> buildDashboardTargets({
  required GlobalKey profileKey,
  required GlobalKey categoryKey,
  required GlobalKey menuGridKey,
  required GlobalKey quoteKey,
  required GlobalKey horizontalListKey,
  required GlobalKey verticalListKey,
}) {
  return [
    TargetFocus(
      identify: 'profile',
      keyTarget: profileKey,
      alignSkip: Alignment.bottomRight,
      shape: ShapeLightFocus.Circle,
      contents: [
        TargetContent(
          align: ContentAlign.bottom,
          child: const GuideTourContent(
            title: 'Profil Kamu',
            description: 'Tap di sini untuk melihat dan mengedit profil kamu.',
          ),
        ),
      ],
    ),
    TargetFocus(
      identify: 'category',
      keyTarget: categoryKey,
      alignSkip: Alignment.bottomRight,
      shape: ShapeLightFocus.RRect,
      radius: AppDims.r10,
      contents: [
        TargetContent(
          align: ContentAlign.bottom,
          child: const GuideTourContent(
            title: 'Kategori Kajian',
            description:
                'Pilih kategori untuk menemukan kajian yang kamu suka.',
          ),
        ),
      ],
    ),
    TargetFocus(
      identify: 'menuGrid',
      keyTarget: menuGridKey,
      alignSkip: Alignment.bottomRight,
      shape: ShapeLightFocus.RRect,
      radius: AppDims.r10,
      contents: [
        TargetContent(
          align: ContentAlign.bottom,
          child: const GuideTourContent(
            title: 'Quick Pick',
            description:
                'Kajian yang baru kamu dengarkan akan muncul di sini untuk akses cepat.',
          ),
        ),
      ],
    ),
    TargetFocus(
      identify: 'quoteCard',
      keyTarget: quoteKey,
      alignSkip: Alignment.bottomRight,
      shape: ShapeLightFocus.RRect,
      radius: AppDims.r10,
      contents: [
        TargetContent(
          align: ContentAlign.bottom,
          child: const GuideTourContent(
            title: 'Kutipan Inspiratif',
            description: 'Dapatkan kutipan dan motivasi harian di sini.',
          ),
        ),
      ],
    ),
    TargetFocus(
      identify: 'horizontalList',
      keyTarget: horizontalListKey,
      alignSkip: Alignment.topRight,
      shape: ShapeLightFocus.RRect,
      radius: AppDims.r10,
      contents: [
        TargetContent(
          align: ContentAlign.top,
          child: const GuideTourContent(
            title: 'Kajian Populer',
            description:
                'Geser ke kanan untuk melihat lebih banyak kajian populer.',
          ),
        ),
      ],
    ),
    TargetFocus(
      identify: 'verticalList',
      keyTarget: verticalListKey,
      alignSkip: Alignment.topRight,
      shape: ShapeLightFocus.RRect,
      radius: AppDims.r10,
      contents: [
        TargetContent(
          align: ContentAlign.top,
          child: const GuideTourContent(
            title: 'Semua Kajian',
            description:
                'Daftar lengkap kajian tersedia di sini. Scroll ke bawah untuk lihat semua.',
          ),
        ),
      ],
    ),
  ];
}
