import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';
import 'package:mqfm_apps/presentation/atoms/guide_tour/guide_tour_content.dart';

List<TargetFocus> buildSearchTargets({
  required GlobalKey profileKey,
  required GlobalKey searchBarKey,
  required GlobalKey mixedKey,
  required GlobalKey discoverKey,
}) {
  return [
    TargetFocus(
      identify: 'searchProfile',
      keyTarget: profileKey,
      alignSkip: Alignment.bottomRight,
      shape: ShapeLightFocus.Circle,
      contents: [
        TargetContent(
          align: ContentAlign.bottom,
          child: const GuideTourContent(
            title: 'Profil Kamu',
            description: 'Tap untuk melihat profil kamu.',
          ),
        ),
      ],
    ),
    TargetFocus(
      identify: 'searchBar',
      keyTarget: searchBarKey,
      alignSkip: Alignment.bottomRight,
      shape: ShapeLightFocus.RRect,
      radius: 10,
      contents: [
        TargetContent(
          align: ContentAlign.bottom,
          child: const GuideTourContent(
            title: 'Cari Podcast',
            description: 'Ketik di sini untuk mencari podcast atau kajian.',
          ),
        ),
      ],
    ),
    TargetFocus(
      identify: 'mixedForYou',
      keyTarget: mixedKey,
      alignSkip: Alignment.bottomRight,
      shape: ShapeLightFocus.RRect,
      radius: 10,
      contents: [
        TargetContent(
          align: ContentAlign.bottom,
          child: const GuideTourContent(
            title: 'Mixed For You',
            description: 'Koleksi kajian yang dipilihkan khusus untuk kamu.',
          ),
        ),
      ],
    ),
    TargetFocus(
      identify: 'discoverNew',
      keyTarget: discoverKey,
      alignSkip: Alignment.topRight,
      shape: ShapeLightFocus.RRect,
      radius: 10,
      contents: [
        TargetContent(
          align: ContentAlign.top,
          child: const GuideTourContent(
            title: 'Discover Something New',
            description: 'Temukan kajian baru yang menarik di sini.',
          ),
        ),
      ],
    ),
  ];
}
