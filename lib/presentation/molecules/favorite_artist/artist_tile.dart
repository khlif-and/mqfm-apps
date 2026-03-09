import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';

class ArtistTile extends StatelessWidget {
  final String name;
  final VoidCallback onRemove;

  const ArtistTile({super.key, required this.name, required this.onRemove});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDims.w16, vertical: AppDims.h8),
      child: Row(
        children: [
          CircleAvatar(
            radius: AppDims.r22,
            backgroundColor: AppColors.surfaceHighlight,
            child: Text(
              name.isNotEmpty ? name[0].toUpperCase() : '?',
              style: TextStyle(color: AppColors.primary, fontSize: AppDims.sp16, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(width: AppDims.w12),
          Expanded(
            child: Text(
              name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: AppColors.textWhite, fontSize: AppDims.sp14, fontWeight: FontWeight.w500),
            ),
          ),
          GestureDetector(
            onTap: onRemove,
            child: Icon(Icons.close, color: AppColors.textSecondary, size: AppDims.sp18),
          ),
        ],
      ),
    );
  }
}
