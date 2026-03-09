import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_strings.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';
import 'package:mqfm_apps/presentation/atoms/common/app_network_image.dart';
import 'package:mqfm_apps/presentation/atoms/common/shimmer_box.dart';

class HorizontalContentList extends StatelessWidget {
  final List<AudioEntity> audios;
  final bool isLoading;
  final String? title;
  final void Function(int audioId)? onAudioTap;

  const HorizontalContentList({
    super.key,
    required this.audios,
    this.isLoading = false,
    this.title,
    this.onAudioTap,
  });

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return SizedBox(
        height: AppDims.h210,
        child: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: AppDims.w16),
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          addAutomaticKeepAlives: false,
          addRepaintBoundaries: true,
          separatorBuilder: (_, _) => SizedBox(width: AppDims.w16),
          itemBuilder: (_, _) => SizedBox(
            width: AppDims.w140,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ShimmerBox(width: AppDims.r140, height: AppDims.r140, borderRadius: AppDims.r8),
                SizedBox(height: AppDims.h8),
                ShimmerBox(width: AppDims.w120, height: AppDims.h12),
                SizedBox(height: AppDims.h4),
                ShimmerBox(width: AppDims.w80, height: AppDims.h10),
              ],
            ),
          ),
        ),
      );
    }

    if (audios.isEmpty) {
      return const SizedBox.shrink();
    }

    final displayTitle = title ?? AppStrings.audiencePicks;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppDims.w16),
          child: Text(
            displayTitle,
            style: TextStyle(
              color: AppColors.textWhite,
              fontSize: AppDims.sp18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: AppDims.h16),
        SizedBox(
          height: AppDims.h210,
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: AppDims.w16),
            scrollDirection: Axis.horizontal,
            itemCount: audios.length,
            cacheExtent: 300,
            addAutomaticKeepAlives: false,
            addRepaintBoundaries: true,
            separatorBuilder: (_, _) => SizedBox(width: AppDims.w16),
            itemBuilder: (context, index) {
              final audio = audios[index];
              return RepaintBoundary(
                child: GestureDetector(
                  onTap: () => onAudioTap?.call(audio.id),
                  child: SizedBox(
                    width: AppDims.w140,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppNetworkImage(
                          url: audio.thumbnail,
                          width: AppDims.r140,
                          height: AppDims.r140,
                          borderRadius: AppDims.r8,
                        ),
                        SizedBox(height: AppDims.h8),
                        Text(
                          audio.title,
                          style: TextStyle(
                            color: AppColors.textWhite,
                            fontSize: AppDims.sp12,
                            fontWeight: FontWeight.w600,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: AppDims.h4),
                        Text(
                          audio.artist.isNotEmpty ? audio.artist : audio.description,
                          style: TextStyle(color: AppColors.textSecondary, fontSize: AppDims.sp10),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

