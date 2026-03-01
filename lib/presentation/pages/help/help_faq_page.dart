import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mqfm_apps/presentation/molecules/common/custom_app_bar.dart';
import 'package:mqfm_apps/presentation/organisms/faq/faq_contact_buttons.dart';
import 'package:mqfm_apps/presentation/organisms/faq/faq_list.dart';
import 'package:mqfm_apps/utils/app_colors.dart';
import 'package:mqfm_apps/utils/app_styles.dart';

class HelpFaqPage extends StatelessWidget {
  const HelpFaqPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: const CustomAppBar(
        title: 'Bantuan & FAQ',
        backgroundColor: AppColors.background,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24.w),
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Pertanyaan Seputar Aplikasi',
              style: AppStyles.titleLarge.copyWith(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.h),
            Text(
              'Temukan jawaban dari semua hal yang sering ditanyakan oleh pengguna.',
              style: AppStyles.bodyMedium.copyWith(
                color: AppColors.textSecondary,
                height: 1.5,
              ),
            ),
            SizedBox(height: 32.h),

            // 12 FAQs List
            const FaqList(),

            SizedBox(height: 48.h),

            // Contact Support
            const FaqContactButtons(),

            SizedBox(height: 48.h),
          ],
        ),
      ),
    );
  }
}
