import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';

class RegisterTitle extends StatelessWidget {
  const RegisterTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Buat Akun",
        style: TextStyle(
          fontSize: AppDims.sp20,
          fontWeight: FontWeight.w700,
          color: AppColors.textWhite,
        ),
      ),
    );
  }
}
