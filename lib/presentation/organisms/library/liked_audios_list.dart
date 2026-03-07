import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';
import 'package:mqfm_apps/presentation/molecules/library/liked_audio_tile.dart';

class LikedAudiosList extends StatelessWidget {
  final List<AudioEntity> audios;
  final Function(int) onUnlike;
  final void Function(int audioId)? onAudioTap;

  const LikedAudiosList({
    super.key,
    required this.audios,
    required this.onUnlike,
    this.onAudioTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(AppDims.r16),
      itemCount: audios.length,
      itemBuilder: (context, index) {
        return LikedAudioTile(
          audio: audios[index],
          onUnlike: () => onUnlike(index),
          onTap: onAudioTap != null ? () => onAudioTap!(audios[index].id) : null,
        );
      },
    );
  }
}
