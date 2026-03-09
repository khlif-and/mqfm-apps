import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/features/stats/domain/entities/stats.dart';
import 'package:mqfm_apps/presentation/atoms/common/stat_card.dart';
import 'package:mqfm_apps/presentation/molecules/stats/daily_stats_section.dart';
import 'package:mqfm_apps/presentation/molecules/stats/ranking_section.dart';

class StatsContent extends StatelessWidget {
  final StatsRecapEntity recap;

  const StatsContent({super.key, required this.recap});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const AlwaysScrollableScrollPhysics(),
      padding: EdgeInsets.all(AppDims.r16),
      cacheExtent: 500,
      children: [
        Row(
          children: [
            Expanded(
              child: StatCard(
                icon: Icons.calendar_today,
                label: 'Minggu Ini',
                value: '${recap.weeklyMinutes} min',
              ),
            ),
            SizedBox(width: AppDims.w12),
            Expanded(
              child: StatCard(
                icon: Icons.date_range,
                label: 'Bulan Ini',
                value: '${recap.monthlyMinutes} min',
                iconColor: AppColors.textSecondary,
              ),
            ),
          ],
        ),
        SizedBox(height: AppDims.h24),
        if (recap.topCategories.isNotEmpty)
          RankingSection(title: 'Kategori Teratas', items: recap.topCategories),
        if (recap.topArtists.isNotEmpty) ...[
          SizedBox(height: AppDims.h24),
          RankingSection(title: 'Artis Teratas', items: recap.topArtists),
        ],
        if (recap.dailyStats.isNotEmpty) ...[
          SizedBox(height: AppDims.h24),
          DailyStatsSection(dailyStats: recap.dailyStats),
        ],
      ],
    );
  }
}
