import 'package:flutter/material.dart';
import 'package:mqfm_apps/presentation/logic/navigation/bottom_bar_logic.dart';
import 'package:mqfm_apps/presentation/molecules/navigation/main_bottom_navigation.dart';
import 'package:mqfm_apps/presentation/organisms/player/mini_player.dart';
import 'package:mqfm_apps/core/manager/audio_player_manager.dart';

class BottomBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int>? onTabSelected;
  final BottomBarLogic logic;
  final AudioPlayerManager audioManager;
  final VoidCallback? onFavoritesTap;
  final void Function(int audioId)? onMiniPlayerTap;

  const BottomBar({
    super.key,
    this.currentIndex = 0,
    this.onTabSelected,
    required this.logic,
    required this.audioManager,
    this.onFavoritesTap,
    this.onMiniPlayerTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        MiniPlayer(logic: logic, audioManager: audioManager, onTap: onMiniPlayerTap),
        MainBottomNavigation(
          currentIndex: currentIndex,
          onTabSelected: onTabSelected,
          onFavoritesTap: onFavoritesTap,
        ),
      ],
    );
  }
}
