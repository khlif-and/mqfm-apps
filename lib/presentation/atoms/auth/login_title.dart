import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';

class LoginTitle extends StatelessWidget {
  const LoginTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Login Akun",
        style: TextStyle(
          fontSize: AppDims.sp20,
          fontWeight: FontWeight.w700,
          color: AppColors.textWhite,
        ),
      ),
    );
  }
}
