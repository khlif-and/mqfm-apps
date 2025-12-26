import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mqfm_apps/controller/categories/categories_controller.dart';
import 'package:mqfm_apps/model/categories/categories_model.dart'; // Pastikan import Model Category benar
import 'package:mqfm_apps/widgets/components/dashboard/dashboard_header.dart';
import 'package:mqfm_apps/widgets/components/dashboard/horizontal_content_list.dart';
import 'package:mqfm_apps/widgets/components/dashboard/menu_grid.dart';
import 'package:mqfm_apps/widgets/components/dashboard/quote_card.dart';
import 'package:mqfm_apps/widgets/components/dashboard/vertical_content_list.dart';
import 'package:mqfm_apps/widgets/components/profile/sidebar_profile.dart';
import 'package:mqfm_apps/widgets/components/bottom/bottom_bar.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _selectedIndex = 0;
  final CategoryController _categoryController = CategoryController();

  // Kita buat list Object Category, bukan sekedar String
  // ID 0 kita anggap sebagai "Semua"
  List<Category> _categories = [
    Category(
      id: 0,
      name: "Semua",
      description: "All",
      createdAt: "",
      updatedAt: "",
    ),
  ];

  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _fetchCategories();
  }

  void _fetchCategories() async {
    try {
      final response = await _categoryController.getAllCategories();

      if (mounted && response.status == 200 && response.data != null) {
        setState(() {
          // Tambahkan data dari server ke list yang sudah ada "Semua"
          _categories.addAll(response.data!);
          _isLoading = false;
        });
      }
    } catch (e) {
      debugPrint("Gagal mengambil kategori: $e");
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    int currentCategoryId = _categories[_selectedIndex].id;

    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      drawer: const SidebarProfile(),
      body: Column(
        children: [
          DashboardHeader(
            categories: _categories.map((e) => e.name).toList(),
            selectedIndex: _selectedIndex,
            onCategorySelected: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(16.w),
                child: Column(
                  children: [
                    if (_isLoading)
                      const Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: LinearProgressIndicator(color: Colors.green),
                      ),

                    // --- KIRIM ID KATEGORI KE WIDGET DI BAWAH ---
                    MenuGrid(selectedCategoryId: currentCategoryId),

                    SizedBox(height: 24.h),
                    const QuoteCard(),
                    SizedBox(height: 24.h),

                    HorizontalContentList(
                      selectedCategoryId: currentCategoryId,
                    ),

                    SizedBox(height: 24.h),

                    VerticalContentList(selectedCategoryId: currentCategoryId),

                    SizedBox(height: 30.h),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
