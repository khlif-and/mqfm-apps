import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
            color: Colors.black.withOpacity(0.3),
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
                  color: Colors.grey[800],
                  child: const Center(
                    child: CircularProgressIndicator(
                      color: Colors.white54,
                      strokeWidth: 2,
                    ),
                  ),
                ),
                errorWidget: (context, url, error) => Image.asset(
                  'assets/images/img_card.jpg',
                  fit: BoxFit.cover,
                ),
              )
            : Image.asset('assets/images/img_card.jpg', fit: BoxFit.cover),
      ),
    );
  }
}
