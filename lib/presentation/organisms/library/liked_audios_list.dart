import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio_entity.dart';
import 'package:mqfm_apps/presentation/molecules/library/liked_audio_tile.dart';

class LikedAudiosList extends StatelessWidget {
  final List<AudioEntity> audios;
  final Function(int) onUnlike;

  const LikedAudiosList({
    super.key,
    required this.audios,
    required this.onUnlike,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(16.r),
      itemCount: audios.length,
      itemBuilder: (context, index) {
        return LikedAudioTile(
          audio: audios[index],
          onUnlike: () => onUnlike(index),
        );
      },
    );
  }
}
