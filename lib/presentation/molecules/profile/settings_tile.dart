import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';

class SettingsTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const SettingsTile({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: AppDims.w16, vertical: AppDims.h2),
      leading: Icon(icon, color: AppColors.textWhite, size: AppDims.r28),
      title: Text(
        title,
        style: TextStyle(
          color: AppColors.textWhite,
          fontSize: AppDims.sp16,
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Padding(
        padding: EdgeInsets.only(top: AppDims.h4),
        child: Text(
          subtitle,
          style: TextStyle(color: AppColors.textLight, fontSize: AppDims.sp12),
        ),
      ),
      onTap: onTap,
    );
  }
}
