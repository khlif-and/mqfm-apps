import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/manager/audio_player_manager.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';

class SleepTimerSheet extends StatelessWidget {
  final AudioPlayerManager audioManager;

  const SleepTimerSheet({super.key, required this.audioManager});

  static void show(BuildContext context, AudioPlayerManager audioManager) {
    showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.surfaceCard,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(AppDims.r16)),
      ),
      builder: (_) => SleepTimerSheet(audioManager: audioManager),
    );
  }

  @override
  Widget build(BuildContext context) {
    final options = [5, 10, 15, 30, 45, 60, 90];

    return ValueListenableBuilder<Duration?>(
      valueListenable: audioManager.sleepTimerRemaining,
      builder: (context, remaining, _) {
        return SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppDims.w16,
              vertical: AppDims.h16,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: AppDims.w40,
                  height: AppDims.h4,
                  decoration: BoxDecoration(
                    color: AppColors.textMuted,
                    borderRadius: BorderRadius.circular(AppDims.r2),
                  ),
                ),
                SizedBox(height: AppDims.h16),
                Text(
                  'Sleep Timer',
                  style: TextStyle(
                    color: AppColors.textWhite,
                    fontSize: AppDims.sp18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (remaining != null) ...[
                  SizedBox(height: AppDims.h12),
                  Text(
                    '${remaining.inMinutes}:${(remaining.inSeconds % 60).toString().padLeft(2, '0')}',
                    style: TextStyle(
                      color: AppColors.primaryClassic,
                      fontSize: AppDims.sp24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: AppDims.h12),
                  SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {
                        audioManager.cancelSleepTimer();
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Matikan Timer',
                        style: TextStyle(
                          color: AppColors.error,
                          fontSize: AppDims.sp16,
                        ),
                      ),
                    ),
                  ),
                ],
                if (remaining == null) ...[
                  SizedBox(height: AppDims.h16),
                  ...options.map((min) => ListTile(
                        onTap: () {
                          audioManager.startSleepTimer(
                            Duration(minutes: min),
                          );
                          Navigator.pop(context);
                        },
                        title: Text(
                          '$min menit',
                          style: TextStyle(
                            color: AppColors.textWhite,
                            fontSize: AppDims.sp16,
                          ),
                        ),
                        leading: Icon(
                          Icons.timer_outlined,
                          color: AppColors.textSecondary,
                          size: AppDims.sp24,
                        ),
                      )),
                ],
                SizedBox(height: AppDims.h16),
              ],
            ),
          ),
        );
      },
    );
  }
}
