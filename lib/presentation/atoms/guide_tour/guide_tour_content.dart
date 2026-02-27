import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
            color: Colors.white,
            fontSize: 20.sp,
          ),
        ),
        SizedBox(height: 10.h),
        Text(
          description,
          style: TextStyle(color: Colors.white70, fontSize: 14.sp),
        ),
      ],
    );
  }
}
