import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mqfm_apps/core/manager/user_manager.dart';
import 'package:mqfm_apps/core/routes/app_path_routes.dart';
import 'package:mqfm_apps/core/utils/constants/curated_content.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';
import 'package:mqfm_apps/features/audio/applications/audio_bloc/audio_list_bloc.dart';
import 'package:mqfm_apps/features/audio/applications/audio_bloc/audio_list_state.dart';
import 'package:mqfm_apps/features/categories/domain/entities/category.dart';
import 'package:mqfm_apps/features/categories/applications/category_bloc/category_bloc.dart';
import 'package:mqfm_apps/features/categories/applications/category_bloc/category_state.dart';
import 'package:mqfm_apps/presentation/organisms/dashboard/dashboard_header.dart';
import 'package:mqfm_apps/presentation/organisms/dashboard/dashboard_scroll_view.dart';

class DashboardBody extends StatelessWidget {
  final int selectedIndex;
  final int selectedCategoryId;
  final void Function(int index, int categoryId) onCategorySelected;
  final GlobalKey profileKey;
  final GlobalKey categoryKey;
  final GlobalKey menuGridKey;
  final GlobalKey quoteKey;
  final GlobalKey horizontalListKey;
  final GlobalKey verticalListKey;
  final bool isHistoryLoading;

  const DashboardBody({
    super.key,
    required this.selectedIndex,
    required this.selectedCategoryId,
    required this.onCategorySelected,
    required this.profileKey,
    required this.categoryKey,
    required this.menuGridKey,
    required this.quoteKey,
    required this.horizontalListKey,
    required this.verticalListKey,
    required this.isHistoryLoading,
  });

  List<AudioEntity> _filterAudios(List<AudioEntity> audios, int categoryId) =>
      categoryId == 0
          ? audios
          : audios.where((a) => a.categoryId == categoryId).toList();

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
            final filteredAudios = _filterAudios(allAudios, selectedCategoryId);
            final curatedSections = CuratedContent.buildSections(allAudios);

            return Column(
              children: [
                DashboardHeader(
                  categories: categories.map((e) => e.name).toList(),
                  selectedIndex: selectedIndex,
                  onCategorySelected: (index) {
                    final id = index == 0
                        ? 0
                        : (index <= categories.length
                            ? categories[index - 1].id
                            : 0);
                    onCategorySelected(index, id);
                  },
                  profileKey: profileKey,
                  categoryKey: categoryKey,
                  userData: UserManager.instance.currentUserNotifier.value,
                  isUserLoading: UserManager.instance.isLoadingNotifier.value,
                  onAvatarTap: () => Scaffold.of(context).openDrawer(),
                  onNotificationTap: () =>
                      context.push(AppPathRoutes.notifications),
                ),
                Expanded(
                  child: DashboardScrollView(
                    filteredAudios: filteredAudios,
                    allAudios: allAudios,
                    curatedSections: curatedSections,
                    isAudioLoading: isAudioLoading,
                    isCategoryLoading: isCategoryLoading,
                    isHistoryLoading: isHistoryLoading,
                    menuGridKey: menuGridKey,
                    quoteKey: quoteKey,
                    horizontalListKey: horizontalListKey,
                    verticalListKey: verticalListKey,
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
