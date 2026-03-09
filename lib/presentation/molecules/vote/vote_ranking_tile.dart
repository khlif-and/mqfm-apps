import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/features/vote/domain/entities/vote.dart';
import 'package:mqfm_apps/presentation/atoms/common/app_network_image.dart';

class VoteRankingTile extends StatelessWidget {
  final VoteRankingEntity ranking;
  final VoidCallback? onVote;
  final bool hasVoted;

  const VoteRankingTile({
    super.key,
    required this.ranking,
    this.onVote,
    this.hasVoted = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppDims.w16,
        vertical: AppDims.h8,
      ),
      child: Row(
        children: [
          SizedBox(
            width: AppDims.w32,
            child: Text(
              '#${ranking.rank}',
              style: TextStyle(
                color: ranking.rank <= 3
                    ? AppColors.primary
                    : AppColors.textSecondary,
                fontSize: AppDims.sp16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(width: AppDims.w8),
          AppNetworkImage(
            url: ranking.thumbnail,
            width: AppDims.r50,
            height: AppDims.r50,
            borderRadius: AppDims.r8,
          ),
          SizedBox(width: AppDims.w12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ranking.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: AppColors.textWhite,
                    fontSize: AppDims.sp14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: AppDims.h2),
                Text(
                  ranking.artist,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: AppColors.textSecondary,
                    fontSize: AppDims.sp12,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: AppDims.w8),
          Column(
            children: [
              GestureDetector(
                onTap: onVote,
                child: Icon(
                  hasVoted ? Icons.favorite : Icons.favorite_border,
                  color: hasVoted ? AppColors.primary : AppColors.textSecondary,
                  size: AppDims.sp22,
                ),
              ),
              SizedBox(height: AppDims.h2),
              Text(
                '${ranking.voteCount}',
                style: TextStyle(
                  color: AppColors.textSecondary,
                  fontSize: AppDims.sp10,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
