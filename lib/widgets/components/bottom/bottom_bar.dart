import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:just_audio/just_audio.dart';
import 'package:mqfm_apps/model/audio/audio_model.dart';
import 'package:mqfm_apps/utils/manager/audio_player_manager.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  final AudioPlayerManager _audioManager = AudioPlayerManager();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ValueListenableBuilder<Audio?>(
          valueListenable: _audioManager.currentAudioNotifier,
          builder: (context, currentAudio, child) {
            if (currentAudio == null) return const SizedBox.shrink();

            return GestureDetector(
              onTap: () {
                context.push('/player/${currentAudio.id}');
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(8.w, 0, 8.w, 8.h),
                decoration: BoxDecoration(
                  color: const Color(0xFFD2694E),
                  borderRadius: BorderRadius.circular(6.r),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF121212),
                      blurRadius: 20.r,
                      spreadRadius: 2.r,
                      offset: Offset(0, 10.h),
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.w),
                  child: Row(
                    children: [
                      Container(
                        width: 38.w,
                        height: 38.w,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(4.r),
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
                      SizedBox(width: 12.w),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              currentAudio.title,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14.sp,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 2.h),
                            Text(
                              currentAudio.description,
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 12.sp,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                          size: 24.sp,
                        ),
                        onPressed: () {},
                      ),
                      StreamBuilder<PlayerState>(
                        stream: _audioManager.player.playerStateStream,
                        builder: (context, snapshot) {
                          final playerState = snapshot.data;
                          final playing = playerState?.playing;
                          final processingState = playerState?.processingState;

                          if (processingState == ProcessingState.loading ||
                              processingState == ProcessingState.buffering) {
                            return SizedBox(
                              width: 32.sp,
                              height: 32.sp,
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: CircularProgressIndicator(
                                  color: Colors.white,
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
                              color: Colors.white,
                              size: 32.sp,
                            ),
                            onPressed: () {
                              if (playing == true) {
                                _audioManager.player.pause();
                              } else {
                                _audioManager.player.play();
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
        ),
        Container(
          color: const Color(0xFF121212),
          padding: EdgeInsets.only(top: 12.h, bottom: 16.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavItem(
                Icons.home_filled,
                'home',
                true,
                () => context.go('/dashboard'),
              ),
              _buildNavItem(
                Icons.search,
                'search',
                false,
                () => context.push('/search'),
              ),
              _buildNavItem(
                Icons.queue_music,
                'playlist',
                false,
                () => context.push('/playlist'),
              ),
              _buildNavItem(Icons.favorite_border, 'like', false, () {}),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildNavItem(
    IconData icon,
    String label,
    bool isActive,
    VoidCallback onTap,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: isActive ? Colors.white : Colors.grey, size: 26.sp),
          SizedBox(height: 4.h),
          Text(
            label,
            style: TextStyle(
              color: isActive ? Colors.white : Colors.grey,
              fontSize: 11.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
