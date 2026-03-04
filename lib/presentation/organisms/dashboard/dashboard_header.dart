import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mqfm_apps/presentation/atoms/profile/profile_avatar_builder.dart';

class DashboardHeader extends StatelessWidget {
  final List<String> categories;
  final int selectedIndex;
  final Function(int) onCategorySelected;
  final GlobalKey? profileKey;
  final GlobalKey? categoryKey;

  const DashboardHeader({
    super.key,
    required this.categories,
    required this.selectedIndex,
    required this.onCategorySelected,
    this.profileKey,
    this.categoryKey,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(top: 50.h, bottom: 16.h),
      decoration: const BoxDecoration(color: AppColors.background),
      child: Row(
        children: [
          SizedBox(width: 16.w),
          ProfileAvatarBuilder(size: 32, widgetKey: profileKey),
          SizedBox(width: 12.w),
          Expanded(
            key: categoryKey,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(right: 16.w),
              child: Row(
                children: List.generate(categories.length, (index) {
                  return GestureDetector(
                    onTap: () => onCategorySelected(index),
                    child: Container(
                      margin: EdgeInsets.only(right: 8.w),
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                        vertical: 6.h,
                      ),
                      decoration: BoxDecoration(
                        color: index == selectedIndex
                            ? AppColors.primaryLight
                            : AppColors.cardBackground,
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Text(
                        categories[index],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
