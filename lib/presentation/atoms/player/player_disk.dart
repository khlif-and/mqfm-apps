import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_images.dart';
import 'package:cached_network_image/cached_network_image.dart';

class PlayerDisk extends StatelessWidget {
  final String imageUrl;

  const PlayerDisk({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppDims.w340,
      width: AppDims.w340,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppDims.r8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.3),
            blurRadius: AppDims.r20,
            offset: Offset(0, AppDims.h10),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(AppDims.r8),
        child: imageUrl.isNotEmpty
            ? CachedNetworkImage(
                imageUrl: imageUrl,
                fit: BoxFit.cover,
                placeholder: (context, url) => Container(
                  color: AppColors.shimmerBase,
                  child: const Center(
                    child: CircularProgressIndicator(
                      color: AppColors.textWhiteFaint,
                      strokeWidth: 2,
                    ),
                  ),
                ),
                errorWidget: (context, url, error) => Image.asset(
                  AppImages.cardPlaceholder,
                  fit: BoxFit.cover,
                ),
              )
            : Image.asset(AppImages.cardPlaceholder, fit: BoxFit.cover),
      ),
    );
  }
}
