import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';

class SearchInputBar extends StatelessWidget {
  final TextEditingController controller;
  final ValueChanged<String> onChanged;

  const SearchInputBar({
    super.key,
    required this.controller,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppDims.h48,
      decoration: BoxDecoration(
        color: AppColors.textWhite,
        borderRadius: BorderRadius.circular(AppDims.r4),
      ),
      padding: EdgeInsets.symmetric(horizontal: AppDims.w12),
      child: Row(
        children: [
          Icon(
            Icons.search,
            color: AppColors.onPrimary.withValues(alpha: 0.87),
            size: AppDims.r28,
          ),
          SizedBox(width: AppDims.w12),
          Expanded(
            child: TextField(
              controller: controller,
              onChanged: onChanged,
              style: TextStyle(
                color: AppColors.onPrimary,
                fontSize: AppDims.sp14,
              ),
              decoration: InputDecoration(
                hintText: 'What do you want to listen to?',
                hintStyle: TextStyle(
                  color: AppColors.onPrimary.withValues(alpha: 0.4),
                  fontSize: AppDims.sp14,
                  fontWeight: FontWeight.w600,
                ),
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(bottom: AppDims.h4),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
