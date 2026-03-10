import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mqfm_apps/core/di/injection.dart';
import 'package:mqfm_apps/core/routes/app_path_routes.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/core/utils/helpers/message_helper.dart';
import 'package:mqfm_apps/core/manager/user_manager.dart';
import 'package:mqfm_apps/features/notification/applications/notification_bloc/notification_bloc.dart';
import 'package:mqfm_apps/features/notification/applications/notification_bloc/notification_event.dart';
import 'package:mqfm_apps/features/notification/applications/notification_bloc/notification_state.dart';
import 'package:mqfm_apps/features/notification/domain/entities/notification.dart';
import 'package:mqfm_apps/features/recommendation/applications/recommendation_bloc/recommendation_bloc.dart';
import 'package:mqfm_apps/features/recommendation/applications/recommendation_bloc/recommendation_event.dart';
import 'package:mqfm_apps/features/recommendation/applications/recommendation_bloc/recommendation_state.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';
import 'package:mqfm_apps/presentation/atoms/common/shimmer_box.dart';
import 'package:mqfm_apps/presentation/molecules/notification/notification_item.dart';
import 'package:mqfm_apps/presentation/molecules/notification/suggestion_tile.dart';
import 'package:mqfm_apps/presentation/molecules/profile/profile_avatar_builder.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<NotificationBloc>()..add(const NotificationEvent.fetch())),
        BlocProvider(create: (_) => getIt<RecommendationBloc>()..add(const RecommendationEvent.fetchAll())),
      ],
      child: Builder(
        builder: (context) => Scaffold(
          backgroundColor: AppColors.background,
          body: SafeArea(
            child: RefreshIndicator(
              onRefresh: () async {
                context.read<NotificationBloc>().add(const NotificationEvent.fetch());
                context.read<RecommendationBloc>().add(const RecommendationEvent.fetchAll());
              },
              child: CustomScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                cacheExtent: 500,
                slivers: [
                  SliverToBoxAdapter(child: _buildHeader(context)),
                  SliverToBoxAdapter(child: SizedBox(height: AppDims.h16)),
                  SliverToBoxAdapter(child: _buildNewSection(context)),
                  SliverToBoxAdapter(child: SizedBox(height: AppDims.h24)),
                  SliverToBoxAdapter(child: _buildSuggestionSection(context)),
                  SliverToBoxAdapter(child: SizedBox(height: AppDims.h30)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(AppDims.w16, AppDims.h16, AppDims.w16, 0),
      child: Row(
        children: [
          GestureDetector(
            onTap: () => context.pop(),
            child: Icon(Icons.arrow_back_ios, color: AppColors.textWhite, size: AppDims.sp20),
          ),
          SizedBox(width: AppDims.w12),
          Expanded(
            child: Text('Notifikasi', style: TextStyle(color: AppColors.textWhite, fontSize: AppDims.sp20, fontWeight: FontWeight.bold)),
          ),
          ProfileAvatarBuilder(size: 32, userData: UserManager.instance.currentUserNotifier.value),
        ],
      ),
    );
  }

  Widget _buildNewSection(BuildContext context) {
    return BlocConsumer<NotificationBloc, NotificationState>(
      listener: (context, state) {
        state.whenOrNull(actionSuccess: (message) {
          MessageHelper.showSuccess(context, message);
          context.read<NotificationBloc>().add(const NotificationEvent.fetch());
        });
      },
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => _buildShimmer(),
          loaded: (notifications) => _buildNotifList(context, notifications),
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
          ShimmerBox(width: AppDims.w60, height: AppDims.h20),
          SizedBox(height: AppDims.h12),
          ...List.generate(3, (_) => Padding(
            padding: EdgeInsets.only(bottom: AppDims.h12),
            child: Row(children: [
              ShimmerBox(width: AppDims.r42, height: AppDims.r42, borderRadius: 21),
              SizedBox(width: AppDims.w12),
              Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                ShimmerBox(width: AppDims.w200, height: AppDims.h14),
                SizedBox(height: AppDims.h4),
                ShimmerBox(width: AppDims.w140, height: AppDims.h12),
              ])),
            ]),
          )),
        ],
      ),
    );
  }

  Widget _buildNotifList(BuildContext context, List<NotificationEntity> notifications) {
    if (notifications.isEmpty) return const SizedBox.shrink();
    final unread = notifications.where((n) => !n.isRead).toList();
    final displayList = unread.isNotEmpty ? unread : notifications;
    final showCount = displayList.length > 5 ? 5 : displayList.length;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppDims.w16),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text('New', style: TextStyle(color: AppColors.textWhite, fontSize: AppDims.sp18, fontWeight: FontWeight.bold)),
            GestureDetector(
              onTap: () => context.read<NotificationBloc>().add(const NotificationEvent.markAllRead()),
              child: Text('Tandai dibaca', style: TextStyle(color: AppColors.primary, fontSize: AppDims.sp12, fontWeight: FontWeight.w600)),
            ),
          ]),
        ),
        SizedBox(height: AppDims.h12),
        ListView.builder(
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: showCount,
          itemBuilder: (_, index) {
            final notif = displayList[index];
            return NotificationItem(
              notification: notif,
              onTap: notif.isRead ? null : () => context.read<NotificationBloc>().add(NotificationEvent.markRead(id: notif.id)),
            );
          },
        ),
        if (displayList.length > 5)
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppDims.w16, vertical: AppDims.h8),
            child: Text('Lihat ${displayList.length - 5}+ pesan lainnya', style: TextStyle(color: AppColors.primary, fontSize: AppDims.sp13, fontWeight: FontWeight.w500)),
          ),
      ],
    );
  }

  Widget _buildSuggestionSection(BuildContext context) {
    return BlocBuilder<RecommendationBloc, RecommendationState>(
      builder: (context, state) {
        if (state.isLoading) return const SizedBox.shrink();
        final audios = state.popular.isNotEmpty ? state.popular : state.personalized;
        if (audios.isEmpty) return const SizedBox.shrink();
        return _buildSuggestionList(context, audios);
      },
    );
  }

  Widget _buildSuggestionList(BuildContext context, List<AudioEntity> audios) {
    final display = audios.take(6).toList();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppDims.w16),
          child: Text('Suggestion For You', style: TextStyle(color: AppColors.textWhite, fontSize: AppDims.sp18, fontWeight: FontWeight.bold)),
        ),
        SizedBox(height: AppDims.h12),
        ListView.builder(
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: display.length,
          itemBuilder: (_, index) {
            final audio = display[index];
            return SuggestionTile(audio: audio, onTap: () => context.push(AppPathRoutes.playerWithId(audio.id.toString())));
          },
        ),
      ],
    );
  }
}
