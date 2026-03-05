import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio_entity.dart';
import 'package:mqfm_apps/presentation/molecules/playlist/playlist_track_tile.dart';

class PlaylistTrackList extends StatelessWidget {
  final List<AudioEntity> audios;

  const PlaylistTrackList({super.key, required this.audios});

  @override
  Widget build(BuildContext context) {
    if (audios.isEmpty) {
      return Center(
        child: Padding(
          padding: EdgeInsets.only(top: AppDims.h20),
          child: Text(
            "Belum ada audio di playlist ini.",
            style: const TextStyle(color: AppColors.textSecondary),
          ),
        ),
      );
    }

    return Column(
      children: audios.map((audio) => PlaylistTrackTile(audio: audio)).toList(),
    );
  }
}
