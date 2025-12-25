import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashboardHeader extends StatelessWidget {
  final List<String> categories;
  final int selectedIndex;
  final Function(int) onCategorySelected;

  const DashboardHeader({
    super.key,
    required this.categories,
    required this.selectedIndex,
    required this.onCategorySelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(
        top: 50.h,
        bottom: 16.h,
        left: 16.w,
        right: 16.w,
      ),
      decoration: const BoxDecoration(color: Color(0xFFD64D4D)),
      child: Row(
        children: [
          // --- LINGKARAN PROFILE DENGAN FUNGSI KLIK ---
          GestureDetector(
            onTap: () {
              // Membuka Drawer (Sidebar Profile)
              Scaffold.of(context).openDrawer();
            },
            child: Container(
              width: 50.r,
              height: 50.r,
              decoration: const BoxDecoration(
                color: Color(0xFFD9D9D9),
                shape: BoxShape.circle,
              ),
              // Opsional: Tambahkan inisial agar mirip sidebar
              child: Center(
                child: Text(
                  "K",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.sp,
                  ),
                ),
              ),
            ),
          ),

          SizedBox(width: 12.w),

          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(categories.length, (index) {
                  return GestureDetector(
                    onTap: () => onCategorySelected(index),
                    child: Container(
                      margin: EdgeInsets.only(right: 8.w),
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                        vertical: 6.h,
                      ),
                      decoration: BoxDecoration(
                        color: index == selectedIndex
                            ? const Color(0xFF67E267)
                            : const Color(0xFF262626),
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Text(
                        categories[index],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
