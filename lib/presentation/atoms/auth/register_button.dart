import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';

class RegisterButton extends StatelessWidget {
  final bool isLoading;
  final VoidCallback? onPressed;

  const RegisterButton({
    super.key,
    required this.isLoading,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: AppDims.w180,
        height: AppDims.h48,
        child: OutlinedButton(
          onPressed: onPressed,
          style: OutlinedButton.styleFrom(
            side: BorderSide(color: AppColors.textWhiteFaint, width: 1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppDims.r30),
            ),
            foregroundColor: AppColors.textWhite,
          ),
          child: isLoading
              ? SizedBox(
                  height: AppDims.h20,
                  width: AppDims.h20,
                  child: CircularProgressIndicator(
                    color: AppColors.textWhite,
                    strokeWidth: 2,
                  ),
                )
              : Text(
                  "Daftar",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: AppDims.sp16,
                  ),
                ),
        ),
      ),
    );
  }
}
