import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/features/stats/domain/entities/stats.dart';

class DailyStatsSection extends StatelessWidget {
  final List<DailyStat> dailyStats;

  const DailyStatsSection({super.key, required this.dailyStats});

  @override
  Widget build(BuildContext context) {
    final maxMinutes = dailyStats
        .map((e) => e.minutes)
        .fold<int>(1, (a, b) => a > b ? a : b);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Aktivitas Harian',
          style: TextStyle(
            color: AppColors.textWhite,
            fontSize: AppDims.sp16,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: AppDims.h12),
        ...dailyStats.map((stat) {
          final ratio = stat.minutes / maxMinutes;
          return Padding(
            padding: EdgeInsets.only(bottom: AppDims.h6),
            child: Row(
              children: [
                SizedBox(
                  width: AppDims.w80,
                  child: Text(
                    stat.date,
                    style: TextStyle(
                      color: AppColors.textSecondary,
                      fontSize: AppDims.sp12,
                    ),
                  ),
                ),
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(AppDims.r4),
                    child: LinearProgressIndicator(
                      value: ratio,
                      minHeight: AppDims.h14,
                      backgroundColor: AppColors.surfaceHighlight,
                      valueColor: AlwaysStoppedAnimation<Color>(
                        AppColors.primary,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: AppDims.w8),
                SizedBox(
                  width: AppDims.w40,
                  child: Text(
                    '${stat.minutes}m',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      color: AppColors.textSecondary,
                      fontSize: AppDims.sp12,
                    ),
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
