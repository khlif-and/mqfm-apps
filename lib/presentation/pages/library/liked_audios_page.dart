import 'package:mqfm_apps/core/routes/app_path_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mqfm_apps/core/di/injection.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_strings.dart';
import 'package:mqfm_apps/core/utils/helpers/message_helper.dart';
import 'package:mqfm_apps/features/like/applications/like_bloc/like_bloc.dart';
import 'package:mqfm_apps/features/like/applications/like_bloc/like_event.dart';
import 'package:mqfm_apps/features/like/applications/like_bloc/like_state.dart';
import 'package:mqfm_apps/presentation/molecules/library/liked_audios_empty_state.dart';
import 'package:mqfm_apps/presentation/organisms/library/liked_audios_list.dart';

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
            body: state.when(
              initial: () => const Center(child: CircularProgressIndicator(color: AppColors.success)),
              loading: () => const Center(child: CircularProgressIndicator(color: AppColors.success)),
              loaded: (audios) {
                if (audios.isEmpty) return const LikedAudiosEmptyState();
                return LikedAudiosList(
                  audios: audios,
                  onUnlike: (index) => context.read<LikeBloc>().add(LikeEvent.unlike(audioId: audios[index].id, index: index)),
                  onAudioTap: (audioId) => context.push(AppPathRoutes.playerWithId(audioId.toString())),
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
}
