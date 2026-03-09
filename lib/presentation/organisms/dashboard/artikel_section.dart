import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/features/artikel/applications/artikel_bloc/artikel_bloc.dart';
import 'package:mqfm_apps/features/artikel/applications/artikel_bloc/artikel_state.dart';
import 'package:mqfm_apps/features/artikel/domain/entities/artikel.dart';
import 'package:mqfm_apps/presentation/atoms/common/section_header.dart';
import 'package:mqfm_apps/presentation/atoms/common/app_network_image.dart';
import 'package:mqfm_apps/presentation/atoms/common/shimmer_box.dart';

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
                child: _ArtikelCard(
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

class _ArtikelCard extends StatelessWidget {
  final ArtikelEntity artikel;
  final VoidCallback? onTap;

  const _ArtikelCard({required this.artikel, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: AppDims.w140,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppNetworkImage(
              url: artikel.image,
              width: AppDims.w140,
              height: AppDims.r140,
              borderRadius: AppDims.r12,
            ),
            SizedBox(height: AppDims.h8),
            Text(
              artikel.title,
              style: TextStyle(
                color: AppColors.textWhite,
                fontSize: AppDims.sp12,
                fontWeight: FontWeight.w600,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
