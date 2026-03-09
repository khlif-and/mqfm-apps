import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:just_audio/just_audio.dart';

class PlayerControls extends StatefulWidget {
  final AudioPlayer player;
  final bool hasNext;
  final bool hasPrevious;
  final VoidCallback? onNext;
  final VoidCallback? onPrevious;
  final VoidCallback? onShuffle;
  final VoidCallback? onTimer;
  final bool isShuffled;

  const PlayerControls({
    super.key,
    required this.player,
    this.hasNext = false,
    this.hasPrevious = false,
    this.onNext,
    this.onPrevious,
    this.onShuffle,
    this.onTimer,
    this.isShuffled = false,
  });

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
            final hasAudio = maxDuration > 0;
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
                    activeTrackColor: hasAudio ? AppColors.textWhite : AppColors.textWhite.withValues(alpha: 0.2),
                    inactiveTrackColor: AppColors.textWhite.withValues(alpha: hasAudio ? 0.3 : 0.1),
                    thumbColor: hasAudio ? AppColors.textWhite : AppColors.textWhite.withValues(alpha: 0.3),
                    disabledActiveTrackColor: AppColors.textWhite.withValues(alpha: 0.2),
                    disabledInactiveTrackColor: AppColors.textWhite.withValues(alpha: 0.1),
                    disabledThumbColor: AppColors.textWhite.withValues(alpha: 0.3),
                  ),
                  child: Slider(
                    min: 0,
                    max: maxDuration,
                    value: sliderValue,
                    onChangeStart: hasAudio ? (value) { _isSeeking = true; } : null,
                    onChanged: hasAudio ? (value) { setState(() { _seekValue = value; }); } : null,
                    onChangeEnd: hasAudio ? (value) {
                      _isSeeking = false;
                      widget.player.seek(Duration(milliseconds: value.toInt()));
                    } : null,
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
                          color: AppColors.textWhite.withValues(alpha: 0.7),
                          fontSize: AppDims.sp12,
                        ),
                      ),
                      Text(
                        _formatDuration(duration),
                        style: TextStyle(
                          color: AppColors.textWhite.withValues(alpha: 0.7),
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
              GestureDetector(
                onTap: widget.onShuffle,
                child: Icon(Icons.shuffle, color: widget.isShuffled ? AppColors.primaryClassic : AppColors.textWhiteSubdued, size: AppDims.r26),
              ),
              GestureDetector(
                onTap: widget.hasPrevious ? widget.onPrevious : null,
                child: Icon(
                  Icons.skip_previous,
                  color: widget.hasPrevious
                      ? AppColors.textWhite
                      : AppColors.textWhite.withValues(alpha: 0.3),
                  size: AppDims.r42,
                ),
              ),
              StreamBuilder<PlayerState>(
                stream: widget.player.playerStateStream,
                builder: (context, snapshot) {
                  final playerState = snapshot.data;
                  final processingState = playerState?.processingState;
                  final playing = playerState?.playing;

                  final isBuffering = processingState == ProcessingState.loading || processingState == ProcessingState.buffering;
                  return GestureDetector(
                    onTap: isBuffering ? null : (playing == true ? widget.player.pause : widget.player.play),
                    child: Container(
                      height: AppDims.r72,
                      width: AppDims.r72,
                      padding: isBuffering ? EdgeInsets.all(AppDims.r20) : EdgeInsets.zero,
                      decoration: const BoxDecoration(color: AppColors.textWhite, shape: BoxShape.circle),
                      child: isBuffering
                          ? const CircularProgressIndicator(color: AppColors.backgroundBlack)
                          : Icon(
                              playing == true ? Icons.pause : Icons.play_arrow,
                              color: AppColors.backgroundBlack,
                              size: AppDims.r38,
                            ),
                    ),
                  );
                },
              ),
              GestureDetector(
                onTap: widget.hasNext ? widget.onNext : null,
                child: Icon(
                  Icons.skip_next,
                  color: widget.hasNext
                      ? AppColors.textWhite
                      : AppColors.textWhite.withValues(alpha: 0.3),
                  size: AppDims.r42,
                ),
              ),
              GestureDetector(
                onTap: widget.onTimer,
                child: Icon(Icons.timer_outlined, color: AppColors.textWhite, size: AppDims.r26),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
