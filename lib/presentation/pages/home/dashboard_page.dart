import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mqfm_apps/presentation/logic/home/dashboard_logic.dart';
import 'package:mqfm_apps/presentation/molecules/dashboard/quote_card.dart';
import 'package:mqfm_apps/presentation/organisms/dashboard/dashboard_header.dart';
import 'package:mqfm_apps/presentation/organisms/dashboard/horizontal_content_list.dart';
import 'package:mqfm_apps/presentation/organisms/dashboard/menu_grid.dart';
import 'package:mqfm_apps/presentation/organisms/dashboard/vertical_content_list.dart';
import 'package:mqfm_apps/presentation/molecules/guide_tour/guide_tour_targets.dart';
import 'package:mqfm_apps/presentation/organisms/guide_tour/guide_tour_manager.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final DashboardLogic logic = DashboardLogic();
  final GlobalKey _profileKey = GlobalKey();
  final GlobalKey _categoryKey = GlobalKey();
  final GlobalKey _menuGridKey = GlobalKey();
  final GlobalKey _quoteKey = GlobalKey();
  final GlobalKey _horizontalListKey = GlobalKey();
  final GlobalKey _verticalListKey = GlobalKey();

  @override
  void initState() {
    super.initState();
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
  void dispose() {
    logic.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: logic,
      builder: (context, child) {
        return Column(
          children: [
            DashboardHeader(
              categories: logic.categories.map((e) => e.name).toList(),
              selectedIndex: logic.selectedIndex,
              onCategorySelected: logic.selectCategory,
              profileKey: _profileKey,
              categoryKey: _categoryKey,
            ),
            Expanded(
              child: RefreshIndicator(
                onRefresh: () async {
                  await logic.fetchCategories();
                },
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (logic.isLoading)
                        const Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: LinearProgressIndicator(color: Colors.green),
                        ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        child: MenuGrid(
                          key: _menuGridKey,
                          selectedCategoryId: logic.currentCategoryId,
                        ),
                      ),
                      SizedBox(height: 24.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        child: Container(
                          key: _quoteKey,
                          child: QuoteCard(
                            key: ValueKey("quote-${logic.refreshVersion}"),
                          ),
                        ),
                      ),
                      SizedBox(height: 32.h),
                      Container(
                        key: _horizontalListKey,
                        child: HorizontalContentList(
                          key: ValueKey("horizontal-${logic.refreshVersion}"),
                          selectedCategoryId: logic.currentCategoryId,
                        ),
                      ),
                      SizedBox(height: 24.h),
                      Container(
                        key: _verticalListKey,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.w),
                          child: VerticalContentList(
                            key: ValueKey("vertical-${logic.refreshVersion}"),
                            selectedCategoryId: logic.currentCategoryId,
                          ),
                        ),
                      ),
                      SizedBox(height: 30.h),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
