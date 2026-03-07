import 'package:flutter/material.dart';
import 'package:mqfm_apps/features/playlist/domain/entities/playlist.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';

class PlaylistDetailHeader extends StatelessWidget {
  final PlaylistEntity playlist;

  const PlaylistDetailHeader({super.key, required this.playlist});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            width: AppDims.w200,
            height: AppDims.w200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppDims.r8),
              image: DecorationImage(
                image: (playlist.imageUrl.isNotEmpty)
                    ? NetworkImage(playlist.imageUrl)
                    : const AssetImage('assets/images/img_card.jpg')
                          as ImageProvider,
                fit: BoxFit.cover,
              ),
              boxShadow: [
                BoxShadow(
                  color: AppColors.backgroundBlack.withOpacity(0.5),
                  blurRadius: AppDims.r20,
                  offset: const Offset(0, 10),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: AppDims.h24),
        Text(
          playlist.name,
          style: TextStyle(
            color: AppColors.textWhite,
            fontSize: AppDims.sp24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: AppDims.h8),
        Text(
          "Dibuat oleh User #${playlist.userId}",
          style: TextStyle(
            color: AppColors.textSecondary,
            fontSize: AppDims.sp14,
          ),
        ),
      ],
    );
  }
}
