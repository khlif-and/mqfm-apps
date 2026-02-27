import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MixedCard extends StatelessWidget {
  final String description;
  final List<String> imageUrls;

  const MixedCard({
    super.key,
    required this.description,
    required this.imageUrls,
  });

  Widget _buildImage(String url) {
    if (url.startsWith('http')) {
      return Image.network(
        url,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) =>
            Image.asset('assets/images/img_card.jpg', fit: BoxFit.cover),
      );
    }
    return Image.asset(url, fit: BoxFit.cover);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140.w,
      margin: EdgeInsets.only(right: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 140.w,
                height: 140.w,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: imageUrls.length == 4
                    ? Column(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(child: _buildImage(imageUrls[0])),
                                Expanded(child: _buildImage(imageUrls[1])),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(child: _buildImage(imageUrls[2])),
                                Expanded(child: _buildImage(imageUrls[3])),
                              ],
                            ),
                          ),
                        ],
                      )
                    : _buildImage(
                        imageUrls.isNotEmpty
                            ? imageUrls.first
                            : 'assets/images/img_card.jpg',
                      ),
              ),
              Container(
                width: 40.w,
                height: 40.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Icon(Icons.play_arrow, color: Colors.black, size: 28.sp),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Text(
            description,
            style: TextStyle(
              color: Colors.grey[400],
              fontSize: 13.sp,
              height: 1.4,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
