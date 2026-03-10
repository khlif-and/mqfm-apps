import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/features/artikel/applications/artikel_bloc/artikel_bloc.dart';
import 'package:mqfm_apps/features/artikel/applications/artikel_bloc/artikel_state.dart';
import 'package:mqfm_apps/features/artikel/domain/entities/artikel.dart';
import 'package:mqfm_apps/presentation/atoms/common/section_header.dart';
import 'package:mqfm_apps/presentation/atoms/common/shimmer_box.dart';
import 'package:mqfm_apps/presentation/molecules/artikel/artikel_card.dart';

class ArtikelSection extends StatelessWidget {
  final VoidCallback? onSeeAll;
  final void Function(String link)? onArtikelTap;

  const ArtikelSection({super.key, this.onSeeAll, this.onArtikelTap});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ArtikelListBloc, ArtikelListState>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => _buildShimmer(),
          loaded: (channel) => channel.contents.isEmpty
              ? const SizedBox.shrink()
              : _buildContent(channel.contents),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget _buildShimmer() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppDims.w16),
          child: ShimmerBox(width: AppDims.w140, height: AppDims.h20),
        ),
        SizedBox(height: AppDims.h16),
        SizedBox(
          height: AppDims.h180,
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: AppDims.w16),
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            separatorBuilder: (_, _) => SizedBox(width: AppDims.w12),
            itemBuilder: (_, _) => ShimmerBox(
              width: AppDims.w140,
              height: AppDims.h180,
              borderRadius: AppDims.r12,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildContent(List<ArtikelEntity> artikels) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeader(title: 'Artikel MQFM', onSeeAll: onSeeAll),
        SizedBox(height: AppDims.h12),
        SizedBox(
          height: AppDims.h210,
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: AppDims.w16),
            scrollDirection: Axis.horizontal,
            itemCount: artikels.length,
            cacheExtent: 300,
            addAutomaticKeepAlives: false,
            addRepaintBoundaries: false,
            separatorBuilder: (_, _) => SizedBox(width: AppDims.w12),
            itemBuilder: (_, index) {
              final item = artikels[index];
              return RepaintBoundary(
                child: ArtikelCard(
                  artikel: item,
                  onTap: () => onArtikelTap?.call(item.link),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
