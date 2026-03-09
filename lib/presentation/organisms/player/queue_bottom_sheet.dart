import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_strings.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';
import 'package:mqfm_apps/presentation/atoms/common/app_network_image.dart';

class QueueBottomSheet extends StatelessWidget {
  final String currentAudioTitle;
  final List<AudioEntity> queue;
  final void Function(AudioEntity audio) onAudioTap;

  const QueueBottomSheet({
    super.key,
    required this.currentAudioTitle,
    required this.queue,
    required this.onAudioTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppDims.w16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              width: AppDims.w40,
              height: AppDims.h4,
              decoration: BoxDecoration(
                color: AppColors.textMuted,
                borderRadius: BorderRadius.circular(AppDims.r2),
              ),
            ),
          ),
          SizedBox(height: AppDims.h16),
          Text(
            '${AppStrings.playingFrom} $currentAudioTitle',
            style: TextStyle(
              color: AppColors.textSecondary,
              fontSize: AppDims.sp12,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: AppDims.h8),
          Text(
            AppStrings.nextUp,
            style: TextStyle(
              color: AppColors.textWhite,
              fontSize: AppDims.sp18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: AppDims.h16),
          Divider(color: AppColors.textSecondary),
          if (queue.isEmpty)
            Padding(
              padding: EdgeInsets.symmetric(vertical: AppDims.h24),
              child: Center(
                child: Text(
                  AppStrings.noQueue,
                  style: TextStyle(color: AppColors.textSecondary, fontSize: AppDims.sp14),
                ),
              ),
            )
          else
            Flexible(
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: queue.length,                addAutomaticKeepAlives: false,                separatorBuilder: (_, _) => SizedBox(height: AppDims.h8),
                itemBuilder: (context, index) {
                  final audio = queue[index];
                  return ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: AppNetworkImage(
                      url: audio.thumbnail,
                      width: AppDims.w50,
                      height: AppDims.w50,
                      borderRadius: AppDims.r6,
                    ),
                    title: Text(
                      audio.title,
                      style: TextStyle(
                        color: AppColors.textWhite,
                        fontSize: AppDims.sp14,
                        fontWeight: FontWeight.w500,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    subtitle: Text(
                      audio.artist,
                      style: TextStyle(
                        color: AppColors.textSecondary,
                        fontSize: AppDims.sp12,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    trailing: Icon(Icons.play_arrow_rounded, color: AppColors.textWhite, size: AppDims.r24),
                    onTap: () {
                      Navigator.pop(context);
                      onAudioTap(audio);
                    },
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}
