import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool centerTitle;
  final Color? backgroundColor;

  const CustomAppBar({
    super.key,
    required this.title,
    this.centerTitle = false,
    this.backgroundColor = AppColors.transparent,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      elevation: 0,
      scrolledUnderElevation: 0,
      centerTitle: centerTitle,
      leading: IconButton(
        icon: Icon(Icons.arrow_back, color: AppColors.textWhite),
        onPressed: () {
          if (Navigator.canPop(context)) {
            Navigator.pop(context);
          }
        },
      ),
      title: Text(
        title,
        style: TextStyle(
          color: AppColors.textWhite,
          fontSize: AppDims.sp18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
