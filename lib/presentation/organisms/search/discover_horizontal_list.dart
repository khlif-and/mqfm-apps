import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mqfm_apps/core/di/injection.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio_entity.dart';
import 'package:mqfm_apps/features/audio/domain/repositories/audio_repository.dart';
import 'package:mqfm_apps/presentation/atoms/common/empty_state_card.dart';
import 'package:shimmer/shimmer.dart';

class DiscoverHorizontalList extends StatefulWidget {
  const DiscoverHorizontalList({super.key});

  @override
  State<DiscoverHorizontalList> createState() => _DiscoverHorizontalListState();
}

class _DiscoverHorizontalListState extends State<DiscoverHorizontalList> {
  final AudioRepository _audioRepository = getIt<AudioRepository>();
  List<AudioEntity> _audios = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _fetchAudios();
  }

  Future<void> _fetchAudios() async {
    try {
      final result = await _audioRepository.getAudios();
      if (mounted) {
        result.fold(
          (error) => setState(() => _isLoading = false),
          (audios) => setState(() {
            _audios = audios;
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
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Shimmer.fromColors(
            baseColor: Colors.grey[800]!,
            highlightColor: Colors.grey[600]!,
            child: Container(
              width: 180.w,
              height: 18.h,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(4.r),
              ),
            ),
          ),
          SizedBox(height: 16.h),
          ...List.generate(4, (_) {
            return Padding(
              padding: EdgeInsets.only(bottom: 12.h),
              child: Shimmer.fromColors(
                baseColor: Colors.grey[800]!,
                highlightColor: Colors.grey[600]!,
                child: Row(
                  children: [
                    Container(
                      width: 52.w,
                      height: 52.w,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(2.r),
                      ),
                    ),
                    SizedBox(width: 16.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 14.h,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(4.r),
                            ),
                          ),
                          SizedBox(height: 8.h),
                          Container(
                            width: 100.w,
                            height: 12.h,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(4.r),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        ],
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Discover something new',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 16.h),
        if (_audios.isEmpty)
          const EmptyStateCard(
            message: 'Belum ada data saat ini',
            icon: Icons.explore_off_rounded,
          )
        else
          ListView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: _audios.length,
            itemBuilder: (context, index) {
              return _DiscoverTrackTile(audio: _audios[index]);
            },
          ),
      ],
    );
  }
}

class _DiscoverTrackTile extends StatelessWidget {
  final AudioEntity audio;

  const _DiscoverTrackTile({required this.audio});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push('/player/${audio.id}');
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.h),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.white.withOpacity(0.15),
              width: 0.5,
            ),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 52.w,
              height: 52.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2.r),
                image: DecorationImage(
                  image: (audio.thumbnail.isNotEmpty)
                      ? NetworkImage(audio.thumbnail)
                      : const AssetImage('assets/images/img_card.jpg')
                            as ImageProvider,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 16.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    audio.title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    audio.description,
                    style: TextStyle(
                      color: const Color(0xFFB3B3B3),
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: const Color(0xFFB3B3B3),
                size: 24.sp,
              ),
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
            ),
          ],
        ),
      ),
    );
  }
}
