import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/features/auth/domain/entities/user.dart';
import 'package:mqfm_apps/presentation/molecules/profile/profile_avatar_builder.dart';

class DashboardHeader extends StatelessWidget {
  final List<String> categories;
  final int selectedIndex;
  final Function(int) onCategorySelected;
  final GlobalKey? profileKey;
  final GlobalKey? categoryKey;
  final UserEntity? userData;
  final bool isUserLoading;
  final VoidCallback? onAvatarTap;

  const DashboardHeader({
    super.key,
    required this.categories,
    required this.selectedIndex,
    required this.onCategorySelected,
    this.profileKey,
    this.categoryKey,
    this.userData,
    this.isUserLoading = false,
    this.onAvatarTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(top: AppDims.h50, bottom: AppDims.h16),
      decoration: const BoxDecoration(color: AppColors.background),
      child: Row(
        children: [
          SizedBox(width: AppDims.w16),
          ProfileAvatarBuilder(size: 32, widgetKey: profileKey, userData: userData, isLoading: isUserLoading, onTap: onAvatarTap),
          SizedBox(width: AppDims.w12),
          Expanded(
            key: categoryKey,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(right: AppDims.w16),
              child: Row(
                children: List.generate(categories.length, (index) {
                  return GestureDetector(
                    onTap: () => onCategorySelected(index),
                    child: Container(
                      margin: EdgeInsets.only(right: AppDims.w8),
                      padding: EdgeInsets.symmetric(
                        horizontal: AppDims.w16,
                        vertical: AppDims.h6,
                      ),
                      decoration: BoxDecoration(
                        color: index == selectedIndex
                            ? AppColors.primaryLight
                            : AppColors.cardBackground,
                        borderRadius: BorderRadius.circular(AppDims.r20),
                      ),
                      child: Text(
                        categories[index],
                        style: TextStyle(
                          color: AppColors.textWhite,
                          fontSize: AppDims.sp12,
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
