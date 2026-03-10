import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';
import 'package:mqfm_apps/presentation/organisms/dashboard/horizontal_content_list.dart';

class DashboardCuratedSliver extends StatelessWidget {
  final List<MapEntry<String, List<AudioEntity>>> sections;
  final void Function(int audioId) onAudioTap;

  const DashboardCuratedSliver({
    super.key,
    required this.sections,
    required this.onAudioTap,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => Padding(
          padding: EdgeInsets.only(bottom: AppDims.h24),
          child: RepaintBoundary(
            child: HorizontalContentList(
              title: sections[index].key,
              audios: sections[index].value,
              onAudioTap: onAudioTap,
            ),
          ),
        ),
        childCount: sections.length,
        addAutomaticKeepAlives: false,
        addRepaintBoundaries: false,
      ),
    );
  }
}
