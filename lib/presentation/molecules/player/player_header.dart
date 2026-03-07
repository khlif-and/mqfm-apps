import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlayerHeader extends StatelessWidget {
  final VoidCallback? onBack;

  const PlayerHeader({super.key, this.onBack});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: onBack,
          child: Icon(
            Icons.keyboard_arrow_down,
            color: Colors.white,
            size: AppDims.r30,
          ),
        ),
        Column(
          children: [
            Text(
              'PLAYING FROM PLAYLIST',
              style: TextStyle(
                color: Colors.white70,
                fontSize: AppDims.sp10,
                letterSpacing: 1.2,
              ),
            ),
            Text(
              "MQFM Radio",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: AppDims.sp14,
              ),
            ),
          ],
        ),
        Icon(Icons.more_vert, color: Colors.white, size: AppDims.r24),
      ],
    );
  }
}
