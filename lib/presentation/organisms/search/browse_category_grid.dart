import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mqfm_apps/presentation/molecules/search/browse_card.dart';

class BrowseCategoryGrid extends StatelessWidget {
  const BrowseCategoryGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 8.h),
        Text(
          'Start browsing',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 16.h),
        GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
          childAspectRatio: 1.6,
          mainAxisSpacing: 12.h,
          crossAxisSpacing: 12.w,
          children: const [
            BrowseCard(
              title: 'Music',
              color: Color(0xFFE91E63),
              imageAsset: 'assets/images/img_card.jpg',
            ),
            BrowseCard(
              title: 'Podcasts',
              color: Color(0xFF00695C),
              imageAsset: 'assets/images/img_card.jpg',
            ),
            BrowseCard(
              title: 'Live Events',
              color: Color(0xFF7B1FA2),
              imageAsset: 'assets/images/img_card.jpg',
            ),
            BrowseCard(
              title: 'K-Pop ON!\n(온) Hub',
              color: Color(0xFF1565C0),
              imageAsset: 'assets/images/img_card.jpg',
            ),
            BrowseCard(
              title: 'Wrapped\nLive Ind...',
              color: Color(0xFFBF360C),
              imageAsset: 'assets/images/img_card.jpg',
            ),
          ],
        ),
      ],
    );
  }
}
