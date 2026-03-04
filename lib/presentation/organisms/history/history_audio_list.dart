import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio_entity.dart';
import 'package:mqfm_apps/presentation/molecules/history/history_audio_tile.dart';

class HistoryAudioList extends StatelessWidget {
  final List<PlayHistoryEntity> histories;

  const HistoryAudioList({super.key, required this.histories});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(16.r),
      itemCount: histories.length,
      itemBuilder: (context, index) {
        return HistoryAudioTile(history: histories[index]);
      },
    );
  }
}
