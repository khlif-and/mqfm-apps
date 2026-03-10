import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:mqfm_apps/core/routes/app_path_routes.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/core/utils/helpers/preferences_helper.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';
import 'package:mqfm_apps/features/artikel/applications/artikel_bloc/artikel_bloc.dart';
import 'package:mqfm_apps/features/artikel/applications/artikel_bloc/artikel_event.dart';
import 'package:mqfm_apps/features/audio/applications/audio_bloc/audio_list_bloc.dart';
import 'package:mqfm_apps/features/audio/applications/audio_bloc/audio_list_event.dart';
import 'package:mqfm_apps/features/categories/applications/category_bloc/category_bloc.dart';
import 'package:mqfm_apps/features/categories/applications/category_bloc/category_event.dart';
import 'package:mqfm_apps/features/event/applications/event_bloc/event_bloc.dart';
import 'package:mqfm_apps/features/event/applications/event_bloc/event_event.dart';
import 'package:mqfm_apps/features/location/applications/location_bloc/location_bloc.dart';
import 'package:mqfm_apps/features/location/applications/location_bloc/location_event.dart';
import 'package:mqfm_apps/features/playlist/applications/playlist_bloc/playlist_bloc.dart';
import 'package:mqfm_apps/features/playlist/applications/playlist_bloc/playlist_event.dart';
import 'package:mqfm_apps/features/recommendation/applications/recommendation_bloc/recommendation_bloc.dart';
import 'package:mqfm_apps/features/recommendation/applications/recommendation_bloc/recommendation_event.dart';
import 'package:mqfm_apps/features/resume/applications/resume_bloc/resume_bloc.dart';
import 'package:mqfm_apps/features/resume/applications/resume_bloc/resume_event.dart';
import 'package:mqfm_apps/features/series/applications/series_bloc/series_bloc.dart';
import 'package:mqfm_apps/features/series/applications/series_bloc/series_event.dart';
import 'package:mqfm_apps/features/vote/applications/vote_bloc/vote_bloc.dart';
import 'package:mqfm_apps/features/vote/applications/vote_bloc/vote_event.dart';
import 'package:mqfm_apps/presentation/molecules/dashboard/quote_card.dart';
import 'package:mqfm_apps/presentation/organisms/article/artikel_section.dart';
import 'package:mqfm_apps/presentation/organisms/collab/collab_section.dart';
import 'package:mqfm_apps/presentation/organisms/dashboard/dashboard_curated_sliver.dart';
import 'package:mqfm_apps/presentation/organisms/event/event_section.dart';
import 'package:mqfm_apps/presentation/organisms/dashboard/horizontal_content_list.dart';
import 'package:mqfm_apps/presentation/organisms/location/location_section.dart';
import 'package:mqfm_apps/presentation/organisms/dashboard/menu_grid.dart';
import 'package:mqfm_apps/presentation/organisms/dashboard/recommendation_sliver_list.dart';
import 'package:mqfm_apps/presentation/organisms/resume/resume_section.dart';
import 'package:mqfm_apps/presentation/organisms/series/series_section.dart';
import 'package:mqfm_apps/presentation/organisms/dashboard/vertical_content_list.dart';
import 'package:mqfm_apps/presentation/organisms/vote/vote_ranking_section.dart';

class DashboardScrollView extends StatelessWidget {
  final List<AudioEntity> filteredAudios;
  final List<AudioEntity> allAudios;
  final List<MapEntry<String, List<AudioEntity>>> curatedSections;
  final bool isAudioLoading;
  final bool isCategoryLoading;
  final bool isHistoryLoading;
  final GlobalKey menuGridKey;
  final GlobalKey quoteKey;
  final GlobalKey horizontalListKey;
  final GlobalKey verticalListKey;

  const DashboardScrollView({
    super.key,
    required this.filteredAudios,
    required this.allAudios,
    required this.curatedSections,
    required this.isAudioLoading,
    required this.isCategoryLoading,
    required this.isHistoryLoading,
    required this.menuGridKey,
    required this.quoteKey,
    required this.horizontalListKey,
    required this.verticalListKey,
  });

  void _toPlayer(BuildContext context, int audioId) =>
      context.push(AppPathRoutes.playerWithId(audioId.toString()));

  Future<void> _onRefresh(BuildContext context) async {
    context.read<CategoryBloc>().add(const CategoryEvent.fetch());
    context.read<AudioListBloc>().add(const AudioListEvent.fetch());
    context.read<RecommendationBloc>().add(
      const RecommendationEvent.fetchAll(),
    );
    context.read<EventBloc>().add(const EventEvent.fetchUpcoming());
    context.read<SeriesBloc>().add(const SeriesEvent.fetch());
    context.read<VoteBloc>().add(const VoteEvent.fetchWeeklyRanking());
    context.read<ResumeBloc>().add(const ResumeEvent.fetch());
    context.read<ArtikelListBloc>().add(const ArtikelListEvent.fetch());
    context.read<LocationBloc>().add(const LocationEvent.detectGps());
    context.read<PlaylistBloc>().add(const PlaylistEvent.fetch());
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () => _onRefresh(context),
      child: CustomScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        cacheExtent: 500,
        slivers: [
          if (isCategoryLoading || isAudioLoading)
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: LinearProgressIndicator(color: AppColors.success),
              ),
            ),

          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: AppDims.w16),
              child: ValueListenableBuilder<List<AudioEntity>>(
                valueListenable: PreferencesHelper.historyNotifier,
                builder: (context, historyAudios, _) => MenuGrid(
                  key: menuGridKey,
                  historyAudios: historyAudios,
                  isLoading: isHistoryLoading,
                  onAudioTap: (id) => _toPlayer(context, id),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: AppDims.h24)),

          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: AppDims.w16),
              child: Container(key: quoteKey, child: const QuoteCard()),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: AppDims.h24)),

          RecommendationSliverList(onAudioTap: (id) => _toPlayer(context, id)),

          SliverToBoxAdapter(
            child: RepaintBoundary(
              child: Container(
                key: horizontalListKey,
                child: HorizontalContentList(
                  audios: filteredAudios,
                  isLoading: isAudioLoading,
                  onAudioTap: (id) => _toPlayer(context, id),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: AppDims.h24)),

          SliverToBoxAdapter(
            child: RepaintBoundary(
              child: Container(
                key: verticalListKey,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppDims.w16),
                  child: VerticalContentList(
                    audios: filteredAudios,
                    isLoading: isAudioLoading,
                    onAudioTap: (id) => _toPlayer(context, id),
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: AppDims.h24)),

          SliverToBoxAdapter(
            child: RepaintBoundary(
              child: EventSection(
                onEventTap: (_) => context.push(AppPathRoutes.events),
                onSeeAll: () => context.push(AppPathRoutes.events),
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: AppDims.h24)),

          SliverToBoxAdapter(
            child: RepaintBoundary(
              child: SeriesSection(
                onSeriesTap: (id) => context.push(
                  AppPathRoutes.seriesDetailWithId(id.toString()),
                ),
                onSeeAll: () => context.push(AppPathRoutes.series),
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: AppDims.h24)),

          SliverToBoxAdapter(
            child: RepaintBoundary(
              child: ResumeSection(
                onResumeTap: (id) => _toPlayer(context, id),
                onSeeAll: () => context.push(AppPathRoutes.resume),
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: AppDims.h24)),

          SliverToBoxAdapter(
            child: RepaintBoundary(
              child: VoteRankingSection(
                onAudioTap: (id) => _toPlayer(context, id),
                onSeeAll: () => context.push(AppPathRoutes.vote),
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: AppDims.h24)),

          SliverToBoxAdapter(
            child: RepaintBoundary(
              child: LocationSection(
                onSeeAll: () => context.push(AppPathRoutes.location),
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: AppDims.h24)),

          SliverToBoxAdapter(
            child: RepaintBoundary(
              child: CollabSection(
                onPlaylistTap: (id) => context.push(
                  AppPathRoutes.collabWithPlaylistId(id.toString()),
                ),
                onSeeAll: () => context.push(AppPathRoutes.collab),
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: AppDims.h24)),

          SliverToBoxAdapter(
            child: RepaintBoundary(
              child: ArtikelSection(
                onArtikelTap: (link) async {
                  final uri = Uri.tryParse(link);
                  if (uri != null) {
                    await launchUrl(uri, mode: LaunchMode.externalApplication);
                  }
                },
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: AppDims.h24)),

          DashboardCuratedSliver(
            sections: curatedSections,
            onAudioTap: (id) => _toPlayer(context, id),
          ),

          SliverToBoxAdapter(child: SizedBox(height: AppDims.h30)),
        ],
      ),
    );
  }
}
