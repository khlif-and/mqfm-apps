import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';

class GuideTourContent extends StatelessWidget {
  final String title;
  final String description;

  const GuideTourContent({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.textWhite,
            fontSize: AppDims.sp20,
          ),
        ),
        SizedBox(height: AppDims.h10),
        Text(
          description,
          style: TextStyle(color: AppColors.textWhiteSubdued, fontSize: AppDims.sp14),
        ),
      ],
    );
  }
}
