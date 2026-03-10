import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mqfm_apps/core/di/injection.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/core/utils/helpers/message_helper.dart';
import 'package:mqfm_apps/features/collab/applications/collab_bloc/collab_bloc.dart';
import 'package:mqfm_apps/features/collab/applications/collab_bloc/collab_event.dart';
import 'package:mqfm_apps/features/collab/applications/collab_bloc/collab_state.dart';
import 'package:mqfm_apps/presentation/atoms/common/shimmer_list.dart';
import 'package:mqfm_apps/presentation/molecules/common/custom_app_bar.dart';
import 'package:mqfm_apps/presentation/molecules/common/empty_state_card.dart';

class CollabPage extends StatelessWidget {
  final int playlistId;

  const CollabPage({super.key, required this.playlistId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<CollabBloc>()
        ..add(CollabEvent.fetchCollaborators(playlistId: playlistId)),
      child: Builder(
        builder: (context) => Scaffold(
      backgroundColor: AppColors.background,
      appBar: CustomAppBar(
        title: 'Kolaborator',
        backgroundColor: AppColors.background,
      ),
      body: BlocConsumer<CollabBloc, CollabState>(
        listener: (context, state) {
          state.whenOrNull(
            actionSuccess: (message) {
              MessageHelper.showSuccess(context, message);
              context.read<CollabBloc>().add(
                CollabEvent.fetchCollaborators(playlistId: playlistId),
              );
            },
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const ShimmerList(itemCount: 5),
            loaded: (collaborators) {
              if (collaborators.isEmpty) {
                return Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: AppDims.w24),
                    child: const EmptyStateCard(
                      icon: Icons.group_outlined,
                      message: 'Belum ada kolaborator',
                    ),
                  ),
                );
              }
              return RefreshIndicator(
                onRefresh: () async {
                  context.read<CollabBloc>().add(
                    CollabEvent.fetchCollaborators(playlistId: playlistId),
                  );
                },
                child: ListView.builder(
                  physics: const AlwaysScrollableScrollPhysics(),
                  cacheExtent: 300,
                  itemCount: collaborators.length,
                  itemBuilder: (context, index) {
                    final collab = collaborators[index];
                    return RepaintBoundary(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: AppDims.w16,
                          vertical: AppDims.h8,
                        ),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: AppDims.r22,
                              backgroundColor: AppColors.surfaceHighlight,
                              child: Text(
                                collab.username.isNotEmpty
                                    ? collab.username[0].toUpperCase()
                                    : '?',
                                style: TextStyle(
                                  color: AppColors.primary,
                                  fontSize: AppDims.sp16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(width: AppDims.w12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    collab.username,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: AppColors.textWhite,
                                      fontSize: AppDims.sp14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(height: AppDims.h2),
                                  Text(
                                    collab.role,
                                    style: TextStyle(
                                      color: AppColors.textSecondary,
                                      fontSize: AppDims.sp12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                context.read<CollabBloc>().add(
                                  CollabEvent.removeCollaborator(
                                    playlistId: playlistId,
                                    userId: collab.userId,
                                  ),
                                );
                              },
                              child: Icon(
                                Icons.person_remove_outlined,
                                color: AppColors.textSecondary,
                                size: AppDims.sp20,
                              ),
                            ),
                          ],
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
