import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/features/series/applications/series_bloc/series_bloc.dart';
import 'package:mqfm_apps/features/series/applications/series_bloc/series_state.dart';
import 'package:mqfm_apps/features/series/domain/entities/series.dart';
import 'package:mqfm_apps/presentation/atoms/common/section_header.dart';
import 'package:mqfm_apps/presentation/atoms/common/shimmer_box.dart';

class SeriesSection extends StatelessWidget {
  final void Function(int seriesId)? onSeriesTap;
  final VoidCallback? onSeeAll;

  const SeriesSection({super.key, this.onSeriesTap, this.onSeeAll});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SeriesBloc, SeriesState>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => _buildShimmer(),
          loaded: (series) => series.isEmpty
              ? const SizedBox.shrink()
              : _buildContent(series),
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
            padding: EdgeInsets.only(bottom: AppDims.h8),
            child: Row(children: [
              ShimmerBox(width: AppDims.r42, height: AppDims.r42, borderRadius: AppDims.r6),
              SizedBox(width: AppDims.w12),
              ShimmerBox(width: AppDims.w120, height: AppDims.h14),
            ]),
          )),
        ],
      ),
    );
  }

  Widget _buildContent(List<SeriesEntity> series) {
    final episodes = <_EpisodeItem>[];
    for (final s in series) {
      for (final item in s.items.take(3)) {
        episodes.add(_EpisodeItem(title: item.title, seriesId: s.id));
      }
    }
    final display = episodes.take(6).toList();

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
              mainAxisSpacing: AppDims.h4,
              crossAxisSpacing: AppDims.w16,
              mainAxisExtent: AppDims.h48,
            ),
            itemCount: display.length,
            itemBuilder: (_, index) {
              final ep = display[index];
              return _SeriesEpisodeTile(
                title: ep.title,
                onTap: () => onSeriesTap?.call(ep.seriesId),
              );
            },
          ),
        ),
      ],
    );
  }
}

class _EpisodeItem {
  final String title;
  final int seriesId;
  const _EpisodeItem({required this.title, required this.seriesId});
}

class _SeriesEpisodeTile extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;

  const _SeriesEpisodeTile({required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Row(
        children: [
          Container(
            width: AppDims.r36,
            height: AppDims.r36,
            decoration: BoxDecoration(
              color: AppColors.surfaceCard,
              borderRadius: BorderRadius.circular(AppDims.r6),
            ),
          ),
          SizedBox(width: AppDims.w10),
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                color: AppColors.textWhite,
                fontSize: AppDims.sp13,
                fontWeight: FontWeight.w500,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Icon(Icons.more_vert, color: AppColors.textSecondary, size: AppDims.sp18),
        ],
      ),
    );
  }
}
