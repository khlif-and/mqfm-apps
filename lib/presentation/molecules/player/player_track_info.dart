import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';

class PlayerTrackInfo extends StatelessWidget {
  final String title;
  final String description;
  final VoidCallback onAddToPlaylist;

  const PlayerTrackInfo({
    super.key,
    required this.title,
    required this.description,
    required this.onAddToPlaylist,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: AppColors.textWhite,
                  fontSize: AppDims.sp22,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: AppDims.h4),
              Text(
                description,
                style: TextStyle(
                  color: AppColors.textWhiteSubdued,
                  fontSize: AppDims.sp16,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
        InkWell(
          onTap: onAddToPlaylist,
          child: Icon(
            Icons.add_circle_outline,
            color: AppColors.textWhite,
            size: AppDims.r28,
          ),
        ),
      ],
    );
  }
}
