import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/features/series/applications/series_bloc/series_bloc.dart';
import 'package:mqfm_apps/features/series/applications/series_bloc/series_event.dart';
import 'package:mqfm_apps/features/series/applications/series_bloc/series_state.dart';
import 'package:mqfm_apps/features/series/domain/entities/series.dart';
import 'package:mqfm_apps/presentation/atoms/common/section_header.dart';
import 'package:mqfm_apps/presentation/atoms/common/shimmer_box.dart';
import 'package:mqfm_apps/presentation/molecules/series/series_tile.dart';

class SeriesSection extends StatelessWidget {
  final void Function(int seriesId)? onSeriesTap;
  final VoidCallback? onSeeAll;

  const SeriesSection({super.key, this.onSeriesTap, this.onSeeAll});

  List<SeriesEntity> _deduplicate(List<SeriesEntity> series) {
    final seen = <String>{};
    final unique = <SeriesEntity>[];
    for (final s in series) {
      if (seen.add(s.title)) unique.add(s);
    }
    return unique;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SeriesBloc, SeriesState>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => _buildShimmer(),
          loaded: (series) {
            final unique = _deduplicate(series);
            return unique.isEmpty
                ? const SizedBox.shrink()
                : _buildContent(unique);
          },
          error: (_) => _buildError(context),
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
          GridView.builder(
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: AppDims.h8,
              crossAxisSpacing: AppDims.w12,
              mainAxisExtent: AppDims.h48,
            ),
            itemCount: 4,
            itemBuilder: (_, _) => Row(
              children: [
                ShimmerBox(
                  width: AppDims.r42,
                  height: AppDims.r42,
                  borderRadius: AppDims.r6,
                ),
                SizedBox(width: AppDims.w10),
                Expanded(
                  child: ShimmerBox(width: AppDims.w120, height: AppDims.h14),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildError(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeader(title: 'Series Kajian'),
        SizedBox(height: AppDims.h12),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppDims.w16),
          child: GestureDetector(
            onTap: () =>
                context.read<SeriesBloc>().add(const SeriesEvent.fetch()),
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: AppDims.h20),
              decoration: BoxDecoration(
                color: AppColors.surfaceCard,
                borderRadius: BorderRadius.circular(AppDims.r12),
              ),
              child: Column(
                children: [
                  Icon(
                    Icons.refresh_rounded,
                    color: AppColors.primary,
                    size: AppDims.sp32,
                  ),
                  SizedBox(height: AppDims.h8),
                  Text(
                    'Gagal memuat series',
                    style: TextStyle(
                      color: AppColors.textWhite,
                      fontSize: AppDims.sp14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: AppDims.h4),
                  Text(
                    'Ketuk untuk coba lagi',
                    style: TextStyle(
                      color: AppColors.textSecondary,
                      fontSize: AppDims.sp11,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildContent(List<SeriesEntity> series) {
    final display = series.take(8).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeader(title: 'Series Kajian', onSeeAll: onSeeAll),
        SizedBox(height: AppDims.h12),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppDims.w16),
          child: GridView.builder(
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: AppDims.h8,
              crossAxisSpacing: AppDims.w12,
              mainAxisExtent: AppDims.h48,
            ),
            itemCount: display.length,
            itemBuilder: (_, index) {
              final s = display[index];
              return SeriesTile(
                title: s.title,
                imageUrl: s.imageUrl,
                onTap: () => onSeriesTap?.call(s.id),
              );
            },
          ),
        ),
      ],
    );
  }
}
