import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mqfm_apps/core/di/injection.dart';
import 'package:mqfm_apps/core/routes/app_path_routes.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/features/resume/applications/resume_bloc/resume_bloc.dart';
import 'package:mqfm_apps/features/resume/applications/resume_bloc/resume_event.dart';
import 'package:mqfm_apps/features/resume/applications/resume_bloc/resume_state.dart';
import 'package:mqfm_apps/presentation/atoms/common/shimmer_list.dart';
import 'package:mqfm_apps/presentation/molecules/common/content_tile.dart';
import 'package:mqfm_apps/presentation/molecules/common/custom_app_bar.dart';
import 'package:mqfm_apps/presentation/molecules/common/empty_state_card.dart';

class ResumePage extends StatelessWidget {
  const ResumePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ResumeBloc>()
        ..add(const ResumeEvent.fetch()),
      child: const _ResumeView(),
    );
  }
}

class _ResumeView extends StatelessWidget {
  const _ResumeView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: CustomAppBar(
        title: 'Lanjutkan Mendengarkan',
        backgroundColor: AppColors.background,
      ),
      body: BlocBuilder<ResumeBloc, ResumeState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const ShimmerList(itemCount: 6),
            loaded: (resumes) {
              if (resumes.isEmpty) {
                return Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: AppDims.w24),
                    child: const EmptyStateCard(
                      icon: Icons.play_circle_outline,
                      message: 'Belum ada audio untuk dilanjutkan',
                    ),
                  ),
                );
              }
              return RefreshIndicator(
                onRefresh: () async {
                  context.read<ResumeBloc>().add(
                    const ResumeEvent.fetch(),
                  );
                },
                child: ListView.builder(
                  physics: const AlwaysScrollableScrollPhysics(),
                  cacheExtent: 500,
                  itemCount: resumes.length,
                  itemBuilder: (context, index) {
                    final resume = resumes[index];
                    final min = resume.positionSeconds ~/ 60;
                    final sec = resume.positionSeconds % 60;
                    final formatted =
                        '${min.toString().padLeft(2, '0')}:${sec.toString().padLeft(2, '0')}';

                    return RepaintBoundary(
                      child: ContentTile(
                        title: 'Audio #${resume.audioId}',
                        subtitle: 'Posisi terakhir: $formatted',
                        leadingIcon: Icons.play_circle_fill,
                        trailing: Icon(
                          Icons.chevron_right,
                          color: AppColors.textSecondary,
                          size: AppDims.sp20,
                        ),
                        onTap: () => context.push(
                          AppPathRoutes.playerWithId(
                            resume.audioId.toString(),
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
