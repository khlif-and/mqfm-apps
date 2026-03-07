import 'package:mqfm_apps/core/routes/app_path_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mqfm_apps/presentation/organisms/navigation/bottom_bar.dart';
import 'package:mqfm_apps/presentation/organisms/profile/sidebar_profile.dart';
import 'package:mqfm_apps/presentation/pages/home/dashboard_page.dart';
import 'package:mqfm_apps/presentation/pages/playlist/playlist_page.dart';
import 'package:mqfm_apps/presentation/pages/search/search_page.dart';
import 'package:mqfm_apps/presentation/logic/guide_tour/sidebar_tour_targets.dart';
import 'package:mqfm_apps/presentation/logic/guide_tour/guide_tour_manager.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/manager/user_manager.dart';
import 'package:mqfm_apps/core/manager/audio_player_manager.dart';
import 'package:mqfm_apps/core/utils/helpers/message_helper.dart';
import 'package:mqfm_apps/features/auth/domain/entities/user.dart';
import 'package:mqfm_apps/presentation/logic/navigation/bottom_bar_logic.dart';

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
  final BottomBarLogic _bottomBarLogic = BottomBarLogic();
  final AudioPlayerManager _audioManager = AudioPlayerManager();

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
    _bottomBarLogic.fetchLikedStatus();
    _bottomBarLogic.addListener(_onBottomBarLogicChange);
  }

  void _onBottomBarLogicChange() {
    if (mounted && _bottomBarLogic.message != null) {
      if (_bottomBarLogic.message!.contains("Gagal") ||
          _bottomBarLogic.message!.contains("Silakan login")) {
        MessageHelper.showError(context, _bottomBarLogic.message!);
      } else {
        MessageHelper.showSuccess(context, _bottomBarLogic.message!);
      }
    }
  }

  @override
  void dispose() {
    _bottomBarLogic.removeListener(_onBottomBarLogicChange);
    _bottomBarLogic.dispose();
    super.dispose();
  }

  Future<void> _validateAndFetchUser() async {
    final isValid = await UserManager.instance.fetchUser();
    if (!isValid && mounted) {
      context.go(AppPathRoutes.onboarding);
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
      drawer: ValueListenableBuilder<bool>(
        valueListenable: UserManager.instance.isLoadingNotifier,
        builder: (context, isLoading, _) {
          return ValueListenableBuilder<UserEntity?>(
            valueListenable: UserManager.instance.currentUserNotifier,
            builder: (context, userData, _) {
              return SidebarProfile(
                userData: userData,
                isLoading: isLoading,
                profileSectionKey: _sidebarProfileKey,
                menuSectionKey: _sidebarMenuKey,
                settingsKey: _sidebarSettingsKey,
                onNavigate: (route) => context.push(route),
              );
            },
          );
        },
      ),
      body: IndexedStack(index: _currentIndex, children: _pages),
      bottomNavigationBar: BottomBar(
        currentIndex: _currentIndex,
        onTabSelected: switchTab,
        logic: _bottomBarLogic,
        audioManager: _audioManager,
        onFavoritesTap: () => context.push(AppPathRoutes.favorites),
        onMiniPlayerTap: (audioId) => context.push(AppPathRoutes.playerWithId(audioId.toString())),
      ),
    );
  }
}