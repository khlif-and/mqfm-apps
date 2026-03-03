import 'package:flutter/material.dart';
import 'package:mqfm_apps/presentation/organisms/about/about_content.dart';
import 'package:mqfm_apps/presentation/atoms/common/custom_app_bar.dart';
import 'package:mqfm_apps/utils/app_colors.dart';

class AboutAppPage extends StatelessWidget {
  const AboutAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: const CustomAppBar(
        title: 'Tentang MQFM',
        backgroundColor: AppColors.background,
      ),
      body: const AboutContent(),
    );
  }
}
