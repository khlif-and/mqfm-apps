import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mqfm_apps/core/di/injection.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/core/utils/helpers/message_helper.dart';
import 'package:mqfm_apps/features/clip/applications/clip_bloc/clip_bloc.dart';
import 'package:mqfm_apps/features/clip/applications/clip_bloc/clip_event.dart';
import 'package:mqfm_apps/features/clip/applications/clip_bloc/clip_state.dart';
import 'package:mqfm_apps/presentation/atoms/common/shimmer_list.dart';
import 'package:mqfm_apps/presentation/molecules/clip/clip_tile.dart';
import 'package:mqfm_apps/presentation/molecules/common/custom_app_bar.dart';
import 'package:mqfm_apps/presentation/molecules/common/empty_state_card.dart';

class ClipPage extends StatelessWidget {
  const ClipPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ClipBloc>()
        ..add(const ClipEvent.fetch()),
      child: Builder(
        builder: (context) => Scaffold(
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
                          child: ClipTile(
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
        ),
      ),
    );
  }
}
