import 'package:flutter/material.dart';
import 'package:mqfm_apps/controller/categories/categories_controller.dart';
import 'package:mqfm_apps/model/categories/categories_model.dart';
import 'package:mqfm_apps/utils/helpers/log_helper.dart';

class DashboardLogic extends ChangeNotifier {
  final CategoryController _categoryController = CategoryController();

  List<Category> categories = [
    Category(
      id: 0,
      name: "Semua",
      description: "All",
      createdAt: "",
      updatedAt: "",
    ),
  ];

  int selectedIndex = 0;
  bool isLoading = true;
  int refreshVersion = 0; // Key to force rebuild of children

  DashboardLogic() {
    fetchCategories();
  }

  void selectCategory(int index) {
    selectedIndex = index;
    notifyListeners();
  }

  int get currentCategoryId => categories[selectedIndex].id;

  Future<void> fetchCategories({bool refresh = false}) async {
    try {
      LogHelper.info(
        "DashboardLogic",
        "${refresh ? 'Refreshing' : 'Fetching'} categories...",
      );

      if (refresh) {
        refreshVersion++; // Increment version to trigger rebuilds
        categories = [
          Category(
            id: 0,
            name: "Semua",
            description: "All",
            createdAt: "",
            updatedAt: "",
          ),
        ];
        isLoading = true;
        notifyListeners();
      }

      final response = await _categoryController.getAllCategories();

      if (response.status == 200 && response.data != null) {
        categories.addAll(response.data!);
        isLoading = false;
        LogHelper.success(
          "DashboardLogic",
          "Fetched ${response.data!.length} categories",
        );
        notifyListeners();
      } else {
        isLoading = false;
        LogHelper.error(
          "DashboardLogic",
          "Failed to fetch categories: ${response.message}",
        );
        notifyListeners();
      }
    } catch (e) {
      LogHelper.error("DashboardLogic", "Exception fetching categories: $e");
      isLoading = false;
      notifyListeners();
    }
  }
}
