import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_strings.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_images.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';

class SearchResultList extends StatelessWidget {
  final List<AudioEntity> results;
  final void Function(int audioId)? onAudioTap;

  const SearchResultList({super.key, required this.results, this.onAudioTap});

  @override
  Widget build(BuildContext context) {
    if (results.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.search_off,
              color: AppColors.textSecondary,
              size: AppDims.r64,
            ),
            SizedBox(height: AppDims.h16),
            Text(
              AppStrings.noResults,
              style: TextStyle(
                color: AppColors.textWhite,
                fontSize: AppDims.sp16,
              ),
            ),
          ],
        ),
      );
    }

    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: AppDims.w16),
      itemCount: results.length,
      itemBuilder: (context, index) {
        final audio = results[index];
        return GestureDetector(
          onTap: () => onAudioTap?.call(audio.id),
          child: Container(
            margin: EdgeInsets.only(bottom: AppDims.h12),
            padding: EdgeInsets.all(AppDims.r8),
            decoration: BoxDecoration(
              color: AppColors.surface,
              borderRadius: BorderRadius.circular(AppDims.r8),
            ),
            child: Row(
              children: [
                Container(
                  height: AppDims.w50,
                  width: AppDims.w50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppDims.r4),
                    image: DecorationImage(
                      image: audio.thumbnail.isNotEmpty
                          ? NetworkImage(audio.thumbnail) as ImageProvider
                          : const AssetImage(AppImages.cardPlaceholder),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: AppDims.w12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        audio.title,
                        style: TextStyle(
                          color: AppColors.textWhite,
                          fontWeight: FontWeight.bold,
                          fontSize: AppDims.sp14,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: AppDims.h4),
                      Text(
                        audio.description,
                        style: TextStyle(
                          color: AppColors.textSecondary,
                          fontSize: AppDims.sp12,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.play_circle_fill,
                  color: AppColors.textWhite,
                  size: AppDims.r30,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
