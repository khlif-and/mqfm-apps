import 'package:flutter/material.dart';
import 'package:mqfm_apps/model/auth/auth_model.dart';
import 'package:mqfm_apps/utils/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mqfm_apps/presentation/atoms/profile/profile_avatar.dart';
import 'package:mqfm_apps/utils/manager/user_manager.dart';
import 'package:shimmer/shimmer.dart';

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
          GestureDetector(
            key: profileKey,
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: ValueListenableBuilder<bool>(
              valueListenable: UserManager.instance.isLoadingNotifier,
              builder: (context, isLoading, _) {
                if (isLoading) {
                  return Shimmer.fromColors(
                    baseColor: Colors.grey[800]!,
                    highlightColor: Colors.grey[600]!,
                    child: Container(
                      width: 32.r,
                      height: 32.r,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                      ),
                    ),
                  );
                }
                return ValueListenableBuilder<UserData?>(
                  valueListenable: UserManager.instance.currentUserNotifier,
                  builder: (context, userData, child) {
                    Color bgColor = AppColors.placeholder;
                    if (userData?.avatarColor != null) {
                      try {
                        String hex = userData!.avatarColor!.replaceFirst(
                          '#',
                          '',
                        );
                        bgColor = Color(int.parse('FF$hex', radix: 16));
                      } catch (_) {}
                    }
                    return ProfileAvatar(
                      size: 32.r,
                      text: userData?.initials ?? "?",
                      backgroundColor: bgColor,
                      textColor: Colors.white,
                    );
                  },
                );
              },
            ),
          ),

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
