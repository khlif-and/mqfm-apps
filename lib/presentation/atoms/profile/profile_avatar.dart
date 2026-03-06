import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';

class ProfileAvatar extends StatelessWidget {
  final double size;
  final Color backgroundColor;
  final Color textColor;
  final String text;
  final String? profilePictureUrl;

  const ProfileAvatar({
    super.key,
    this.size = 40,
    this.backgroundColor = AppColors.avatarBrown,
    this.textColor = AppColors.textWhite,
    this.text = "K",
    this.profilePictureUrl,
  });

  @override
  Widget build(BuildContext context) {
    final hasImage = profilePictureUrl != null && profilePictureUrl!.isNotEmpty;

    return Container(
      width: size.w,
      height: size.w,
      decoration: BoxDecoration(color: backgroundColor, shape: BoxShape.circle),
      child: hasImage
          ? ClipOval(
              child: Image.network(
                profilePictureUrl!,
                width: size.w,
                height: size.w,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Center(
                    child: Text(
                      text,
                      style: TextStyle(
                        color: textColor,
                        fontSize: (size * 0.45).sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                },
              ),
            )
          : Center(
              child: Text(
                text,
                style: TextStyle(
                  color: textColor,
                  fontSize: (size * 0.45).sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
    );
  }
}
