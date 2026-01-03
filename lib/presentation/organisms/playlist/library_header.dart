import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LibraryHeader extends StatelessWidget {
  const LibraryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 16.r,
          backgroundImage: const AssetImage('assets/images/img_card.jpg'),
        ),
        SizedBox(width: 12.w),
        Text(
          'Pustaka Saya',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        Icon(Icons.search, color: Colors.white, size: 28.r),
        SizedBox(width: 16.w),
        Icon(Icons.add, color: Colors.white, size: 30.r),
      ],
    );
  }
}
