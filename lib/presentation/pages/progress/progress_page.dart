import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mqfm_apps/core/di/injection.dart';
import 'package:mqfm_apps/core/routes/app_path_routes.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/features/progress/applications/progress_bloc/progress_bloc.dart';
import 'package:mqfm_apps/features/progress/applications/progress_bloc/progress_event.dart';
import 'package:mqfm_apps/features/progress/applications/progress_bloc/progress_state.dart';
import 'package:mqfm_apps/presentation/atoms/common/shimmer_list.dart';
import 'package:mqfm_apps/presentation/molecules/common/custom_app_bar.dart';
import 'package:mqfm_apps/presentation/molecules/common/empty_state_card.dart';
import 'package:mqfm_apps/presentation/molecules/progress/progress_tile.dart';

class ProgressPage extends StatelessWidget {
  const ProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ProgressBloc>()
        ..add(const ProgressEvent.fetchAll()),
      child: Builder(
        builder: (context) => Scaffold(
      backgroundColor: AppColors.background,
      appBar: CustomAppBar(
        title: 'Riwayat Progres',
        backgroundColor: AppColors.background,
      ),
      body: BlocBuilder<ProgressBloc, ProgressState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const ShimmerList(itemCount: 8, hasTrailing: true),
            loaded: (progressList) {
              if (progressList.isEmpty) {
                return Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: AppDims.w24),
                    child: const EmptyStateCard(
                      icon: Icons.trending_up,
                      message: 'Belum ada progres mendengarkan',
                    ),
                  ),
                );
              }
              return RefreshIndicator(
                onRefresh: () async {
                  context.read<ProgressBloc>().add(
                    const ProgressEvent.fetchAll(),
                  );
                },
                child: ListView.builder(
                  physics: const AlwaysScrollableScrollPhysics(),
                  cacheExtent: 500,
                  itemCount: progressList.length,
                  itemBuilder: (context, index) {
                    final progress = progressList[index];
                    return RepaintBoundary(
                      child: ProgressTile(
                        progress: progress,
                        onTap: () => context.push(
                          AppPathRoutes.playerWithId(
                            progress.audioId.toString(),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              );
            },
            error: (message) => Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: AppDims.w24),
                child: EmptyStateCard(
                  icon: Icons.error_outline,
                  message: message,
                ),
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
