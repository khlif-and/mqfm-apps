import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';

class LikedAudioTile extends StatelessWidget {
  final AudioEntity audio;
  final VoidCallback onUnlike;
  final VoidCallback? onTap;

  const LikedAudioTile({
    super.key,
    required this.audio,
    required this.onUnlike,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final dateDisplay = audio.createdAt.contains('T')
        ? audio.createdAt.split('T')[0]
        : audio.createdAt;

    return Container(
      margin: EdgeInsets.only(bottom: AppDims.h12),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: Container(
          width: AppDims.w50,
          height: AppDims.w50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppDims.r4),
            color: AppColors.shimmerBase,
            image: audio.thumbnail.isNotEmpty
                ? DecorationImage(
                    image: NetworkImage(audio.thumbnail),
                    fit: BoxFit.cover,
                    onError: (exception, stackTrace) {},
                  )
                : null,
          ),
          child: audio.thumbnail.isEmpty
              ? Icon(Icons.music_note, color: AppColors.textWhite, size: AppDims.r24)
              : null,
        ),
        title: Text(
          audio.title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: AppColors.textWhite,
            fontSize: AppDims.sp14,
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: Text(
          "Kajian • $dateDisplay",
          style: TextStyle(color: AppColors.textLight, fontSize: AppDims.sp12),
        ),
        trailing: IconButton(
          icon: Icon(Icons.favorite, color: AppColors.success),
          onPressed: onUnlike,
        ),
        onTap: onTap,
      ),
    );
  }
}
