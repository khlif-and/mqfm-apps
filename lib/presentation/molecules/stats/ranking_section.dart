import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/features/stats/domain/entities/stats.dart';

class RankingSection extends StatelessWidget {
  final String title;
  final List<TopItem> items;

  const RankingSection({super.key, required this.title, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: AppColors.textWhite,
            fontSize: AppDims.sp16,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: AppDims.h12),
        ...List.generate(items.length, (index) {
          final item = items[index];
          return Padding(
            padding: EdgeInsets.only(bottom: AppDims.h8),
            child: Row(
              children: [
                SizedBox(
                  width: AppDims.w24,
                  child: Text(
                    '${index + 1}',
                    style: TextStyle(
                      color: AppColors.primary,
                      fontSize: AppDims.sp14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(width: AppDims.w8),
                Expanded(
                  child: Text(
                    item.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: AppColors.textWhite,
                      fontSize: AppDims.sp14,
                    ),
                  ),
                ),
                Text(
                  '${item.minutes} min',
                  style: TextStyle(
                    color: AppColors.textSecondary,
                    fontSize: AppDims.sp12,
                  ),
                ),
              ],
            ),
          );
        }),
      ],
    );
  }
}
