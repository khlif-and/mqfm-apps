import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:just_audio/just_audio.dart';

class PlayerControls extends StatefulWidget {
  final AudioPlayer player;

  const PlayerControls({super.key, required this.player});

  @override
  State<PlayerControls> createState() => _PlayerControlsState();
}

class _PlayerControlsState extends State<PlayerControls> {
  bool _isSeeking = false;
  double _seekValue = 0;

  String _formatDuration(Duration? duration) {
    if (duration == null) return '--:--';
    final minutes = duration.inMinutes.remainder(60).toString().padLeft(2, '0');
    final seconds = duration.inSeconds.remainder(60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StreamBuilder<Duration>(
          stream: widget.player.positionStream,
          builder: (context, snapshot) {
            final position = snapshot.data ?? Duration.zero;
            final duration = widget.player.duration ?? Duration.zero;

            double maxDuration = duration.inMilliseconds.toDouble();
            if (maxDuration <= 0) maxDuration = 1;

            double sliderValue = _isSeeking
                ? _seekValue
                : position.inMilliseconds.toDouble().clamp(0, maxDuration);

            return Column(
              children: [
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    trackHeight: AppDims.h2,
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: AppDims.r6),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: AppDims.r14),
                    activeTrackColor: Colors.white,
                    inactiveTrackColor: Colors.white.withOpacity(0.3),
                    thumbColor: Colors.white,
                  ),
                  child: Slider(
                    min: 0,
                    max: maxDuration,
                    value: sliderValue,
                    onChangeStart: (value) {
                      _isSeeking = true;
                    },
                    onChanged: (value) {
                      setState(() {
                        _seekValue = value;
                      });
                    },
                    onChangeEnd: (value) {
                      _isSeeking = false;
                      widget.player.seek(Duration(milliseconds: value.toInt()));
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppDims.w24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        _formatDuration(
                          _isSeeking
                              ? Duration(milliseconds: _seekValue.toInt())
                              : position,
                        ),
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                          fontSize: AppDims.sp12,
                        ),
                      ),
                      Text(
                        _formatDuration(duration),
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                          fontSize: AppDims.sp12,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
        SizedBox(height: AppDims.h10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppDims.w24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.shuffle, color: AppColors.primaryClassic, size: AppDims.r26),
              Icon(Icons.skip_previous, color: Colors.white, size: AppDims.r42),
              StreamBuilder<PlayerState>(
                stream: widget.player.playerStateStream,
                builder: (context, snapshot) {
                  final playerState = snapshot.data;
                  final processingState = playerState?.processingState;
                  final playing = playerState?.playing;

                  if (processingState == ProcessingState.loading ||
                      processingState == ProcessingState.buffering) {
                    return Container(
                      height: AppDims.r72,
                      width: AppDims.r72,
                      padding: EdgeInsets.all(AppDims.r20),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: const CircularProgressIndicator(
                        color: Colors.black,
                      ),
                    );
                  } else if (playing != true) {
                    return GestureDetector(
                      onTap: widget.player.play,
                      child: Container(
                        height: AppDims.r72,
                        width: AppDims.r72,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.play_arrow,
                          color: Colors.black,
                          size: AppDims.r38,
                        ),
                      ),
                    );
                  } else {
                    return GestureDetector(
                      onTap: widget.player.pause,
                      child: Container(
                        height: AppDims.r72,
                        width: AppDims.r72,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.pause,
                          color: Colors.black,
                          size: AppDims.r38,
                        ),
                      ),
                    );
                  }
                },
              ),
              Icon(Icons.skip_next, color: Colors.white, size: AppDims.r42),
              Icon(Icons.timer_outlined, color: Colors.white, size: AppDims.r26),
            ],
          ),
        ),
      ],
    );
  }
}
