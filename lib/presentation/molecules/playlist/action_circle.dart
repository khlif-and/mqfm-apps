import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';

class ActionCircle extends StatelessWidget {
  final IconData icon;
  final double size;
  final bool isPrimary;
  final VoidCallback? onTap;

  const ActionCircle({
    super.key,
    required this.icon,
    required this.size,
    this.isPrimary = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: isPrimary ? AppColors.primary : AppColors.surfaceCard,
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          color: isPrimary ? AppColors.background : AppColors.textWhite,
          size: isPrimary ? size * 0.5 : size * 0.45,
        ),
      ),
    );
  }
}
