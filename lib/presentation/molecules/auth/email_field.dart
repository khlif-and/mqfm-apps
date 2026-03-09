import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/core/utils/helpers/validators.dart';

class CustomEmailField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;

  const CustomEmailField({
    super.key,
    required this.controller,
    this.hintText = "Email",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.surfaceDark,
        borderRadius: BorderRadius.circular(AppDims.r8),
      ),
      child: TextFormField(
        controller: controller,
        keyboardType: TextInputType.emailAddress,
        style: const TextStyle(color: AppColors.textWhite),
        cursorColor: AppColors.primary,
        validator: Validators.validateEmail,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: AppColors.textWhite.withValues(alpha: 0.54)),
          prefixIcon: Icon(
            Icons.email_outlined,
            color: AppColors.textWhite.withValues(alpha: 0.7),
          ),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(
            horizontal: AppDims.w16,
            vertical: AppDims.h14,
          ),
          isDense: true,
          errorStyle: const TextStyle(color: AppColors.error),
        ),
      ),
    );
  }
}
