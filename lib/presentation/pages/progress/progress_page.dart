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
import 'package:mqfm_apps/features/progress/domain/entities/progress.dart';
import 'package:mqfm_apps/presentation/atoms/common/shimmer_list.dart';
import 'package:mqfm_apps/presentation/molecules/common/custom_app_bar.dart';
import 'package:mqfm_apps/presentation/molecules/common/empty_state_card.dart';

class ProgressPage extends StatelessWidget {
  const ProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ProgressBloc>()
        ..add(const ProgressEvent.fetchAll()),
      child: const _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      child: _ProgressTile(
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
    );
  }
}

class _ProgressTile extends StatelessWidget {
  final ProgressEntity progress;
  final VoidCallback? onTap;

  const _ProgressTile({required this.progress, this.onTap});

  @override
  Widget build(BuildContext context) {
    final percentage = (progress.percentage * 100).clamp(0, 100).toInt();
    final isCompleted = progress.completed;

    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppDims.w16,
          vertical: AppDims.h10,
        ),
        child: Row(
          children: [
            SizedBox(
              width: AppDims.r50,
              height: AppDims.r50,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CircularProgressIndicator(
                    value: progress.percentage,
                    strokeWidth: 3,
                    backgroundColor: AppColors.surfaceHighlight,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      isCompleted ? AppColors.primary : AppColors.textSecondary,
                    ),
                  ),
                  Text(
                    '$percentage%',
                    style: TextStyle(
                      color: AppColors.textWhite,
                      fontSize: AppDims.sp10,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: AppDims.w12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Audio #${progress.audioId}',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: AppColors.textWhite,
                      fontSize: AppDims.sp14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: AppDims.h4),
                  Text(
                    _formatDuration(progress.lastPosition, progress.duration),
                    style: TextStyle(
                      color: AppColors.textSecondary,
                      fontSize: AppDims.sp12,
                    ),
                  ),
                ],
              ),
            ),
            if (isCompleted)
              Icon(
                Icons.check_circle,
                color: AppColors.primary,
                size: AppDims.sp20,
              ),
          ],
        ),
      ),
    );
  }

  String _formatDuration(int position, int duration) {
    final posMin = position ~/ 60;
    final posSec = position % 60;
    final durMin = duration ~/ 60;
    final durSec = duration % 60;
    return '${posMin.toString().padLeft(2, '0')}:${posSec.toString().padLeft(2, '0')} / '
        '${durMin.toString().padLeft(2, '0')}:${durSec.toString().padLeft(2, '0')}';
  }
}
