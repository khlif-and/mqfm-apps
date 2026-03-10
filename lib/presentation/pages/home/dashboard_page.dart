import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/helpers/preferences_helper.dart';
import 'package:mqfm_apps/presentation/logic/guide_tour/guide_tour_manager.dart';
import 'package:mqfm_apps/presentation/logic/guide_tour/guide_tour_targets.dart';
import 'package:mqfm_apps/presentation/organisms/dashboard/dashboard_body.dart';
import 'package:mqfm_apps/presentation/organisms/dashboard/dashboard_providers.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _selectedIndex = 0, _selectedCategoryId = 0;
  bool _isHistoryLoading = true;

  final _profileKey = GlobalKey(), _categoryKey = GlobalKey();
  final _menuGridKey = GlobalKey(), _quoteKey = GlobalKey();
  final _horizontalListKey = GlobalKey(), _verticalListKey = GlobalKey();

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

  void _initTour() {
    Future.delayed(const Duration(milliseconds: 1500), () {
      if (!mounted) return;
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
    return DashboardProviders(
      child: DashboardBody(
        selectedIndex: _selectedIndex,
        selectedCategoryId: _selectedCategoryId,
        onCategorySelected: (index, categoryId) => setState(() {
          _selectedIndex = index;
          _selectedCategoryId = categoryId;
        }),
        profileKey: _profileKey,
        categoryKey: _categoryKey,
        menuGridKey: _menuGridKey,
        quoteKey: _quoteKey,
        horizontalListKey: _horizontalListKey,
        verticalListKey: _verticalListKey,
        isHistoryLoading: _isHistoryLoading,
      ),
    );
  }
}
