import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mqfm_apps/widgets/components/bottom/bottom_bar.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 16.r,
                        backgroundColor: Colors.grey,
                        backgroundImage: const AssetImage(
                          'assets/images/img_card.jpg',
                        ),
                      ),
                      SizedBox(width: 12.w),
                      Text(
                        'Search',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.white,
                    size: 28.r,
                  ),
                ],
              ),
              SizedBox(height: 24.h),
              Container(
                height: 48.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4.r),
                ),
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: Row(
                  children: [
                    Icon(Icons.search, color: Colors.black87, size: 28.r),
                    SizedBox(width: 12.w),
                    Text(
                      'What do you want to listen to?',
                      style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24.h),
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
                  _BrowseCard(
                    title: 'Music',
                    color: Color(0xFFE91E63),
                    imageAsset: 'assets/images/img_card.jpg',
                  ),
                  _BrowseCard(
                    title: 'Podcasts',
                    color: Color(0xFF00695C),
                    imageAsset: 'assets/images/img_card.jpg',
                  ),
                  _BrowseCard(
                    title: 'Live Events',
                    color: Color(0xFF7B1FA2),
                    imageAsset: 'assets/images/img_card.jpg',
                  ),
                  _BrowseCard(
                    title: 'K-Pop ON!\n(온) Hub',
                    color: Color(0xFF1565C0),
                    imageAsset: 'assets/images/img_card.jpg',
                  ),
                  _BrowseCard(
                    title: 'Wrapped\nLive Ind...',
                    color: Color(0xFFBF360C),
                    imageAsset: 'assets/images/img_card.jpg',
                  ),
                ],
              ),
              SizedBox(height: 32.h),
              Text(
                'Discover something new',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.h),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _DiscoverCard(
                      imageAsset: 'assets/images/img_card.jpg',
                      tag: '#chill',
                    ),
                    SizedBox(width: 16.w),
                    _DiscoverCard(
                      imageAsset: 'assets/images/img_card.jpg',
                      tag: '#cinnamon',
                    ),
                    SizedBox(width: 16.w),
                    _DiscoverCard(
                      imageAsset: 'assets/images/img_card.jpg',
                      tag: '#hope',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.h),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}

class _BrowseCard extends StatelessWidget {
  final String title;
  final Color color;
  final String imageAsset;

  const _BrowseCard({
    required this.title,
    required this.color,
    required this.imageAsset,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(4.r),
      ),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(12.r),
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            bottom: -10.h,
            right: -15.w,
            child: Transform.rotate(
              angle: 25 * pi / 180,
              child: Container(
                height: 70.h,
                width: 70.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.r),
                  image: DecorationImage(
                    image: AssetImage(imageAsset),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 5,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _DiscoverCard extends StatelessWidget {
  final String imageAsset;
  final String tag;

  const _DiscoverCard({required this.imageAsset, required this.tag});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 220.h,
          width: 150.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            image: DecorationImage(
              image: AssetImage(imageAsset),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                bottom: 12.h,
                left: 12.w,
                child: Text(
                  tag,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        color: Colors.black.withOpacity(0.5),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
