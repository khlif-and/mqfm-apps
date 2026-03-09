import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/features/vote/applications/vote_bloc/vote_bloc.dart';
import 'package:mqfm_apps/features/vote/applications/vote_bloc/vote_state.dart';
import 'package:mqfm_apps/features/vote/domain/entities/vote.dart';
import 'package:mqfm_apps/presentation/atoms/common/app_network_image.dart';
import 'package:mqfm_apps/presentation/atoms/common/section_header.dart';
import 'package:mqfm_apps/presentation/atoms/common/shimmer_box.dart';

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
              return RepaintBoundary(child: _RankingTile(ranking: item, position: index + 1, onTap: () => onAudioTap?.call(item.audioId)));
            },
          ),
        ],
      ),
    );
  }
}

class _RankingTile extends StatelessWidget {
  final VoteRankingEntity ranking;
  final int position;
  final VoidCallback? onTap;

  const _RankingTile({required this.ranking, required this.position, this.onTap});

  @override
  Widget build(BuildContext context) {
    final isTop3 = position <= 3;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: AppDims.w12, vertical: AppDims.h10),
        decoration: BoxDecoration(
          color: isTop3 ? AppColors.primary.withValues(alpha: 0.08) : AppColors.surfaceCard,
          borderRadius: BorderRadius.circular(AppDims.r12),
        ),
        child: Row(
          children: [
            SizedBox(
              width: AppDims.w30,
              child: Text(
                '#$position',
                style: TextStyle(
                  color: isTop3 ? AppColors.primary : AppColors.textSecondary,
                  fontSize: AppDims.sp16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(width: AppDims.w8),
            AppNetworkImage(
              url: ranking.thumbnail,
              width: AppDims.r40,
              height: AppDims.r40,
              borderRadius: AppDims.r8,
            ),
            SizedBox(width: AppDims.w12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    ranking.title,
                    style: TextStyle(
                      color: AppColors.textWhite,
                      fontSize: AppDims.sp13,
                      fontWeight: FontWeight.w600,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    ranking.artist,
                    style: TextStyle(color: AppColors.textSecondary, fontSize: AppDims.sp11),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            Icon(Icons.how_to_vote_rounded, color: AppColors.primary, size: AppDims.sp18),
            SizedBox(width: AppDims.w4),
            Text(
              '${ranking.voteCount}',
              style: TextStyle(color: AppColors.primary, fontSize: AppDims.sp13, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
