import 'package:mqfm_apps/core/routes/app_path_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mqfm_apps/core/di/injection.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/core/utils/constants/curated_content.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';
import 'package:mqfm_apps/features/audio/applications/audio_bloc/audio_list_bloc.dart';
import 'package:mqfm_apps/features/audio/applications/audio_bloc/audio_list_event.dart';
import 'package:mqfm_apps/features/audio/applications/audio_bloc/audio_list_state.dart';
import 'package:mqfm_apps/features/categories/domain/entities/category.dart';
import 'package:mqfm_apps/features/categories/applications/category_bloc/category_bloc.dart';
import 'package:mqfm_apps/features/categories/applications/category_bloc/category_event.dart';
import 'package:mqfm_apps/features/categories/applications/category_bloc/category_state.dart';
import 'package:mqfm_apps/core/utils/helpers/preferences_helper.dart';
import 'package:mqfm_apps/core/manager/user_manager.dart';
import 'package:mqfm_apps/presentation/molecules/dashboard/quote_card.dart';
import 'package:mqfm_apps/presentation/logic/guide_tour/guide_tour_targets.dart';
import 'package:mqfm_apps/presentation/organisms/dashboard/dashboard_header.dart';
import 'package:mqfm_apps/presentation/organisms/dashboard/horizontal_content_list.dart';
import 'package:mqfm_apps/presentation/organisms/dashboard/menu_grid.dart';
import 'package:mqfm_apps/presentation/organisms/dashboard/vertical_content_list.dart';
import 'package:mqfm_apps/presentation/organisms/dashboard/recommendation_sliver_list.dart';
import 'package:mqfm_apps/presentation/logic/guide_tour/guide_tour_manager.dart';
import 'package:mqfm_apps/features/recommendation/applications/recommendation_bloc/recommendation_bloc.dart';
import 'package:mqfm_apps/features/recommendation/applications/recommendation_bloc/recommendation_event.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _selectedIndex = 0;
  int _selectedCategoryId = 0;
  bool _isHistoryLoading = true;

  final GlobalKey _profileKey = GlobalKey();
  final GlobalKey _categoryKey = GlobalKey();
  final GlobalKey _menuGridKey = GlobalKey();
  final GlobalKey _quoteKey = GlobalKey();
  final GlobalKey _horizontalListKey = GlobalKey();
  final GlobalKey _verticalListKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _loadHistory();
    _initTour();
  }

  Future<void> _loadHistory() async {
    await PreferencesHelper.getPlayedAudios();
    if (mounted) setState(() => _isHistoryLoading = false);
  }

  List<AudioEntity> _filterAudios(List<AudioEntity> audios, int categoryId) {
    if (categoryId == 0) return audios;
    return audios.where((a) => a.categoryId == categoryId).toList();
  }

  void _navigateToPlayer(int audioId) {
    context.push(AppPathRoutes.playerWithId(audioId.toString()));
  }

  void _initTour() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final targets = buildDashboardTargets(
        profileKey: _profileKey,
        categoryKey: _categoryKey,
        menuGridKey: _menuGridKey,
        quoteKey: _quoteKey,
        horizontalListKey: _horizontalListKey,
        verticalListKey: _verticalListKey,
      );
      GuideTourManager.showTourIfNeeded(
        context: context,
        targets: targets,
        tourKey: 'dashboard_tour_shown',
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<CategoryBloc>()..add(const CategoryEvent.fetch())),
        BlocProvider(create: (_) => getIt<AudioListBloc>()..add(const AudioListEvent.fetch())),
        BlocProvider(create: (_) => getIt<RecommendationBloc>()..add(const RecommendationEvent.fetchAll())),
      ],
      child: BlocBuilder<CategoryBloc, CategoryState>(
        builder: (context, categoryState) {
          final categories = categoryState.maybeWhen(loaded: (cats) => cats, orElse: () => <CategoryEntity>[]);
          final isCategoryLoading = categoryState is CategoryLoading;

          return BlocBuilder<AudioListBloc, AudioListState>(
            builder: (context, audioState) {
              final allAudios = audioState.maybeWhen(loaded: (audios) => audios, orElse: () => <AudioEntity>[]);
              final isAudioLoading = audioState is AudioListLoading;
              final filteredAudios = _filterAudios(allAudios, _selectedCategoryId);
              final curatedSections = CuratedContent.buildSections(allAudios);

              return Column(
                children: [
                  DashboardHeader(
                    categories: categories.map((e) => e.name).toList(),
                    selectedIndex: _selectedIndex,
                    onCategorySelected: (index) {
                      final id = index == 0 ? 0 : (index <= categories.length ? categories[index - 1].id : 0);
                      setState(() { _selectedCategoryId = id; _selectedIndex = index; });
                    },
                    profileKey: _profileKey,
                    categoryKey: _categoryKey,
                    userData: UserManager.instance.currentUserNotifier.value,
                    isUserLoading: UserManager.instance.isLoadingNotifier.value,
                    onAvatarTap: () => Scaffold.of(context).openDrawer(),
                  ),
                  Expanded(
                    child: RefreshIndicator(
                      onRefresh: () async {
                        context.read<CategoryBloc>().add(const CategoryEvent.fetch());
                        context.read<AudioListBloc>().add(const AudioListEvent.fetch());
                        context.read<RecommendationBloc>().add(const RecommendationEvent.fetchAll());
                      },
                      child: CustomScrollView(
                        physics: const AlwaysScrollableScrollPhysics(),
                        cacheExtent: 500,
                        slivers: [
                          if (isCategoryLoading || isAudioLoading)
                            const SliverToBoxAdapter(child: Padding(padding: EdgeInsets.only(bottom: 20), child: LinearProgressIndicator(color: AppColors.success))),
                          SliverToBoxAdapter(child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: AppDims.w16),
                            child: ValueListenableBuilder<List<AudioEntity>>(
                              valueListenable: PreferencesHelper.historyNotifier,
                              builder: (context, historyAudios, _) => MenuGrid(key: _menuGridKey, historyAudios: historyAudios, isLoading: _isHistoryLoading, onAudioTap: _navigateToPlayer),
                            ),
                          )),
                          SliverToBoxAdapter(child: SizedBox(height: AppDims.h24)),
                          SliverToBoxAdapter(child: Padding(padding: EdgeInsets.symmetric(horizontal: AppDims.w16), child: Container(key: _quoteKey, child: const QuoteCard()))),
                          SliverToBoxAdapter(child: SizedBox(height: AppDims.h32)),
                          SliverToBoxAdapter(child: RepaintBoundary(child: Container(key: _horizontalListKey, child: HorizontalContentList(audios: filteredAudios, isLoading: isAudioLoading, onAudioTap: _navigateToPlayer)))),
                          SliverToBoxAdapter(child: SizedBox(height: AppDims.h24)),
                          SliverToBoxAdapter(child: Container(key: _verticalListKey, child: Padding(padding: EdgeInsets.symmetric(horizontal: AppDims.w16), child: VerticalContentList(audios: filteredAudios, isLoading: isAudioLoading, onAudioTap: _navigateToPlayer)))),
                          SliverToBoxAdapter(child: SizedBox(height: AppDims.h24)),
                          RecommendationSliverList(onAudioTap: _navigateToPlayer),
                          SliverList(delegate: SliverChildBuilderDelegate((context, index) => Padding(padding: EdgeInsets.only(bottom: AppDims.h24), child: RepaintBoundary(child: HorizontalContentList(title: curatedSections[index].key, audios: curatedSections[index].value, onAudioTap: _navigateToPlayer))), childCount: curatedSections.length)),
                          SliverToBoxAdapter(child: SizedBox(height: AppDims.h30)),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
