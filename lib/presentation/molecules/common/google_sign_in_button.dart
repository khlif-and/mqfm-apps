import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';

class GoogleSignInButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final bool isLoading;

  const GoogleSignInButton({
    super.key,
    required this.onPressed,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: AppDims.h48,
      child: OutlinedButton(
        onPressed: isLoading ? null : onPressed,
        style: OutlinedButton.styleFrom(
          backgroundColor: AppColors.textWhite,
          side: BorderSide.none,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppDims.r30),
          ),
          elevation: 0,
        ),
        child: isLoading
            ? SizedBox(
                height: AppDims.h20,
                width: AppDims.h20,
                child: CircularProgressIndicator(
                  color: AppColors.backgroundBlack,
                  strokeWidth: 2,
                ),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    'https://www.gstatic.com/firebasejs/ui/2.0.0/images/auth/google.svg',
                    height: AppDims.h20,
                    width: AppDims.h20,
                    errorBuilder: (context, error, stackTrace) {
                      return Icon(
                        Icons.g_mobiledata,
                        size: AppDims.sp24,
                        color: AppColors.backgroundBlack,
                      );
                    },
                  ),
                  SizedBox(width: AppDims.w12),
                  Text(
                    'Masuk dengan Google',
                    style: TextStyle(
                      color: AppColors.backgroundBlack,
                      fontWeight: FontWeight.w600,
                      fontSize: AppDims.sp14,
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
