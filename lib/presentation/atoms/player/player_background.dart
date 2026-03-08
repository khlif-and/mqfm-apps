import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';

class PlayerBackground extends StatelessWidget {
  final Widget child;
  final Color? dominantColor;

  const PlayerBackground({super.key, required this.child, this.dominantColor});

  @override
  Widget build(BuildContext context) {
    final color = dominantColor ?? AppColors.background;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            color,
            Color.lerp(color, AppColors.background, 0.5)!,
            AppColors.background,
          ],
          stops: const [0.0, 0.4, 1.0],
        ),
      ),
      child: SafeArea(child: child),
    );
  }
}
