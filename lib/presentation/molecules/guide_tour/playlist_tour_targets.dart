import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';
import 'package:mqfm_apps/presentation/atoms/guide_tour/guide_tour_content.dart';

List<TargetFocus> buildPlaylistTargets({
  required GlobalKey headerKey,
  required GlobalKey searchKey,
  required GlobalKey staticItemsKey,
  required GlobalKey playlistListKey,
}) {
  return [
    TargetFocus(
      identify: 'playlistHeader',
      keyTarget: headerKey,
      alignSkip: Alignment.bottomRight,
      shape: ShapeLightFocus.RRect,
      radius: 10,
      contents: [
        TargetContent(
          align: ContentAlign.bottom,
          child: const GuideTourContent(
            title: 'Profil Pustaka',
            description: 'Lihat profil dan kelola pustaka kajian kamu di sini.',
          ),
        ),
      ],
    ),
    TargetFocus(
      identify: 'playlistSearch',
      keyTarget: searchKey,
      alignSkip: Alignment.bottomRight,
      shape: ShapeLightFocus.Circle,
      contents: [
        TargetContent(
          align: ContentAlign.bottom,
          child: const GuideTourContent(
            title: 'Cari Playlist',
            description: 'Tap ikon ini untuk mencari playlist kajian kamu.',
          ),
        ),
      ],
    ),
    TargetFocus(
      identify: 'playlistStaticItems',
      keyTarget: staticItemsKey,
      alignSkip: Alignment.bottomRight,
      shape: ShapeLightFocus.RRect,
      radius: 10,
      contents: [
        TargetContent(
          align: ContentAlign.bottom,
          child: const GuideTourContent(
            title: 'Kajian Favorit & Terbaru',
            description:
                'Akses cepat ke kajian favorit dan yang baru ditambahkan.',
          ),
        ),
      ],
    ),
    TargetFocus(
      identify: 'playlistList',
      keyTarget: playlistListKey,
      alignSkip: Alignment.topRight,
      shape: ShapeLightFocus.RRect,
      radius: 10,
      contents: [
        TargetContent(
          align: ContentAlign.top,
          child: const GuideTourContent(
            title: 'Daftar Playlist',
            description:
                'Semua playlist kajian kamu ada di sini. Tap untuk membuka.',
          ),
        ),
      ],
    ),
  ];
}
