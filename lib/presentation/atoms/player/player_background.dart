import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';

class PlayerBackground extends StatelessWidget {
  final Widget child;

  const PlayerBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: AppColors.background),
      child: SafeArea(child: child),
    );
  }
}
