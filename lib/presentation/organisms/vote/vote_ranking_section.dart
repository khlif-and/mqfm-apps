import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/features/vote/applications/vote_bloc/vote_bloc.dart';
import 'package:mqfm_apps/features/vote/applications/vote_bloc/vote_state.dart';
import 'package:mqfm_apps/features/vote/domain/entities/vote.dart';
import 'package:mqfm_apps/presentation/atoms/common/section_header.dart';
import 'package:mqfm_apps/presentation/atoms/common/shimmer_box.dart';
import 'package:mqfm_apps/presentation/molecules/vote/ranking_tile.dart';

class VoteRankingSection extends StatelessWidget {
  final void Function(int audioId)? onAudioTap;
  final VoidCallback? onSeeAll;

  const VoteRankingSection({super.key, this.onAudioTap, this.onSeeAll});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VoteBloc, VoteState>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => _buildShimmer(),
          rankingLoaded: (rankings) => rankings.isEmpty ? const SizedBox.shrink() : _buildContent(rankings),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget _buildShimmer() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDims.w16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShimmerBox(width: AppDims.w140, height: AppDims.h20),
          SizedBox(height: AppDims.h16),
          ...List.generate(3, (_) => Padding(
            padding: EdgeInsets.only(bottom: AppDims.h12),
            child: Row(
              children: [
                ShimmerBox(width: AppDims.r40, height: AppDims.r40, borderRadius: AppDims.r20),
                SizedBox(width: AppDims.w12),
                ShimmerBox(width: AppDims.w200, height: AppDims.h14),
              ],
            ),
          )),
        ],
      ),
    );
  }

  Widget _buildContent(List<VoteRankingEntity> rankings) {
    final top = rankings.take(5).toList();
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDims.w16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionHeader(title: 'Ranking Mingguan', onSeeAll: onSeeAll),
          SizedBox(height: AppDims.h16),
          ListView.separated(
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: top.length,
            addAutomaticKeepAlives: false,
            addRepaintBoundaries: false,
            separatorBuilder: (_, _) => SizedBox(height: AppDims.h8),
            itemBuilder: (_, index) {
              final item = top[index];
              return RepaintBoundary(child: RankingTile(ranking: item, position: index + 1, onTap: () => onAudioTap?.call(item.audioId)));
            },
          ),
        ],
      ),
    );
  }
}
