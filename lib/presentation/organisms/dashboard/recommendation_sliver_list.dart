import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_strings.dart';
import 'package:mqfm_apps/features/recommendation/applications/recommendation_bloc/recommendation_bloc.dart';
import 'package:mqfm_apps/features/recommendation/applications/recommendation_bloc/recommendation_state.dart';
import 'package:mqfm_apps/presentation/organisms/dashboard/horizontal_content_list.dart';

class RecommendationSliverList extends StatelessWidget {
  final void Function(int audioId) onAudioTap;

  const RecommendationSliverList({super.key, required this.onAudioTap});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecommendationBloc, RecommendationState>(
      builder: (context, recState) {
        final recSections = <Widget>[];

        if (recState.personalized.isNotEmpty) {
          recSections.add(RepaintBoundary(
            child: HorizontalContentList(
              title: AppStrings.personalizedForYou,
              audios: recState.personalized,
              isLoading: recState.isLoading,
              onAudioTap: onAudioTap,
            ),
          ));
        }
        if (recState.popular.isNotEmpty) {
          recSections.add(RepaintBoundary(
            child: HorizontalContentList(
              title: AppStrings.mostPopular,
              audios: recState.popular,
              isLoading: recState.isLoading,
              onAudioTap: onAudioTap,
            ),
          ));
        }
        if (recState.quickPick.isNotEmpty) {
          recSections.add(RepaintBoundary(
            child: HorizontalContentList(
              title: AppStrings.quickPick,
              audios: recState.quickPick,
              isLoading: recState.isLoading,
              onAudioTap: onAudioTap,
            ),
          ));
        }
        if (recState.byArtist.isNotEmpty && recState.artistName.isNotEmpty) {
          recSections.add(RepaintBoundary(
            child: HorizontalContentList(
              title: '${AppStrings.kajianArtist} ${recState.artistName}',
              audios: recState.byArtist.take(10).toList(),
              isLoading: recState.isLoading,
              onAudioTap: onAudioTap,
            ),
          ));
        }

        return SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => Padding(
              padding: EdgeInsets.only(bottom: AppDims.h24),
              child: recSections[index],
            ),
            childCount: recSections.length,
            addAutomaticKeepAlives: false,
            addRepaintBoundaries: false,
          ),
        );
      },
    );
  }
}
