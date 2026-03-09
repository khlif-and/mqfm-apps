import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';

class FilterChipAtom extends StatelessWidget {
  final String label;

  const FilterChipAtom({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: AppDims.w16, vertical: AppDims.h8),
      decoration: BoxDecoration(
        color: AppColors.surfaceHighlight,
        borderRadius: BorderRadius.circular(AppDims.r20),
        border: Border.all(color: AppColors.transparent),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: AppColors.textWhite,
          fontSize: AppDims.sp13,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
