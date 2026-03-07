import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:just_audio/just_audio.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';
import 'package:mqfm_apps/presentation/logic/navigation/bottom_bar_logic.dart';
import 'package:mqfm_apps/core/manager/audio_player_manager.dart';

class MiniPlayer extends StatelessWidget {
  final BottomBarLogic logic;
  final AudioPlayerManager audioManager;
  final void Function(int audioId)? onTap;

  const MiniPlayer({
    super.key,
    required this.logic,
    required this.audioManager,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<AudioEntity?>(
      valueListenable: audioManager.currentAudioNotifier,
      builder: (context, currentAudio, child) {
        if (currentAudio == null) return const SizedBox.shrink();

        return ListenableBuilder(
          listenable: logic,
          builder: (context, _) {
            return GestureDetector(
              onTap: () => onTap?.call(currentAudio.id),
              child: Container(
                margin: EdgeInsets.fromLTRB(AppDims.w8, 0, AppDims.w8, AppDims.h8),
                decoration: BoxDecoration(
                  color: AppColors.progressBar,
                  borderRadius: BorderRadius.circular(AppDims.r6),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.background,
                      blurRadius: AppDims.r20,
                      spreadRadius: AppDims.r2,
                      offset: Offset(0, AppDims.h10),
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.all(AppDims.w8),
                  child: Row(
                    children: [
                      Container(
                        width: AppDims.w38,
                        height: AppDims.w38,
                        decoration: BoxDecoration(
                          color: AppColors.shimmerBase,
                          borderRadius: BorderRadius.circular(AppDims.r4),
                          image: DecorationImage(
                            image: (currentAudio.thumbnail.isNotEmpty)
                                ? NetworkImage(currentAudio.thumbnail)
                                      as ImageProvider
                                : const AssetImage(
                                    'assets/images/img_card.jpg',
                                  ),
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
                              currentAudio.title,
                              style: TextStyle(
                                color: AppColors.textWhite,
                                fontWeight: FontWeight.bold,
                                fontSize: AppDims.sp14,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: AppDims.h2),
                            Text(
                              currentAudio.description,
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
                      IconButton(
                        icon: Icon(
                          logic.isLiked
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color: logic.isLiked ? AppColors.success : AppColors.textWhite,
                          size: AppDims.sp24,
                        ),
                        onPressed: () {
                          logic.toggleLike(currentAudio.id);
                        },
                      ),
                      StreamBuilder<PlayerState>(
                        stream: audioManager.player.playerStateStream,
                        builder: (context, snapshot) {
                          final playerState = snapshot.data;
                          final playing = playerState?.playing;
                          final processingState = playerState?.processingState;

                          if (processingState == ProcessingState.loading ||
                              processingState == ProcessingState.buffering) {
                            return SizedBox(
                              width: AppDims.sp32,
                              height: AppDims.sp32,
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: CircularProgressIndicator(
                                  color: AppColors.textWhite,
                                  strokeWidth: 2,
                                ),
                              ),
                            );
                          }

                          return IconButton(
                            icon: Icon(
                              (playing == true)
                                  ? Icons.pause
                                  : Icons.play_arrow,
                              color: AppColors.textWhite,
                              size: AppDims.sp32,
                            ),
                            onPressed: () {
                              if (playing == true) {
                                audioManager.player.pause();
                              } else {
                                audioManager.player.play();
                              }
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
