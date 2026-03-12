import 'package:cached_network_image/cached_network_image.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_images.dart';
import 'package:flutter/material.dart';

class AppNetworkImage extends StatelessWidget {
  final String url;
  final double? width;
  final double? height;
  final BoxFit fit;
  final double borderRadius;
  final Widget? placeholder;

  const AppNetworkImage({
    super.key,
    required this.url,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
    this.borderRadius = 0,
    this.placeholder,
  });

  Widget get _fallback =>
      placeholder ??
      Image.asset(AppImages.cardPlaceholder, fit: fit, width: width, height: height);

  @override
  Widget build(BuildContext context) {
    if (url.isEmpty) return _fallback;
    final cacheW = width != null ? (width! * MediaQuery.devicePixelRatioOf(context)).round() : null;
    final cacheH = height != null ? (height! * MediaQuery.devicePixelRatioOf(context)).round() : null;
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: CachedNetworkImage(
        imageUrl: url,
        width: width,
        height: height,
        fit: fit,
        memCacheWidth: cacheW,
        memCacheHeight: cacheH,
        fadeInDuration: const Duration(milliseconds: 150),
        placeholder: (context, url) => _fallback,
        errorWidget: (context, url, error) => _fallback,
      ),
    );
  }
}
