import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/presentation/atoms/common/app_network_image.dart';

class RadioCard extends StatefulWidget {
  final String title;
  final String genre;
  final String artistsText;
  final List<String> thumbnails;
  final bool isPlaying;
  final VoidCallback? onTap;

  const RadioCard({
    super.key,
    required this.title,
    required this.genre,
    required this.artistsText,
    required this.thumbnails,
    this.isPlaying = false,
    this.onTap,
  });

  @override
  State<RadioCard> createState() => _RadioCardState();
}

class _RadioCardState extends State<RadioCard> with SingleTickerProviderStateMixin {
  static const _barCount = 4;
  static const _minHeights = [6.0, 10.0, 8.0, 5.0];
  static const _maxHeights = [18.0, 28.0, 22.0, 16.0];

  late final AnimationController _controller;
  late final List<double> _phases;

  @override
  void initState() {
    super.initState();
    _phases = const [0.0, 0.25, 0.5, 0.75];
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  static const _positions = [
    Offset(14, 28),
    Offset(52, 12),
    Offset(88, 30),
    Offset(36, 62),
    Offset(74, 66),
  ];

  @override
  Widget build(BuildContext context) {
    final size = 160.w;
    return GestureDetector(
      onTap: widget.onTap,
      child: SizedBox(
        width: size,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildImageArea(size),
            SizedBox(height: AppDims.h8),
            _buildTextArea(),
          ],
        ),
      ),
    );
  }

  Widget _buildImageArea(double size) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(AppDims.r10),
      child: SizedBox(
        width: size,
        height: size,
        child: Stack(
          children: [
            Container(color: AppColors.cardBackground),
            _buildCollage(),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withValues(alpha: 0.55),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 10,
              left: 10,
              child: _buildPlayButton(),
            ),
            Positioned(
              bottom: 12,
              right: 10,
              child: _buildEqualizerBars(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCollage() {
    final count = math.min(widget.thumbnails.length, _positions.length);
    return Stack(
      children: List.generate(count, (i) {
        return Positioned(
          left: _positions[i].dx.w,
          top: _positions[i].dy.h,
          child: _CircleThumb(url: widget.thumbnails[i]),
        );
      }),
    );
  }

  Widget _buildPlayButton() {
    return Container(
      width: 28.w,
      height: 28.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white70, width: 1.5),
        color: Colors.black26,
      ),
      child: Icon(Icons.play_arrow_rounded, color: Colors.white, size: 16.sp),
    );
  }

  Widget _buildEqualizerBars() {
    return AnimatedBuilder(
      animation: _controller,
      builder: (_, __) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: List.generate(_barCount, (i) {
            final t = (_controller.value + _phases[i]) % 1.0;
            final sine = (math.sin(t * math.pi * 2) + 1) / 2;
            final h = _minHeights[i] + (_maxHeights[i] - _minHeights[i]) * sine;
            return Container(
              width: 3.w,
              height: h.h,
              margin: EdgeInsets.only(left: 2.w),
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(2),
              ),
            );
          }),
        );
      },
    );
  }

  Widget _buildTextArea() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${widget.title} • ${widget.genre}',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: AppColors.textPrimary,
            fontSize: AppDims.sp13,
            fontWeight: FontWeight.w700,
            height: 1.3,
          ),
        ),
        SizedBox(height: AppDims.h4),
        Text(
          widget.artistsText,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: AppColors.textSecondary,
            fontSize: AppDims.sp11,
          ),
        ),
      ],
    );
  }
}

class _CircleThumb extends StatelessWidget {
  final String url;

  const _CircleThumb({required this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 54.w,
      height: 54.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: AppColors.background, width: 2),
      ),
      child: ClipOval(
        child: AppNetworkImage(url: url, width: 54.w, height: 54.w),
      ),
    );
  }
}
