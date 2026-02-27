import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mqfm_apps/controller/audio/audio_controller.dart';
import 'package:mqfm_apps/model/audio/audio_model.dart';
import 'package:mqfm_apps/presentation/atoms/common/empty_state_card.dart';
import 'package:mqfm_apps/presentation/molecules/search/mixed_card.dart';
import 'package:shimmer/shimmer.dart';

class BrowseCategoryGrid extends StatefulWidget {
  const BrowseCategoryGrid({super.key});

  @override
  State<BrowseCategoryGrid> createState() => _BrowseCategoryGridState();
}

class _BrowseCategoryGridState extends State<BrowseCategoryGrid> {
  final AudioController _audioController = AudioController();
  List<Audio> _audios = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _fetchAudios();
  }

  Future<void> _fetchAudios() async {
    try {
      final response = await _audioController.getAllAudios();
      if (mounted && response.status == 200 && response.data != null) {
        setState(() {
          _audios = response.data!;
          _isLoading = false;
        });
      } else {
        if (mounted) setState(() => _isLoading = false);
      }
    } catch (e) {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  List<List<Audio>> _groupAudios(List<Audio> audios, int groupSize) {
    List<List<Audio>> groups = [];
    for (int i = 0; i < audios.length; i += groupSize) {
      int end = (i + groupSize > audios.length) ? audios.length : i + groupSize;
      groups.add(audios.sublist(i, end));
    }
    return groups;
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 12.h),
          Shimmer.fromColors(
            baseColor: Colors.grey[800]!,
            highlightColor: Colors.grey[600]!,
            child: Container(
              width: 130.w,
              height: 20.h,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(4.r),
              ),
            ),
          ),
          SizedBox(height: 16.h),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(3, (_) {
                return Padding(
                  padding: EdgeInsets.only(right: 16.w),
                  child: Shimmer.fromColors(
                    baseColor: Colors.grey[800]!,
                    highlightColor: Colors.grey[600]!,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 140.w,
                          height: 140.w,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                        ),
                        SizedBox(height: 12.h),
                        Container(
                          width: 120.w,
                          height: 12.h,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(4.r),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
          SizedBox(height: 24.h),
        ],
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 12.h),
        Text(
          'Mixed for you',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22.sp,
            fontWeight: FontWeight.bold,
            letterSpacing: -0.5,
          ),
        ),
        SizedBox(height: 16.h),
        if (_audios.isEmpty)
          const EmptyStateCard(
            message: 'Belum ada data saat ini',
            icon: Icons.library_music_outlined,
          )
        else
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            clipBehavior: Clip.none,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: _groupAudios(_audios, 4).map((group) {
                final imageUrls = group
                    .map(
                      (a) => a.thumbnail.isNotEmpty
                          ? a.thumbnail
                          : 'assets/images/img_card.jpg',
                    )
                    .toList();
                final description = group.map((a) => a.title).join(', ');
                return MixedCard(
                  description: 'Featuring $description',
                  imageUrls: imageUrls,
                );
              }).toList(),
            ),
          ),
        SizedBox(height: 24.h),
      ],
    );
  }
}
