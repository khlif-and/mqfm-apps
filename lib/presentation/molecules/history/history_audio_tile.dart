import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio_entity.dart';
import 'package:go_router/go_router.dart';

class HistoryAudioTile extends StatelessWidget {
  final PlayHistoryEntity history;

  const HistoryAudioTile({super.key, required this.history});

  @override
  Widget build(BuildContext context) {
    final dateDisplay = history.playedAt.contains('T')
        ? history.playedAt.split('T')[0]
        : history.playedAt;

    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: Container(
          width: 50.w,
          height: 50.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.r),
            color: Colors.grey[800],
          ),
          child: Icon(Icons.music_note, color: Colors.white, size: 24.r),
        ),
        title: Text(
          "Audio #${history.audioId}",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: Text(
          "$dateDisplay • ${history.playCount}x diputar",
          style: TextStyle(color: Colors.grey[400], fontSize: 12.sp),
        ),
        trailing: Icon(
          Icons.play_circle_filled_rounded,
          color: Colors.green,
          size: 32.r,
        ),
        onTap: () {
          context.push('/player/${history.audioId}');
        },
      ),
    );
  }
}
