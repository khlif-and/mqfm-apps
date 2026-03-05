import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mqfm_apps/presentation/organisms/navigation/bottom_bar.dart';
import 'package:mqfm_apps/presentation/organisms/profile/sidebar_profile.dart';
import 'package:mqfm_apps/presentation/pages/home/dashboard_page.dart';
import 'package:mqfm_apps/presentation/pages/playlist/playlist_page.dart';
import 'package:mqfm_apps/presentation/pages/search/search_page.dart';
import 'package:mqfm_apps/presentation/molecules/guide_tour/sidebar_tour_targets.dart';
import 'package:mqfm_apps/presentation/organisms/guide_tour/guide_tour_manager.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/manager/user_manager.dart';

class MainShellPage extends StatefulWidget {
  final int initialIndex;

  const MainShellPage({super.key, this.initialIndex = 0});

  @override
  State<MainShellPage> createState() => MainShellPageState();

  static MainShellPageState? of(BuildContext context) {
    return context.findAncestorStateOfType<MainShellPageState>();
  }
}

class MainShellPageState extends State<MainShellPage> {
  late int _currentIndex;

  final GlobalKey _sidebarProfileKey = GlobalKey();
  final GlobalKey _sidebarMenuKey = GlobalKey();
  final GlobalKey _sidebarSettingsKey = GlobalKey();

  final List<Widget> _pages = const [
    DashboardPage(),
    SearchPage(),
    PlaylistPage(),
  ];

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialIndex;
    _validateAndFetchUser();
  }

  Future<void> _validateAndFetchUser() async {
    final isValid = await UserManager.instance.fetchUser();
    if (!isValid && mounted) {
      context.go('/onboarding');
    }
  }

  void switchTab(int index) {
    if (index != _currentIndex) {
      setState(() {
        _currentIndex = index;
      });
    }
  }

  int get currentIndex => _currentIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      onDrawerChanged: (isOpened) {
        if (isOpened) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            final sidebarTargets = buildSidebarTargets(
              profileSectionKey: _sidebarProfileKey,
              menuSectionKey: _sidebarMenuKey,
              settingsKey: _sidebarSettingsKey,
            );
            GuideTourManager.showTourIfNeeded(
              context: context,
              targets: sidebarTargets,
              tourKey: 'sidebar_tour_shown',
            );
          });
        }
      },
      drawer: SidebarProfile(
        profileSectionKey: _sidebarProfileKey,
        menuSectionKey: _sidebarMenuKey,
        settingsKey: _sidebarSettingsKey,
      ),
      body: IndexedStack(index: _currentIndex, children: _pages),
      bottomNavigationBar: BottomBar(currentIndex: _currentIndex),
    );
  }
}
