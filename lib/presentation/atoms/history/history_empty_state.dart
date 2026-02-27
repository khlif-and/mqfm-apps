import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HistoryEmptyState extends StatelessWidget {
  const HistoryEmptyState({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.history_rounded, size: 64.r, color: Colors.grey),
          SizedBox(height: 16.h),
          Text(
            "Belum ada riwayat pemutaran",
            style: TextStyle(color: Colors.grey[400], fontSize: 14.sp),
          ),
        ],
      ),
    );
  }
}
