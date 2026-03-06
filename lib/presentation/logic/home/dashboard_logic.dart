import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/di/injection.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio_entity.dart';
import 'package:mqfm_apps/features/audio/domain/repositories/i_audio_repository.dart';
import 'package:mqfm_apps/features/categories/domain/entities/category_entity.dart';
import 'package:mqfm_apps/features/categories/domain/repositories/i_category_repository.dart';

class DashboardLogic extends ChangeNotifier {
  final IAudioRepository _audioRepository = getIt<IAudioRepository>();
  final ICategoryRepository _categoryRepository = getIt<ICategoryRepository>();

  List<AudioEntity> audios = [];
  List<CategoryEntity> categories = [];
  bool isLoading = true;
  String? errorMessage;
  int selectedCategoryId = 0;
  int selectedIndex = 0;
  int currentCategoryId = 0;
  int refreshVersion = 0;

  DashboardLogic() {
    fetchDashboard();
  }

  Future<void> fetchDashboard() async {
    isLoading = true;
    notifyListeners();

    await fetchCategories();

    final audioResult = await _audioRepository.getAudios();
    audioResult.fold((error) => errorMessage = error, (data) => audios = data);

    isLoading = false;
    notifyListeners();
  }

  Future<void> fetchCategories() async {
    final catResult = await _categoryRepository.getCategories();
    catResult.fold(
      (error) => errorMessage = error,
      (cats) => categories = cats,
    );
    notifyListeners();
  }

  void selectCategory(int id) {
    selectedCategoryId = id;
    currentCategoryId = id;
    refreshVersion++;
    notifyListeners();
  }
}
