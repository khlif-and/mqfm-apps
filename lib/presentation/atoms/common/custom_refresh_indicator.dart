import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';

class CustomRefreshIndicator extends StatefulWidget {
  final Widget child;
  final Future<void> Function() onRefresh;

  const CustomRefreshIndicator({
    super.key,
    required this.child,
    required this.onRefresh,
  });

  @override
  State<CustomRefreshIndicator> createState() => _CustomRefreshIndicatorState();
}

class _CustomRefreshIndicatorState extends State<CustomRefreshIndicator>
    with SingleTickerProviderStateMixin {
  static const double _triggerOffset = 100.0;
  double _dragOffset = 0;
  bool _isRefreshing = false;
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Future<void> _handleRefresh() async {
    if (_isRefreshing) return;
    setState(() => _isRefreshing = true);
    _animationController.repeat();
    await widget.onRefresh();
    _animationController.stop();
    _animationController.reset();
    if (mounted) {
      setState(() {
        _isRefreshing = false;
        _dragOffset = 0;
      });
    }
  }

  bool _handleScrollNotification(ScrollNotification notification) {
    if (_isRefreshing) return false;
    if (notification is OverscrollNotification && notification.overscroll < 0) {
      setState(() {
        _dragOffset += notification.overscroll.abs() * 0.5;
        _dragOffset = _dragOffset.clamp(0, _triggerOffset * 1.5);
      });
    }
    if (notification is ScrollEndNotification && _dragOffset > 0) {
      if (_dragOffset >= _triggerOffset) {
        _handleRefresh();
      } else {
        setState(() => _dragOffset = 0);
      }
    }
    if (notification is ScrollUpdateNotification &&
        notification.metrics.pixels > 0 &&
        _dragOffset > 0) {
      setState(() => _dragOffset = 0);
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    final progress = (_dragOffset / _triggerOffset).clamp(0.0, 1.0);
    return NotificationListener<ScrollNotification>(
      onNotification: _handleScrollNotification,
      child: Stack(
        children: [
          AnimatedPadding(
            duration: _isRefreshing
                ? const Duration(milliseconds: 200)
                : Duration.zero,
            padding: EdgeInsets.only(
              top: _isRefreshing ? AppDims.h50 : _dragOffset * 0.6,
            ),
            child: widget.child,
          ),
          if (_dragOffset > 0 || _isRefreshing)
            Positioned(
              top: _isRefreshing ? AppDims.h12 : (_dragOffset * 0.6) - 36,
              left: 0,
              right: 0,
              child: Center(
                child: AnimatedBuilder(
                  animation: _animationController,
                  builder: (_, child) {
                    final rotation = _isRefreshing
                        ? _animationController.value * 2 * 3.14159
                        : progress * 3.14159;
                    return Transform.rotate(
                      angle: rotation,
                      child: child,
                    );
                  },
                  child: Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                      color: AppColors.surface,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.backgroundBlack.withOpacity(0.3),
                          blurRadius: 8,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: CircularProgressIndicator(
                        value: _isRefreshing ? null : progress,
                        strokeWidth: 2.5,
                        color: AppColors.primaryClassic,
                      ),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
