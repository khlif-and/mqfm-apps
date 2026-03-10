import 'package:flutter/material.dart';
import 'package:mqfm_apps/presentation/molecules/common/custom_app_bar.dart';
import 'package:mqfm_apps/presentation/molecules/faq/faq_contact_buttons.dart';
import 'package:mqfm_apps/presentation/organisms/faq/faq_list.dart';
import 'package:mqfm_apps/presentation/logic/faq/faq_contact_logic.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_styles.dart';

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
        padding: EdgeInsets.all(AppDims.w24),
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Pertanyaan Seputar Aplikasi',
              style: AppStyles.titleLarge.copyWith(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: AppDims.h8),
            Text(
              'Temukan jawaban dari semua hal yang sering ditanyakan oleh pengguna.',
              style: AppStyles.bodyMedium.copyWith(
                color: AppColors.textSecondary,
                height: 1.5,
              ),
            ),
            SizedBox(height: AppDims.h32),

            const FaqList(),

            SizedBox(height: AppDims.h48),

            FaqContactButtons(
              onWhatsAppPressed: FaqContactLogic.launchWhatsApp,
              onEmailPressed: FaqContactLogic.launchEmail,
            ),

            SizedBox(height: AppDims.h48),
          ],
        ),
      ),
    );
  }
}
