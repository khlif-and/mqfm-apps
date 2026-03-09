import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_images.dart';

class PlaceholderContent {
  PlaceholderContent._();

  static ImageProvider audioThumbnail(String url) {
    if (url.isNotEmpty) return NetworkImage(url);
    return const AssetImage(AppImages.cardPlaceholder);
  }

  static DecorationImage audioDecorationImage(String url) {
    return DecorationImage(
      image: audioThumbnail(url),
      fit: BoxFit.cover,
    );
  }
}
