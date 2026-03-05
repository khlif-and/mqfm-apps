import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/presentation/molecules/about/about_header.dart';
import 'package:mqfm_apps/presentation/molecules/about/about_link_button.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';

class AboutContent extends StatelessWidget {
  const AboutContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(AppDims.w20),
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: AppDims.h20),
          const AboutHeader(),
          SizedBox(height: AppDims.h40),

          Container(
            padding: EdgeInsets.all(AppDims.w24),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  AppColors.surfaceCard,
                  AppColors.surfaceHighlight.withOpacity(0.3),
                ],
              ),
              borderRadius: BorderRadius.circular(AppDims.r20),
              border: Border.all(
                color: AppColors.textWhite.withOpacity(0.05),
                width: 1,
              ),
              boxShadow: [
                BoxShadow(
                  color: AppColors.backgroundBlack.withOpacity(0.2),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.diversity_3_rounded,
                      color: AppColors.primaryClassic,
                      size: AppDims.sp24,
                    ),
                    SizedBox(width: AppDims.w12),
                    Text(
                      'Sarana Dakwah Digital',
                      style: TextStyle(
                        fontSize: AppDims.sp18,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textWhite,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: AppDims.h16),
                Text(
                  'Sajian program inspiratif meliputi murattal Al-Qur\'an, kajian keislaman, talkshow pendidikan, hingga hiburan positif yang dirancang untuk menemani aktivitas harian Anda. \n\nMenghadirkan nilai kebaikan di setiap frekuensi, agar dapat menjadi teman setia dalam membangun peradaban yang berakhlak.',
                  style: TextStyle(
                    fontSize: AppDims.sp14,
                    height: 1.6,
                    color: AppColors.textWhite.withOpacity(0.7),
                  ),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),

          SizedBox(height: AppDims.h24),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: AppDims.w4, bottom: AppDims.h12),
                child: Text(
                  'Lebih Dekat Dengan Kami',
                  style: TextStyle(
                    fontSize: AppDims.sp16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textWhite.withOpacity(0.9),
                  ),
                ),
              ),
              AboutLinkButton(
                icon: Icons.language_rounded,
                title: 'Kunjungi Website Kami',
                onTap: () {},
              ),
              SizedBox(height: AppDims.h12),
              AboutLinkButton(
                icon: Icons.camera_alt_outlined,
                title: 'Instagram @mqfmnetwork',
                onTap: () {},
              ),
              SizedBox(height: AppDims.h12),
              AboutLinkButton(
                icon: Icons.play_circle_outline_rounded,
                title: 'YouTube MQFM Jogja',
                onTap: () {},
              ),
            ],
          ),

          SizedBox(height: AppDims.h48),

          Text(
            '© 2026 MQFM Network. All rights reserved.',
            style: TextStyle(
              fontSize: AppDims.sp12,
              color: AppColors.textSecondary.withOpacity(0.5),
            ),
          ),
          SizedBox(height: AppDims.h32),
        ],
      ),
    );
  }
}
