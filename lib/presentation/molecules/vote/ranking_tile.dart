import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/features/vote/domain/entities/vote.dart';
import 'package:mqfm_apps/presentation/atoms/common/app_network_image.dart';

class RankingTile extends StatelessWidget {
  final VoteRankingEntity ranking;
  final int position;
  final VoidCallback? onTap;

  const RankingTile({super.key, required this.ranking, required this.position, this.onTap});

  String _formatLikes(int count) {
    if (count >= 1000000) return '${(count / 1000000).toStringAsFixed(1)}M';
    if (count >= 1000) return '${(count / 1000).toStringAsFixed(1)}K';
    return '$count';
  }

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
              _formatLikes(ranking.likes),
              style: TextStyle(color: AppColors.primary, fontSize: AppDims.sp13, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
