import 'package:mqfm_apps/core/routes/app_path_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mqfm_apps/core/di/injection.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_strings.dart';
import 'package:mqfm_apps/core/utils/helpers/message_helper.dart';
import 'package:mqfm_apps/core/utils/helpers/preferences_helper.dart';
import 'package:mqfm_apps/features/like/applications/like_bloc/like_bloc.dart';
import 'package:mqfm_apps/features/like/applications/like_bloc/like_event.dart';
import 'package:mqfm_apps/features/like/applications/like_bloc/like_state.dart';
import 'package:mqfm_apps/presentation/molecules/library/liked_audios_empty_state.dart';
import 'package:mqfm_apps/presentation/organisms/library/liked_audios_list.dart';
import 'package:mqfm_apps/presentation/molecules/navigation/main_bottom_navigation.dart';
import 'package:shimmer/shimmer.dart';

class LikedAudiosPage extends StatelessWidget {
  const LikedAudiosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<LikeBloc>()..add(const LikeEvent.fetchLiked()),
      child: BlocConsumer<LikeBloc, LikeState>(
        listener: (context, state) {
          state.whenOrNull(
            error: (message) => MessageHelper.showError(context, message),
            loaded: (audios) async {
              final ids = audios.map((a) => a.id).toSet();
              final prefs = await PreferencesHelper.getLikedAudioIds();
              for (final id in ids) {
                if (!prefs.contains(id)) {
                  await PreferencesHelper.addLikedAudioId(id);
                }
              }
            },
          );
        },
        builder: (context, state) {
          return Scaffold(
            backgroundColor: AppColors.background,
            appBar: AppBar(
              backgroundColor: AppColors.transparent,
              elevation: 0,
              leading: IconButton(
                icon: Icon(Icons.arrow_back, color: AppColors.textWhite),
                onPressed: () => context.pop(),
              ),
              title: Text(
                AppStrings.favoriteAudiosTitle,
                style: TextStyle(color: AppColors.textWhite, fontSize: AppDims.sp18, fontWeight: FontWeight.bold),
              ),
            ),
            bottomNavigationBar: MainBottomNavigation(
              onTabSelected: (index) {
                switch (index) {
                  case 0: context.go(AppPathRoutes.dashboard);
                  case 1: context.go(AppPathRoutes.search);
                  case 2: context.go(AppPathRoutes.playlist);
                }
              },
              onFavoritesTap: () {},
            ),
            body: state.when(
              initial: () => _buildShimmer(),
              loading: () => _buildShimmer(),
              loaded: (audios) {
                if (audios.isEmpty) return const LikedAudiosEmptyState();
                return RefreshIndicator(
                  onRefresh: () async => context.read<LikeBloc>().add(const LikeEvent.fetchLiked()),
                  color: AppColors.primaryClassic,
                  backgroundColor: AppColors.surface,
                  child: LikedAudiosList(
                    audios: audios,
                    onUnlike: (index) {
                      PreferencesHelper.removeLikedAudioId(audios[index].id);
                      context.read<LikeBloc>().add(LikeEvent.unlike(targetId: audios[index].id));
                    },
                    onAudioTap: (audioId) => context.push(AppPathRoutes.playerWithId(audioId.toString())),
                  ),
                );
              },
              toggled: (_) => const SizedBox.shrink(),
              error: (message) => Center(child: Text(message, style: TextStyle(color: AppColors.error))),
            ),
          );
        },
      ),
    );
  }

  static Widget _buildShimmer() {
    return ListView.builder(
      padding: EdgeInsets.all(AppDims.r16),
      itemCount: 6,
      itemBuilder: (context, index) {
        return Shimmer.fromColors(
          baseColor: AppColors.shimmerBase,
          highlightColor: AppColors.shimmerHighlight,
          child: Container(
            margin: EdgeInsets.only(bottom: AppDims.h12),
            child: Row(
              children: [
                Container(
                  width: AppDims.w50,
                  height: AppDims.w50,
                  decoration: BoxDecoration(
                    color: AppColors.onPrimary,
                    borderRadius: BorderRadius.circular(AppDims.r4),
                  ),
                ),
                SizedBox(width: AppDims.w16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        height: AppDims.h14,
                        decoration: BoxDecoration(
                          color: AppColors.onPrimary,
                          borderRadius: BorderRadius.circular(AppDims.r4),
                        ),
                      ),
                      SizedBox(height: AppDims.h8),
                      Container(
                        width: AppDims.w120,
                        height: AppDims.h12,
                        decoration: BoxDecoration(
                          color: AppColors.onPrimary,
                          borderRadius: BorderRadius.circular(AppDims.r4),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
