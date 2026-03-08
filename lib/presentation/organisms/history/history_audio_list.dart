import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';
import 'package:mqfm_apps/presentation/molecules/history/history_audio_tile.dart';

class HistoryAudioList extends StatelessWidget {
  final List<AudioEntity> histories;
  final void Function(int audioId)? onAudioTap;
  final void Function(int audioId)? onDeleteItem;

  const HistoryAudioList({
    super.key,
    required this.histories,
    this.onAudioTap,
    this.onDeleteItem,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(AppDims.r16),
      itemCount: histories.length,
      itemBuilder: (context, index) {
        final audio = histories[index];
        return HistoryAudioTile(
          audio: audio,
          onTap: onAudioTap != null ? () => onAudioTap!(audio.id) : null,
          onDelete: onDeleteItem != null ? () => onDeleteItem!(audio.id) : null,
        );
      },
    );
  }
}
