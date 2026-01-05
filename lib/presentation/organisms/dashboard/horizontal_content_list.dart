import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mqfm_apps/controller/audio/audio_controller.dart';
import 'package:mqfm_apps/model/audio/audio_model.dart';

class HorizontalContentList extends StatefulWidget {
  final int selectedCategoryId;

  const HorizontalContentList({super.key, required this.selectedCategoryId});

  @override
  State<HorizontalContentList> createState() => _HorizontalContentListState();
}

class _HorizontalContentListState extends State<HorizontalContentList> {
  final AudioController _audioController = AudioController();
  List<Audio> _allAudios = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _fetchAudios();
  }

  @override
  void didUpdateWidget(HorizontalContentList oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.selectedCategoryId != widget.selectedCategoryId) {
      _fetchAudios();
    }
  }

  Future<void> _fetchAudios() async {
    setState(() => _isLoading = true);
    try {
      final response = await _audioController.getAudiosByCategory(
        widget.selectedCategoryId,
      );
      if (mounted) {
        if (response.status == 200 && response.data != null) {
          setState(() {
            _allAudios = response.data!;
            _isLoading = false;
          });
        } else {
          setState(() {
            _allAudios = [];
            _isLoading = false;
          });
        }
      }
    } catch (e) {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Center(
        child: CircularProgressIndicator(color: Colors.white),
      );
    }

    List<Audio> filteredList = _allAudios;

    if (filteredList.isEmpty) {
      return SizedBox(
        height: 50.h,
        child: Center(
          child: Text(
            "Belum ada konten di kategori ini",
            style: TextStyle(color: Colors.grey, fontSize: 12.sp),
          ),
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Text(
            "Di Dengar Oleh Pengguna",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 16.h),
        SizedBox(
          height: 210.h,
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            scrollDirection: Axis.horizontal,
            itemCount: filteredList.length,
            separatorBuilder: (context, index) => SizedBox(width: 16.w),
            itemBuilder: (context, index) {
              final audio = filteredList[index];

              return GestureDetector(
                onTap: () {
                  context.push('/player/${audio.id}');
                },
                child: SizedBox(
                  width: 140.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 140.r,
                        width: 140.r,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.r),
                          child: (audio.thumbnail.isNotEmpty)
                              ? Image.network(
                                  audio.thumbnail,
                                  fit: BoxFit.cover,
                                  errorBuilder: (context, error, stackTrace) =>
                                      Image.asset(
                                        'assets/images/img_card.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                )
                              : Image.asset(
                                  'assets/images/img_card.jpg',
                                  fit: BoxFit.cover,
                                ),
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Text(
                        audio.title,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        audio.description,
                        style: TextStyle(color: Colors.grey, fontSize: 10.sp),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
