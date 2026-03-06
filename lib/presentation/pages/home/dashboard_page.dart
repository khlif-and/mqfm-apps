import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mqfm_apps/core/di/injection.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio_entity.dart';
import 'package:mqfm_apps/features/audio/presentation/bloc/audio_list_bloc/audio_list_bloc.dart';
import 'package:mqfm_apps/features/audio/presentation/bloc/audio_list_bloc/audio_list_event.dart';
import 'package:mqfm_apps/features/audio/presentation/bloc/audio_list_bloc/audio_list_state.dart';
import 'package:mqfm_apps/features/categories/domain/entities/category_entity.dart';
import 'package:mqfm_apps/features/categories/presentation/bloc/category_bloc/category_bloc.dart';
import 'package:mqfm_apps/features/categories/presentation/bloc/category_bloc/category_event.dart';
import 'package:mqfm_apps/features/categories/presentation/bloc/category_bloc/category_state.dart';
import 'package:mqfm_apps/presentation/molecules/dashboard/quote_card.dart';
import 'package:mqfm_apps/presentation/molecules/guide_tour/guide_tour_targets.dart';
import 'package:mqfm_apps/presentation/organisms/dashboard/dashboard_header.dart';
import 'package:mqfm_apps/presentation/organisms/dashboard/horizontal_content_list.dart';
import 'package:mqfm_apps/presentation/organisms/dashboard/menu_grid.dart';
import 'package:mqfm_apps/presentation/organisms/dashboard/vertical_content_list.dart';
import 'package:mqfm_apps/presentation/organisms/guide_tour/guide_tour_manager.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _selectedIndex = 0;
  int _selectedCategoryId = 0;

  final GlobalKey _profileKey = GlobalKey();
  final GlobalKey _categoryKey = GlobalKey();
  final GlobalKey _menuGridKey = GlobalKey();
  final GlobalKey _quoteKey = GlobalKey();
  final GlobalKey _horizontalListKey = GlobalKey();
  final GlobalKey _verticalListKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<CategoryBloc>()..add(const CategoryEvent.fetch())),
        BlocProvider(create: (_) => getIt<AudioListBloc>()..add(const AudioListEvent.fetch())),
      ],
      child: _DashboardView(
        selectedIndex: _selectedIndex,
        selectedCategoryId: _selectedCategoryId,
        profileKey: _profileKey,
        categoryKey: _categoryKey,
        menuGridKey: _menuGridKey,
        quoteKey: _quoteKey,
        horizontalListKey: _horizontalListKey,
        verticalListKey: _verticalListKey,
        onCategorySelected: (id, index) {
          setState(() {
            _selectedCategoryId = id;
            _selectedIndex = index;
          });
        },
        onInitTour: () {
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
        },
      ),
    );
  }
}

class _DashboardView extends StatefulWidget {
  final int selectedIndex;
  final int selectedCategoryId;
  final GlobalKey profileKey;
  final GlobalKey categoryKey;
  final GlobalKey menuGridKey;
  final GlobalKey quoteKey;
  final GlobalKey horizontalListKey;
  final GlobalKey verticalListKey;
  final void Function(int id, int index) onCategorySelected;
  final VoidCallback onInitTour;

  const _DashboardView({
    required this.selectedIndex,
    required this.selectedCategoryId,
    required this.profileKey,
    required this.categoryKey,
    required this.menuGridKey,
    required this.quoteKey,
    required this.horizontalListKey,
    required this.verticalListKey,
    required this.onCategorySelected,
    required this.onInitTour,
  });

  @override
  State<_DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<_DashboardView> {
  @override
  void initState() {
    super.initState();
    widget.onInitTour();
  }

  List<AudioEntity> _filterAudios(List<AudioEntity> audios, int categoryId) {
    if (categoryId == 0) return audios;
    return audios.where((a) => a.categoryId == categoryId).toList();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBloc, CategoryState>(
      builder: (context, categoryState) {
        final categories = categoryState.maybeWhen(
          loaded: (cats) => cats,
          orElse: () => <CategoryEntity>[],
        );
        final isCategoryLoading = categoryState is CategoryLoading;

        return BlocBuilder<AudioListBloc, AudioListState>(
          builder: (context, audioState) {
            final allAudios = audioState.maybeWhen(
              loaded: (audios) => audios,
              orElse: () => <AudioEntity>[],
            );
            final isAudioLoading = audioState is AudioListLoading;
            final filteredAudios = _filterAudios(allAudios, widget.selectedCategoryId);

            return Column(
              children: [
                DashboardHeader(
                  categories: categories.map((e) => e.name).toList(),
                  selectedIndex: widget.selectedIndex,
                  onCategorySelected: (index) {
                    final id = index == 0 ? 0 : (index <= categories.length ? categories[index - 1].id : 0);
                    widget.onCategorySelected(id, index);
                  },
                  profileKey: widget.profileKey,
                  categoryKey: widget.categoryKey,
                ),
                Expanded(
                  child: RefreshIndicator(
                    onRefresh: () async {
                      context.read<CategoryBloc>().add(const CategoryEvent.fetch());
                      context.read<AudioListBloc>().add(const AudioListEvent.fetch());
                    },
                    child: SingleChildScrollView(
                      physics: const AlwaysScrollableScrollPhysics(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (isCategoryLoading || isAudioLoading)
                            const Padding(
                              padding: EdgeInsets.only(bottom: 20),
                              child: LinearProgressIndicator(color: AppColors.success),
                            ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: AppDims.w16),
                            child: MenuGrid(
                              key: widget.menuGridKey,
                              selectedCategoryId: widget.selectedCategoryId,
                            ),
                          ),
                          SizedBox(height: AppDims.h24),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: AppDims.w16),
                            child: Container(key: widget.quoteKey, child: const QuoteCard()),
                          ),
                          SizedBox(height: AppDims.h32),
                          Container(
                            key: widget.horizontalListKey,
                            child: HorizontalContentList(
                              audios: filteredAudios,
                              isLoading: isAudioLoading,
                            ),
                          ),
                          SizedBox(height: AppDims.h24),
                          Container(
                            key: widget.verticalListKey,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: AppDims.w16),
                              child: VerticalContentList(
                                audios: filteredAudios,
                                isLoading: isAudioLoading,
                              ),
                            ),
                          ),
                          SizedBox(height: AppDims.h30),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}

