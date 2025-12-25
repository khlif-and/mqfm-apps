import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
  final List<String> _categories = [
    "Semua",
    "Semua",
    "Semua",
    "Semua",
    "Semua",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      drawer: const SidebarProfile(),
      body: Column(
        children: [
          DashboardHeader(
            categories: _categories,
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
                    const MenuGrid(),
                    SizedBox(height: 24.h),
                    const QuoteCard(),
                    SizedBox(height: 24.h),
                    const HorizontalContentList(),
                    SizedBox(height: 24.h),
                    const VerticalContentList(),
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
