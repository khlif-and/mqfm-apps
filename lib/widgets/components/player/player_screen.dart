import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mqfm_apps/controller/audio/audio_controller.dart';
import 'package:mqfm_apps/model/audio/audio_model.dart';

class PlayerScreen extends StatefulWidget {
  final String audioId;

  const PlayerScreen({super.key, required this.audioId});

  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  final AudioController _audioController = AudioController();
  Audio? _audioData;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _fetchDetailAudio();
  }

  Future<void> _fetchDetailAudio() async {
    try {
      final id = int.tryParse(widget.audioId) ?? 0;
      final response = await _audioController.getDetailAudio(id);

      if (mounted) {
        if (response.status == 200 && response.data != null) {
          setState(() {
            _audioData = response.data;
            _isLoading = false;
          });
        } else {
          setState(() => _isLoading = false);
        }
      }
    } catch (e) {
      debugPrint("Error detail audio: $e");
      if (mounted) setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFB94E4E), Color(0xFF682A2A), Color(0xFF1E1C1C)],
          ),
        ),
        child: SafeArea(
          child: _isLoading
              ? const Center(
                  child: CircularProgressIndicator(color: Colors.white),
                )
              : _audioData == null
              ? Center(
                  child: Text(
                    "Audio tidak ditemukan",
                    style: TextStyle(color: Colors.white, fontSize: 16.sp),
                  ),
                )
              : Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.w,
                    vertical: 10.h,
                  ),
                  child: Column(
                    children: [
                      // --- HEADER ---
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () => context.pop(),
                            child: Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.white,
                              size: 30.r,
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                'PLAYING FROM PLAYLIST',
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.7),
                                  fontSize: 10.sp,
                                  letterSpacing: 1.2,
                                ),
                              ),
                              SizedBox(height: 4.h),
                              Text(
                                "MQFM Radio",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.sp,
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.more_vert,
                            color: Colors.white,
                            size: 24.r,
                          ),
                        ],
                      ),

                      const Spacer(),

                      // --- COVER IMAGE ---
                      Container(
                        height: 340.w,
                        width: 340.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          image: DecorationImage(
                            image: (_audioData!.thumbnail.isNotEmpty)
                                ? NetworkImage(_audioData!.thumbnail)
                                      as ImageProvider
                                : const AssetImage(
                                    'assets/images/img_card.jpg',
                                  ),
                            fit: BoxFit.cover,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              blurRadius: 20.r,
                              offset: Offset(0, 10.h),
                            ),
                          ],
                        ),
                      ),

                      const Spacer(),

                      // --- TITLE & INFO ---
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  _audioData!.title,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                SizedBox(height: 4.h),
                                Text(
                                  _audioData!.description,
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(0.7),
                                    fontSize: 16.sp,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.add_circle_outline,
                                color: Colors.white,
                                size: 28.r,
                              ),
                            ],
                          ),
                        ],
                      ),

                      SizedBox(height: 24.h),

                      // --- SLIDER (DUMMY) ---
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          trackHeight: 2.h,
                          thumbShape: RoundSliderThumbShape(
                            enabledThumbRadius: 6.r,
                          ),
                          overlayShape: RoundSliderOverlayShape(
                            overlayRadius: 14.r,
                          ),
                          activeTrackColor: Colors.white,
                          inactiveTrackColor: Colors.white.withOpacity(0.3),
                          thumbColor: Colors.white,
                        ),
                        child: Slider(value: 0.1, onChanged: (v) {}),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '0:00',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.7),
                                fontSize: 12.sp,
                              ),
                            ),
                            Text(
                              '--:--',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.7),
                                fontSize: 12.sp,
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 10.h),

                      // --- CONTROLS ---
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.shuffle,
                            color: const Color(0xFF1DB954),
                            size: 26.r,
                          ),
                          Icon(
                            Icons.skip_previous,
                            color: Colors.white,
                            size: 42.r,
                          ),
                          Container(
                            height: 72.r,
                            width: 72.r,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.play_arrow,
                              color: Colors.black,
                              size: 38.r,
                            ),
                          ),
                          Icon(
                            Icons.skip_next,
                            color: Colors.white,
                            size: 42.r,
                          ),
                          Icon(
                            Icons.timer_outlined,
                            color: Colors.white,
                            size: 26.r,
                          ),
                        ],
                      ),

                      SizedBox(height: 30.h),

                      // --- BOTTOM ACTIONS ---
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.speaker_group_outlined,
                            color: Colors.white70,
                            size: 24.r,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.share_outlined,
                                color: Colors.white70,
                                size: 24.r,
                              ),
                              SizedBox(width: 24.w),
                              Icon(
                                Icons.menu,
                                color: Colors.white70,
                                size: 24.r,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 20.h),
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
