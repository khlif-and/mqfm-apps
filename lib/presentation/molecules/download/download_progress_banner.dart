import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/features/download/data/datasources/locals/audio_file_downloader.dart';

class DownloadProgressBanner extends StatelessWidget {
  const DownloadProgressBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Map<int, double>>(
      valueListenable: AudioFileDownloader().progressNotifier,
      builder: (context, progressMap, _) {
        if (progressMap.isEmpty) return const SizedBox.shrink();
        final count = progressMap.length;
        final avgProgress = progressMap.values.reduce((a, b) => a + b) / count;
        final percent = (avgProgress * 100).toInt();
        return Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: AppDims.w16, vertical: AppDims.h8),
          color: AppColors.primary,
          child: Row(
            children: [
              SizedBox(
                width: AppDims.sp16,
                height: AppDims.sp16,
                child: CircularProgressIndicator(
                  value: avgProgress,
                  strokeWidth: 2,
                  color: AppColors.textWhite,
                ),
              ),
              SizedBox(width: AppDims.w8),
              Expanded(
                child: Text(
                  count == 1
                      ? 'Mengunduh... $percent%'
                      : 'Mengunduh $count file... $percent%',
                  style: TextStyle(
                    color: AppColors.textWhite,
                    fontSize: AppDims.sp12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
