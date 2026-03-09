import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_images.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';

class MixedCard extends StatelessWidget {
  final String description;
  final List<String> imageUrls;

  const MixedCard({
    super.key,
    required this.description,
    required this.imageUrls,
  });

  Widget _buildImage(String url) {
    if (url.startsWith('http')) {
      return Image.network(
        url,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) =>
            Image.asset(AppImages.cardPlaceholder, fit: BoxFit.cover),
      );
    }
    return Image.asset(url, fit: BoxFit.cover);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppDims.w140,
      margin: EdgeInsets.only(right: AppDims.w16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: AppDims.w140,
                height: AppDims.w140,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppDims.r8),
                ),
                child: imageUrls.length == 4
                    ? Column(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(child: _buildImage(imageUrls[0])),
                                Expanded(child: _buildImage(imageUrls[1])),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(child: _buildImage(imageUrls[2])),
                                Expanded(child: _buildImage(imageUrls[3])),
                              ],
                            ),
                          ),
                        ],
                      )
                    : _buildImage(
                        imageUrls.isNotEmpty
                            ? imageUrls.first
                            : AppImages.cardPlaceholder,
                      ),
              ),
              Container(
                width: AppDims.w40,
                height: AppDims.w40,
                decoration: BoxDecoration(
                  color: AppColors.textWhite,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.onPrimary.withValues(alpha: 0.3),
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Icon(
                  Icons.play_arrow,
                  color: AppColors.onPrimary,
                  size: AppDims.sp28,
                ),
              ),
            ],
          ),
          SizedBox(height: AppDims.h12),
          Text(
            description,
            style: TextStyle(
              color: AppColors.textWhite.withValues(alpha: 0.4),
              fontSize: AppDims.sp13,
              height: 1.4,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
