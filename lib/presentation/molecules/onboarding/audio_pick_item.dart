import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';
import 'package:mqfm_apps/presentation/atoms/common/app_network_image.dart';

class AudioPickItem extends StatelessWidget {
  final AudioEntity audio;
  final bool isSelected;
  final VoidCallback onTap;

  const AudioPickItem({
    super.key,
    required this.audio,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppDims.r12),
          border: isSelected
              ? Border.all(color: AppColors.primaryClassic, width: 2.5)
              : null,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(AppDims.r12),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Column(
                children: [
                  Expanded(
                    child: AppNetworkImage(
                      url: audio.thumbnail,
                      fit: BoxFit.cover,
                      borderRadius: AppDims.r12,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 4.w, vertical: 4.h),
                    child: Text(
                      audio.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.textWhite,
                        fontSize: AppDims.sp11,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              if (isSelected)
                Positioned(
                  top: 6.h,
                  right: 6.w,
                  child: Container(
                    padding: EdgeInsets.all(2.r),
                    decoration: const BoxDecoration(
                      color: AppColors.primaryClassic,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.check,
                        size: AppDims.r16, color: AppColors.textWhite),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
