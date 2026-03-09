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
import 'package:mqfm_apps/presentation/atoms/common/shimmer_list.dart';
import 'package:mqfm_apps/presentation/molecules/common/custom_app_bar.dart';
import 'package:mqfm_apps/presentation/molecules/common/empty_state_card.dart';
import 'package:mqfm_apps/presentation/molecules/series/series_card.dart';

class SeriesPage extends StatelessWidget {
  const SeriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<SeriesBloc>()..add(const SeriesEvent.fetch()),
      child: const _SeriesView(),
    );
  }
}

class _SeriesView extends StatelessWidget {
  const _SeriesView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: const CustomAppBar(
        title: 'Seri Kajian',
        backgroundColor: AppColors.background,
      ),
      body: BlocBuilder<SeriesBloc, SeriesState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox.shrink(),
            loading: () => const ShimmerList(itemCount: 6),
            loaded: (seriesList) {
              if (seriesList.isEmpty) {
                return Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: AppDims.w24),
                    child: const EmptyStateCard(
                      icon: Icons.library_music_outlined,
                      message: 'Belum ada seri kajian tersedia',
                    ),
                  ),
                );
              }
              return RefreshIndicator(
                onRefresh: () async {
                  context.read<SeriesBloc>().add(const SeriesEvent.fetch());
                },
                child: GridView.builder(
                  padding: EdgeInsets.all(AppDims.w16),
                  physics: const AlwaysScrollableScrollPhysics(),
                  cacheExtent: 500,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: AppDims.w12,
                    mainAxisSpacing: AppDims.h12,
                    childAspectRatio: 0.7,
                  ),
                  itemCount: seriesList.length,
                  itemBuilder: (context, index) {
                    return RepaintBoundary(
                      child: SeriesCard(
                        series: seriesList[index],
                        onTap: () => context.push(
                          '${AppPathRoutes.series}/${seriesList[index].id}',
                        ),
                      ),
                    );
                  },
                ),
              );
            },
            detail: (_) => const SizedBox.shrink(),
            error: (message) => Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: AppDims.w24),
                child: EmptyStateCard(
                  icon: Icons.error_outline,
                  message: message,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
