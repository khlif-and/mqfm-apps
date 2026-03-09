import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mqfm_apps/core/di/injection.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/core/utils/helpers/message_helper.dart';
import 'package:mqfm_apps/features/clip/applications/clip_bloc/clip_bloc.dart';
import 'package:mqfm_apps/features/clip/applications/clip_bloc/clip_event.dart';
import 'package:mqfm_apps/features/clip/applications/clip_bloc/clip_state.dart';
import 'package:mqfm_apps/features/clip/domain/entities/clip.dart';
import 'package:mqfm_apps/presentation/atoms/common/shimmer_list.dart';
import 'package:mqfm_apps/presentation/molecules/common/custom_app_bar.dart';
import 'package:mqfm_apps/presentation/molecules/common/empty_state_card.dart';

class ClipPage extends StatelessWidget {
  const ClipPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ClipBloc>()
        ..add(const ClipEvent.fetch()),
      child: const _ClipView(),
    );
  }
}

class _ClipView extends StatelessWidget {
  const _ClipView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: CustomAppBar(
        title: 'Clip Saya',
        backgroundColor: AppColors.background,
      ),
      body: BlocConsumer<ClipBloc, ClipState>(
        listener: (context, state) {
          state.whenOrNull(
            actionSuccess: (message) {
              MessageHelper.showSuccess(context, message);
              context.read<ClipBloc>().add(const ClipEvent.fetch());
            },
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const ShimmerList(itemCount: 6, hasTrailing: true),
            loaded: (clips) {
              if (clips.isEmpty) {
                return Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: AppDims.w24),
                    child: const EmptyStateCard(
                      icon: Icons.content_cut,
                      message: 'Belum ada clip yang dibuat',
                    ),
                  ),
                );
              }
              return RefreshIndicator(
                onRefresh: () async {
                  context.read<ClipBloc>().add(const ClipEvent.fetch());
                },
                child: ListView.builder(
                  physics: const AlwaysScrollableScrollPhysics(),
                  cacheExtent: 500,
                  itemCount: clips.length,
                  itemBuilder: (context, index) {
                    final clip = clips[index];
                    return RepaintBoundary(
                      child: _ClipTile(
                        clip: clip,
                        onDelete: () {
                          context.read<ClipBloc>().add(
                            ClipEvent.delete(id: clip.id),
                          );
                        },
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

class _ClipTile extends StatelessWidget {
  final ClipEntity clip;
  final VoidCallback onDelete;

  const _ClipTile({required this.clip, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppDims.w16,
        vertical: AppDims.h8,
      ),
      child: Row(
        children: [
          Container(
            width: AppDims.r50,
            height: AppDims.r50,
            decoration: BoxDecoration(
              color: AppColors.surfaceHighlight,
              borderRadius: BorderRadius.circular(AppDims.r8),
            ),
            child: Icon(
              Icons.content_cut,
              color: AppColors.primary,
              size: AppDims.sp22,
            ),
          ),
          SizedBox(width: AppDims.w12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Audio #${clip.audioId}',
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
                  '${_formatSeconds(clip.startTime)} - ${_formatSeconds(clip.endTime)}',
                  style: TextStyle(
                    color: AppColors.textSecondary,
                    fontSize: AppDims.sp12,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: AppDims.w8),
          GestureDetector(
            onTap: onDelete,
            child: Icon(
              Icons.delete_outline,
              color: AppColors.textSecondary,
              size: AppDims.sp20,
            ),
          ),
        ],
      ),
    );
  }

  String _formatSeconds(int seconds) {
    final min = seconds ~/ 60;
    final sec = seconds % 60;
    return '${min.toString().padLeft(2, '0')}:${sec.toString().padLeft(2, '0')}';
  }
}
