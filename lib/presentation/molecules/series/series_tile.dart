import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/presentation/atoms/common/app_network_image.dart';

class SeriesTile extends StatelessWidget {
  final String title;
  final String imageUrl;
  final VoidCallback? onTap;

  const SeriesTile({super.key, required this.title, required this.imageUrl, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(AppDims.r6),
            child: imageUrl.isNotEmpty
                ? AppNetworkImage(
                    url: imageUrl,
                    width: AppDims.r42,
                    height: AppDims.r42,
                    borderRadius: AppDims.r6,
                  )
                : Container(
                    width: AppDims.r42,
                    height: AppDims.r42,
                    decoration: BoxDecoration(
                      color: AppColors.surfaceCard,
                      borderRadius: BorderRadius.circular(AppDims.r6),
                    ),
                    child: Icon(
                      Icons.library_music,
                      color: AppColors.textSecondary,
                      size: AppDims.sp18,
                    ),
                  ),
          ),
          SizedBox(width: AppDims.w10),
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                color: AppColors.textWhite,
                fontSize: AppDims.sp13,
                fontWeight: FontWeight.w500,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
