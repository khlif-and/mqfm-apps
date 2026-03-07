import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';

class SidebarMenuItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback? onTap;

  const SidebarMenuItem({
    super.key,
    required this.icon,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ?? () {},
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppDims.w20, vertical: AppDims.h14),
        child: Row(
          children: [
            Icon(icon, color: AppColors.textWhite.withValues(alpha: 0.7), size: AppDims.sp22),
            SizedBox(width: AppDims.w16),
            Text(
              title,
              style: TextStyle(
                color: AppColors.textWhite.withValues(alpha: 0.85),
                fontSize: AppDims.sp15,
                fontWeight: FontWeight.w500,
                letterSpacing: -0.1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
