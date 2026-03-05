import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/presentation/atoms/profile/profile_avatar_builder.dart';

class SearchHeader extends StatelessWidget {
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final GlobalKey? profileKey;
  final GlobalKey? searchBarKey;

  const SearchHeader({
    super.key,
    this.controller,
    this.onChanged,
    this.profileKey,
    this.searchBarKey,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ProfileAvatarBuilder(size: 32, widgetKey: profileKey),
                SizedBox(width: AppDims.w12),
                Text(
                  'Search',
                  style: TextStyle(
                    color: AppColors.textWhite,
                    fontSize: AppDims.sp24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Icon(
              Icons.camera_alt_outlined,
              color: AppColors.textWhite,
              size: AppDims.r28,
            ),
          ],
        ),
        SizedBox(height: AppDims.h20),
        Container(
          key: searchBarKey,
          height: AppDims.h44,
          decoration: BoxDecoration(
            color: AppColors.searchBarBg,
            borderRadius: BorderRadius.circular(AppDims.r10),
            border: Border.all(color: AppColors.searchBarBorder, width: 1),
          ),
          padding: EdgeInsets.symmetric(horizontal: AppDims.w16),
          child: Row(
            children: [
              Icon(
                Icons.search_rounded,
                color: AppColors.searchIconColor,
                size: AppDims.sp22,
              ),
              SizedBox(width: AppDims.w12),
              Expanded(
                child: TextField(
                  controller: controller,
                  onChanged: onChanged,
                  style: TextStyle(
                    color: AppColors.textWhite,
                    fontSize: AppDims.sp15,
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Search your podcast',
                    hintStyle: TextStyle(
                      color: AppColors.searchIconColor,
                      fontSize: AppDims.sp15,
                      fontWeight: FontWeight.w400,
                    ),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(bottom: AppDims.h4),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
