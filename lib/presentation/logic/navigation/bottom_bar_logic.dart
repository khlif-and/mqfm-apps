import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/di/injection.dart';
import 'package:mqfm_apps/features/like/domain/repositories/i_like_repository.dart';
import 'package:mqfm_apps/core/utils/helpers/preferences_helper.dart';

class BottomBarLogic extends ChangeNotifier {
  final ILikeRepository _likeRepository = getIt<ILikeRepository>();

  bool isLiked = false;
  String? message;

  Future<void> fetchLikedStatus() async {}

  Future<void> toggleLike(int audioId) async {
    final token = await PreferencesHelper.getToken();
    if (token == null) {
      message = "Silakan login terlebih dahulu";
      notifyListeners();
      return;
    }

    final result = await _likeRepository.toggleLike(audioId);
    result.fold(
      (error) {
        message = "Gagal: $error";
        notifyListeners();
      },
      (like) {
        isLiked = !isLiked;
        message = like.message;
        notifyListeners();
      },
    );
  }
}
