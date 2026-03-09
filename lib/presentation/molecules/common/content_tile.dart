import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/presentation/atoms/common/app_network_image.dart';

class ContentTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String? imageUrl;
  final IconData? leadingIcon;
  final Widget? trailing;
  final VoidCallback? onTap;
  final double imageSize;
  final double imageRadius;

  const ContentTile({
    super.key,
    required this.title,
    this.subtitle = '',
    this.imageUrl,
    this.leadingIcon,
    this.trailing,
    this.onTap,
    this.imageSize = 0,
    this.imageRadius = 0,
  });

  @override
  Widget build(BuildContext context) {
    final size = imageSize > 0 ? imageSize : AppDims.r56;
    final radius = imageRadius > 0 ? imageRadius : AppDims.r8;

    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppDims.w16,
          vertical: AppDims.h8,
        ),
        child: Row(
          children: [
            if (imageUrl != null)
              AppNetworkImage(
                url: imageUrl!,
                width: size,
                height: size,
                borderRadius: radius,
              )
            else if (leadingIcon != null)
              Container(
                width: size,
                height: size,
                decoration: BoxDecoration(
                  color: AppColors.surfaceHighlight,
                  borderRadius: BorderRadius.circular(radius),
                ),
                child: Icon(
                  leadingIcon,
                  color: AppColors.textSecondary,
                  size: size * 0.5,
                ),
              ),
            SizedBox(width: AppDims.w12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: AppColors.textWhite,
                      fontSize: AppDims.sp14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  if (subtitle.isNotEmpty) ...[
                    SizedBox(height: AppDims.h4),
                    Text(
                      subtitle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: AppColors.textSecondary,
                        fontSize: AppDims.sp12,
                      ),
                    ),
                  ],
                ],
              ),
            ),
            if (trailing != null) ...[
              SizedBox(width: AppDims.w8),
              trailing!,
            ],
          ],
        ),
      ),
    );
  }
}
