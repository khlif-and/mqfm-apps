import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mqfm_apps/controller/audio/audio_controller.dart';
import 'package:mqfm_apps/model/audio/audio_model.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  final AudioController _audioController = AudioController();

  Audio? _miniPlayerAudio;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _fetchMiniPlayerData();
  }

  Future<void> _fetchMiniPlayerData() async {
    try {
      final response = await _audioController.getAllAudios();

      if (mounted) {
        if (response.status == 200 &&
            response.data != null &&
            response.data!.isNotEmpty) {
          final random = Random();
          final list = response.data!;
          final randomAudio = list[random.nextInt(list.length)];

          setState(() {
            _miniPlayerAudio = randomAudio;
            _isLoading = false;
          });
        } else {
          setState(() => _isLoading = false);
        }
      }
    } catch (e) {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (!_isLoading && _miniPlayerAudio != null)
          GestureDetector(
            onTap: () {
              if (_miniPlayerAudio != null) {
                // Pastikan ID dikirim jika route player memerlukan ID
                context.push('/player/${_miniPlayerAudio!.id}');
              }
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(8.w, 0, 8.w, 8.h),
              decoration: BoxDecoration(
                color: const Color(0xFFD2694E),
                borderRadius: BorderRadius.circular(6.r),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF121212),
                    blurRadius: 20.r,
                    spreadRadius: 2.r,
                    offset: Offset(0, 10.h),
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.all(8.w),
                child: Row(
                  children: [
                    Container(
                      width: 38.w,
                      height: 38.w,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(4.r),
                        image: DecorationImage(
                          image: (_miniPlayerAudio!.thumbnail.isNotEmpty)
                              ? NetworkImage(_miniPlayerAudio!.thumbnail)
                                    as ImageProvider
                              : const AssetImage('assets/images/img_card.jpg'),
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
                            _miniPlayerAudio!.title,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14.sp,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 2.h),
                          Text(
                            _miniPlayerAudio!.description,
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 12.sp,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                        size: 24.sp,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                        size: 32.sp,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
        Container(
          color: const Color(0xFF121212),
          padding: EdgeInsets.only(top: 12.h, bottom: 16.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavItem(
                Icons.home_filled,
                'home',
                true,
                () => context.go('/dashboard'),
              ),
              _buildNavItem(
                Icons.search,
                'search',
                false,
                () => context.push('/search'),
              ),
              _buildNavItem(
                Icons.queue_music,
                'playlist',
                false,
                // [BARU] Navigasi ke Playlist
                () => context.push('/playlist'),
              ),
              _buildNavItem(Icons.favorite_border, 'like', false, () {}),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildNavItem(
    IconData icon,
    String label,
    bool isActive,
    VoidCallback onTap,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: isActive ? Colors.white : Colors.grey, size: 26.sp),
          SizedBox(height: 4.h),
          Text(
            label,
            style: TextStyle(
              color: isActive ? Colors.white : Colors.grey,
              fontSize: 11.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
