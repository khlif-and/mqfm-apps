import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/features/resume/applications/resume_bloc/resume_bloc.dart';
import 'package:mqfm_apps/features/resume/applications/resume_bloc/resume_state.dart';
import 'package:mqfm_apps/features/resume/domain/entities/resume.dart';
import 'package:mqfm_apps/presentation/atoms/common/section_header.dart';
import 'package:mqfm_apps/presentation/atoms/common/shimmer_box.dart';

class ResumeSection extends StatelessWidget {
  final void Function(int audioId)? onResumeTap;
  final VoidCallback? onSeeAll;

  const ResumeSection({super.key, this.onResumeTap, this.onSeeAll});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResumeBloc, ResumeState>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => _buildShimmer(),
          loaded: (resumes) => resumes.isEmpty ? const SizedBox.shrink() : _buildContent(resumes),
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
          ...List.generate(2, (_) => Padding(
            padding: EdgeInsets.only(bottom: AppDims.h12),
            child: Row(
              children: [
                ShimmerBox(width: AppDims.r50, height: AppDims.r50, borderRadius: AppDims.r8),
                SizedBox(width: AppDims.w12),
                Expanded(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ShimmerBox(width: AppDims.w200, height: AppDims.h14),
                    SizedBox(height: AppDims.h4),
                    ShimmerBox(width: AppDims.w140, height: AppDims.h8),
                  ],
                )),
              ],
            ),
          )),
        ],
      ),
    );
  }

  Widget _buildContent(List<ResumeEntity> resumes) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDims.w16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionHeader(title: 'Lanjutkan Mendengarkan', onSeeAll: onSeeAll),
          SizedBox(height: AppDims.h16),
          SizedBox(
            height: AppDims.h70,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: resumes.length,
              cacheExtent: 200,
              addAutomaticKeepAlives: false,
              addRepaintBoundaries: false,
              separatorBuilder: (_, _) => SizedBox(width: AppDims.w12),
              itemBuilder: (_, index) {
                final item = resumes[index];
                return RepaintBoundary(child: GestureDetector(
                  onTap: () => onResumeTap?.call(item.audioId),
                  child: Container(
                    width: AppDims.w200,
                    padding: EdgeInsets.all(AppDims.w8),
                    decoration: BoxDecoration(
                      color: AppColors.surfaceCard,
                      borderRadius: BorderRadius.circular(AppDims.r12),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: AppDims.r50,
                          height: AppDims.r50,
                          decoration: BoxDecoration(
                            color: AppColors.primary.withValues(alpha: 0.15),
                            borderRadius: BorderRadius.circular(AppDims.r8),
                          ),
                          child: Icon(Icons.play_arrow_rounded, color: AppColors.primary, size: AppDims.sp24),
                        ),
                        SizedBox(width: AppDims.w10),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Audio #${item.audioId}',
                                style: TextStyle(
                                  color: AppColors.textWhite,
                                  fontSize: AppDims.sp12,
                                  fontWeight: FontWeight.w600,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: AppDims.h4),
                              Text(
                                _formatDuration(item.positionSeconds),
                                style: TextStyle(color: AppColors.textSecondary, fontSize: AppDims.sp10),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ));
              },
            ),
          ),
        ],
      ),
    );
  }

  String _formatDuration(int seconds) {
    final m = seconds ~/ 60;
    final s = seconds % 60;
    return '${m.toString().padLeft(2, '0')}:${s.toString().padLeft(2, '0')}';
  }
}
