import 'package:mqfm_apps/core/routes/app_path_routes.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mqfm_apps/core/di/injection.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/core/utils/helpers/message_helper.dart';
import 'package:mqfm_apps/core/manager/user_manager.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';
import 'package:mqfm_apps/features/audio/applications/audio_bloc/audio_list_bloc.dart';
import 'package:mqfm_apps/features/audio/applications/audio_bloc/audio_list_event.dart';
import 'package:mqfm_apps/features/audio/applications/audio_bloc/audio_list_state.dart';
import 'package:mqfm_apps/features/categories/domain/entities/category.dart';
import 'package:mqfm_apps/features/categories/applications/category_bloc/category_bloc.dart';
import 'package:mqfm_apps/features/categories/applications/category_bloc/category_event.dart';
import 'package:mqfm_apps/features/categories/applications/category_bloc/category_state.dart';
import 'package:mqfm_apps/presentation/logic/search/search_sections_logic.dart';
import 'package:mqfm_apps/presentation/logic/guide_tour/search_tour_targets.dart';
import 'package:mqfm_apps/presentation/logic/guide_tour/guide_tour_manager.dart';
import 'package:mqfm_apps/presentation/organisms/search/browse_category_grid.dart';
import 'package:mqfm_apps/presentation/organisms/search/discover_horizontal_list.dart';
import 'package:mqfm_apps/presentation/organisms/search/search_header.dart';
import 'package:mqfm_apps/presentation/organisms/search/search_result_list.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => SearchPageState();
}

class SearchPageState extends State<SearchPage> {
  final TextEditingController _searchController = TextEditingController();
  final SearchSectionsLogic _sectionsLogic = SearchSectionsLogic();
  final GlobalKey _profileKey = GlobalKey();
  final GlobalKey _searchBarKey = GlobalKey();
  final GlobalKey _mixedKey = GlobalKey();
  final GlobalKey _discoverKey = GlobalKey();
  late final AudioListBloc _audioListBloc;
  bool _isSearching = false;
  Timer? _debounce;
  int _selectedCategoryId = 0;

  @override
  void initState() {
    super.initState();
    _audioListBloc = getIt<AudioListBloc>();
    _sectionsLogic.addListener(_onSectionsChanged);
    _sectionsLogic.fetchAudios();
  }

  void triggerTour() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      final targets = buildSearchTargets(
        profileKey: _profileKey,
        searchBarKey: _searchBarKey,
        mixedKey: _mixedKey,
        discoverKey: _discoverKey,
      );
      GuideTourManager.showTourIfNeeded(
        context: context,
        targets: targets,
        tourKey: 'search_tour_shown',
      );
    });
  }

  @override
  void dispose() {
    _debounce?.cancel();
    _audioListBloc.close();
    _sectionsLogic.removeListener(_onSectionsChanged);
    _sectionsLogic.dispose();
    _searchController.dispose();
    super.dispose();
  }

  void _onSectionsChanged() {
    if (mounted) setState(() {});
  }

  void _onSearchChanged(String query) {
    _debounce?.cancel();
    if (query.trim().isEmpty) {
      setState(() => _isSearching = false);
      return;
    }
    setState(() => _isSearching = true);
    _debounce = Timer(const Duration(milliseconds: 400), () {
      _audioListBloc.add(AudioListEvent.search(query: query.trim()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: _audioListBloc),
        BlocProvider(
          create: (_) =>
              getIt<CategoryBloc>()..add(const CategoryEvent.fetch()),
        ),
      ],
      child: BlocListener<AudioListBloc, AudioListState>(
        listener: (context, state) {
          state.whenOrNull(
            error: (message) => MessageHelper.showError(context, message),
          );
        },
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppDims.w16,
                  vertical: AppDims.h16,
                ),
                child: SearchHeader(
                  controller: _searchController,
                  onChanged: _onSearchChanged,
                  profileKey: _profileKey,
                  searchBarKey: _searchBarKey,
                  userData: UserManager.instance.currentUserNotifier.value,
                  isUserLoading: UserManager.instance.isLoadingNotifier.value,
                  onAvatarTap: () => Scaffold.of(context).openDrawer(),
                ),
              ),
              BlocBuilder<CategoryBloc, CategoryState>(
                builder: (context, catState) {
                  final categories = catState.maybeWhen(
                    loaded: (cats) => cats,
                    orElse: () => <CategoryEntity>[],
                  );
                  if (categories.isEmpty) return const SizedBox.shrink();
                  return Padding(
                    padding: EdgeInsets.only(bottom: AppDims.h12),
                    child: SizedBox(
                      height: AppDims.h32,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.symmetric(horizontal: AppDims.w16),
                        itemCount: categories.length + 1,
                        separatorBuilder: (_, _) => SizedBox(width: AppDims.w8),
                        itemBuilder: (context, index) {
                          final isAll = index == 0;
                          final id = isAll ? 0 : categories[index - 1].id;
                          final isSelected = _selectedCategoryId == id;
                          return GestureDetector(
                            onTap: () =>
                                setState(() => _selectedCategoryId = id),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: AppDims.w16,
                                vertical: AppDims.h6,
                              ),
                              decoration: BoxDecoration(
                                color: isSelected
                                    ? AppColors.primaryLight
                                    : AppColors.cardBackground,
                                borderRadius: BorderRadius.circular(
                                  AppDims.r20,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  isAll ? 'Semua' : categories[index - 1].name,
                                  style: TextStyle(
                                    color: AppColors.textWhite,
                                    fontSize: AppDims.sp12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  );
                },
              ),
              Expanded(
                child: BlocBuilder<AudioListBloc, AudioListState>(
                  builder: (context, state) {
                    if (state is AudioListLoading && _isSearching) {
                      return const Center(
                        child: CircularProgressIndicator(
                          color: AppColors.textWhite,
                        ),
                      );
                    }
                    if (_isSearching) {
                      final results = state.maybeWhen(
                        loaded: (audios) => audios,
                        orElse: () => <AudioEntity>[],
                      );
                      return SearchResultList(
                        results: results,
                        onAudioTap: (audioId) => context.push(
                          AppPathRoutes.playerWithId(audioId.toString()),
                        ),
                      );
                    }
                    final filteredAudios = _selectedCategoryId == 0
                        ? _sectionsLogic.audios
                        : _sectionsLogic.audios
                              .where((a) => a.categoryId == _selectedCategoryId)
                              .toList();
                    return SingleChildScrollView(
                      padding: EdgeInsets.symmetric(horizontal: AppDims.w16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            key: _mixedKey,
                            child: BrowseCategoryGrid(
                              audios: filteredAudios,
                              isLoading: _sectionsLogic.isLoading,
                              onMixTap: (group) => context.push(
                                AppPathRoutes.mixDetail,
                                extra: group,
                              ),
                            ),
                          ),
                          SizedBox(height: AppDims.h32),
                          Container(
                            key: _discoverKey,
                            child: DiscoverHorizontalList(
                              audios: filteredAudios,
                              isLoading: _sectionsLogic.isLoading,
                              onAudioTap: (audioId) => context.push(
                                AppPathRoutes.playerWithId(audioId.toString()),
                              ),
                            ),
                          ),
                          SizedBox(height: AppDims.h30),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
