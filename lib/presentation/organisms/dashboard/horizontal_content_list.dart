import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mqfm_apps/core/di/injection.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio_entity.dart';
import 'package:mqfm_apps/features/audio/domain/repositories/audio_repository.dart';

class HorizontalContentList extends StatefulWidget {
  final int selectedCategoryId;

  const HorizontalContentList({super.key, required this.selectedCategoryId});

  @override
  State<HorizontalContentList> createState() => _HorizontalContentListState();
}

class _HorizontalContentListState extends State<HorizontalContentList> {
  final AudioRepository _audioRepository = getIt<AudioRepository>();
  List<AudioEntity> _allAudios = [];
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
      final result = await _audioRepository.getAudios();
      if (mounted) {
        result.fold(
          (error) => setState(() {
            _allAudios = [];
            _isLoading = false;
          }),
          (audios) => setState(() {
            _allAudios = audios
                .where(
                  (a) =>
                      widget.selectedCategoryId == 0 ||
                      a.categoryId == widget.selectedCategoryId,
                )
                .toList();
            _isLoading = false;
          }),
        );
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

    if (_allAudios.isEmpty) {
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
            itemCount: _allAudios.length,
            separatorBuilder: (context, index) => SizedBox(width: 16.w),
            itemBuilder: (context, index) {
              final audio = _allAudios[index];

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
