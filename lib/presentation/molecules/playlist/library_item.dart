import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';

class LibraryItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String? imageAsset;
  final String? imageUrl;
  final Widget? customImage;
  final bool isRoundImage;
  final bool isPinned;

  const LibraryItem({
    super.key,
    required this.title,
    required this.subtitle,
    this.imageAsset,
    this.imageUrl,
    this.customImage,
    this.isRoundImage = false,
    this.isPinned = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: AppDims.h16),
      child: Row(
        children: [
          SizedBox(
            width: AppDims.w64,
            height: AppDims.w64,
            child:
                customImage ??
                Container(
                  decoration: BoxDecoration(
                    borderRadius: isRoundImage
                        ? BorderRadius.circular(AppDims.r32)
                        : BorderRadius.circular(AppDims.r4),
                    image: DecorationImage(
                      image: (imageUrl != null && imageUrl!.isNotEmpty)
                          ? NetworkImage(imageUrl!) as ImageProvider
                          : AssetImage(
                              imageAsset ?? 'assets/images/img_card.jpg',
                            ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
          ),
          SizedBox(width: AppDims.w12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: AppColors.textWhite,
                    fontSize: AppDims.sp16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: AppDims.h4),
                Row(
                  children: [
                    if (isPinned) ...[
                      Transform.rotate(
                        angle: 45 * 3.14 / 180,
                        child: Icon(
                          Icons.push_pin,
                          color: AppColors.primaryClassic,
                          size: AppDims.r12,
                        ),
                      ),
                      SizedBox(width: AppDims.w4),
                    ],
                    Text(
                      subtitle,
                      style: TextStyle(
                        color: AppColors.textLight,
                        fontSize: AppDims.sp13,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
