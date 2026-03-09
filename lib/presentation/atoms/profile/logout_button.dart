import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';

class LogoutButton extends StatelessWidget {
  final bool isLoading;
  final VoidCallback? onPressed;

  const LogoutButton({
    super.key,
    required this.isLoading,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: AppDims.h48,
        child: ElevatedButton(
          onPressed: isLoading ? null : onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.textWhite,
            foregroundColor: AppColors.onPrimary,
            elevation: 0,
            padding: EdgeInsets.symmetric(horizontal: AppDims.w32),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppDims.r24),
            ),
          ),
          child: isLoading
              ? SizedBox(
                  height: AppDims.h20,
                  width: AppDims.h20,
                  child: CircularProgressIndicator(
                    color: AppColors.onPrimary,
                    strokeWidth: 2,
                  ),
                )
              : Text(
                  'Log out',
                  style: TextStyle(fontSize: AppDims.sp16, fontWeight: FontWeight.bold),
                ),
        ),
      ),
    );
  }
}
