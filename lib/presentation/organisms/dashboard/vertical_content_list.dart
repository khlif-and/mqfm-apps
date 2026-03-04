import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mqfm_apps/core/di/injection.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio_entity.dart';
import 'package:mqfm_apps/features/audio/domain/repositories/audio_repository.dart';

class VerticalContentList extends StatefulWidget {
  final int selectedCategoryId;

  const VerticalContentList({super.key, required this.selectedCategoryId});

  @override
  State<VerticalContentList> createState() => _VerticalContentListState();
}

class _VerticalContentListState extends State<VerticalContentList> {
  final AudioRepository _audioRepository = getIt<AudioRepository>();
  List<AudioEntity> _allAudios = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _fetchAudios();
  }

  @override
  void didUpdateWidget(VerticalContentList oldWidget) {
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

    List<AudioEntity> categoryFiltered = _allAudios;

    if (categoryFiltered.isEmpty) return const SizedBox();

    List<AudioEntity> displayList = List.from(categoryFiltered);
    final now = DateTime.now();
    int seed = (now.year * 10000) + (now.month * 100) + now.day;
    final random = Random(seed);
    displayList.shuffle(random);

    int takeCount = displayList.length < 3 ? displayList.length : 3;
    List<AudioEntity> finalShowList = displayList.take(takeCount).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Di Pilih Oleh Pengguna",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 16.h),
        ListView.separated(
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: finalShowList.length,
          separatorBuilder: (context, index) => SizedBox(height: 12.h),
          itemBuilder: (context, index) {
            final audio = finalShowList[index];
            return GestureDetector(
              onTap: () {
                context.push('/player/${audio.id}');
              },
              child: Row(
                children: [
                  SizedBox(
                    width: 60.r,
                    height: 60.r,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12.r),
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
                  SizedBox(width: 12.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          audio.title,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 4.h),
                        Text(
                          audio.description,
                          style: TextStyle(color: Colors.grey, fontSize: 12.sp),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_vert,
                      color: Colors.white,
                      size: 24.sp,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
