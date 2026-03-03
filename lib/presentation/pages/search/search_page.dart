import 'package:flutter/material.dart';
import 'package:mqfm_apps/utils/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mqfm_apps/presentation/logic/search/search_logic.dart';
import 'package:mqfm_apps/presentation/molecules/guide_tour/search_tour_targets.dart';
import 'package:mqfm_apps/presentation/organisms/guide_tour/guide_tour_manager.dart';
import 'package:mqfm_apps/presentation/organisms/search/browse_category_grid.dart';
import 'package:mqfm_apps/presentation/organisms/search/discover_horizontal_list.dart';
import 'package:mqfm_apps/presentation/organisms/search/search_header.dart';
import 'package:mqfm_apps/presentation/organisms/search/search_result_list.dart';
import 'package:mqfm_apps/utils/helpers/message_helper.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final SearchLogic logic = SearchLogic();
  final TextEditingController _searchController = TextEditingController();
  final GlobalKey _profileKey = GlobalKey();
  final GlobalKey _searchBarKey = GlobalKey();
  final GlobalKey _mixedKey = GlobalKey();
  final GlobalKey _discoverKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    logic.addListener(_onLogicChange);
    WidgetsBinding.instance.addPostFrameCallback((_) {
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

  void _onLogicChange() {
    if (logic.errorMessage != null && mounted) {
      MessageHelper.showError(context, logic.errorMessage!);
    }
  }

  @override
  void dispose() {
    logic.removeListener(_onLogicChange);
    _searchController.dispose();
    logic.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            child: SearchHeader(
              controller: _searchController,
              onChanged: logic.onSearchChanged,
              profileKey: _profileKey,
              searchBarKey: _searchBarKey,
            ),
          ),
          Expanded(
            child: ListenableBuilder(
              listenable: logic,
              builder: (context, child) {
                if (logic.isLoading) {
                  return const Center(
                    child: CircularProgressIndicator(
                      color: AppColors.textWhite,
                    ),
                  );
                }

                if (logic.isSearching) {
                  return SearchResultList(results: logic.searchResults);
                }

                return SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        key: _mixedKey,
                        child: const BrowseCategoryGrid(),
                      ),
                      SizedBox(height: 32.h),
                      Container(
                        key: _discoverKey,
                        child: const DiscoverHorizontalList(),
                      ),
                      SizedBox(height: 30.h),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
