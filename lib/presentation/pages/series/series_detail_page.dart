import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mqfm_apps/core/di/injection.dart';
import 'package:mqfm_apps/core/routes/app_path_routes.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/features/series/applications/series_bloc/series_bloc.dart';
import 'package:mqfm_apps/features/series/applications/series_bloc/series_event.dart';
import 'package:mqfm_apps/features/series/applications/series_bloc/series_state.dart';
import 'package:mqfm_apps/presentation/atoms/common/app_network_image.dart';
import 'package:mqfm_apps/presentation/atoms/common/shimmer_list.dart';
import 'package:mqfm_apps/presentation/molecules/common/content_tile.dart';

class SeriesDetailPage extends StatelessWidget {
  final String seriesId;

  const SeriesDetailPage({super.key, required this.seriesId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<SeriesBloc>()
        ..add(SeriesEvent.fetchDetail(id: int.parse(seriesId))),
      child: Builder(
        builder: (context) => Scaffold(
      backgroundColor: AppColors.background,
      body: BlocBuilder<SeriesBloc, SeriesState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const Scaffold(
              backgroundColor: AppColors.background,
              body: ShimmerList(itemCount: 8),
            ),
            detail: (series) {
              return CustomScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                cacheExtent: 500,
                slivers: [
                  SliverAppBar(
                    expandedHeight: AppDims.h220,
                    pinned: true,
                    backgroundColor: AppColors.background,
                    leading: IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                        color: AppColors.textWhite,
                      ),
                      onPressed: () => context.pop(),
                    ),
                    flexibleSpace: FlexibleSpaceBar(
                      title: Text(
                        series.title,
                        style: TextStyle(
                          color: AppColors.textWhite,
                          fontSize: AppDims.sp16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      background: Stack(
                        fit: StackFit.expand,
                        children: [
                          AppNetworkImage(
                            url: series.imageUrl,
                            fit: BoxFit.cover,
                          ),
                          const DecoratedBox(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.transparent,
                                  AppColors.background,
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.all(AppDims.w16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            series.artist,
                            style: TextStyle(
                              color: AppColors.primary,
                              fontSize: AppDims.sp14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: AppDims.h8),
                          Text(
                            series.description,
                            style: TextStyle(
                              color: AppColors.textSecondary,
                              fontSize: AppDims.sp13,
                            ),
                          ),
                          SizedBox(height: AppDims.h8),
                          Text(
                            '${series.items.length} Episode',
                            style: TextStyle(
                              color: AppColors.textMuted,
                              fontSize: AppDims.sp12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        final audio = series.items[index];
                        return RepaintBoundary(
                          child: ContentTile(
                            title: audio.title,
                            subtitle: audio.artist,
                            imageUrl: audio.thumbnail,
                            trailing: Icon(
                              Icons.play_circle_filled,
                              color: AppColors.success,
                              size: AppDims.r32,
                            ),
                            onTap: () => context.push(
                              AppPathRoutes.playerWithId(
                                audio.id.toString(),
                              ),
                            ),
                          ),
                        );
                      },
                      childCount: series.items.length,
                      addAutomaticKeepAlives: false,
                      addRepaintBoundaries: false,
                    ),
                  ),
                  SliverToBoxAdapter(child: SizedBox(height: AppDims.h30)),
                ],
              );
            },
            error: (message) => Center(
              child: Text(
                message,
                style: TextStyle(color: AppColors.textSecondary),
              ),
            ),
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    ),
      ),
    );
  }
}
