import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mqfm_apps/presentation/molecules/about/about_header.dart';
import 'package:mqfm_apps/presentation/molecules/about/about_link_button.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';

class AboutContent extends StatelessWidget {
  const AboutContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(20.w),
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20.h),
          const AboutHeader(),
          SizedBox(height: 40.h),

          Container(
            padding: EdgeInsets.all(24.w),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  AppColors.surfaceCard,
                  AppColors.surfaceHighlight.withOpacity(0.3),
                ],
              ),
              borderRadius: BorderRadius.circular(20.r),
              border: Border.all(
                color: Colors.white.withOpacity(0.05),
                width: 1,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
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
                      size: 24.sp,
                    ),
                    SizedBox(width: 12.w),
                    Text(
                      'Sarana Dakwah Digital',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.h),
                Text(
                  'Sajian program inspiratif meliputi murattal Al-Qur\'an, kajian keislaman, talkshow pendidikan, hingga hiburan positif yang dirancang untuk menemani aktivitas harian Anda. \n\nMenghadirkan nilai kebaikan di setiap frekuensi, agar dapat menjadi teman setia dalam membangun peradaban yang berakhlak.',
                  style: TextStyle(
                    fontSize: 14.sp,
                    height: 1.6,
                    color: Colors.white.withOpacity(0.7),
                  ),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),

          SizedBox(height: 24.h),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 4.w, bottom: 12.h),
                child: Text(
                  'Lebih Dekat Dengan Kami',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.white.withOpacity(0.9),
                  ),
                ),
              ),
              AboutLinkButton(
                icon: Icons.language_rounded,
                title: 'Kunjungi Website Kami',
                onTap: () {},
              ),
              SizedBox(height: 12.h),
              AboutLinkButton(
                icon: Icons.camera_alt_outlined,
                title: 'Instagram @mqfmnetwork',
                onTap: () {},
              ),
              SizedBox(height: 12.h),
              AboutLinkButton(
                icon: Icons.play_circle_outline_rounded,
                title: 'YouTube MQFM Jogja',
                onTap: () {},
              ),
            ],
          ),

          SizedBox(height: 48.h),

          Text(
            '© 2026 MQFM Network. All rights reserved.',
            style: TextStyle(
              fontSize: 12.sp,
              color: AppColors.textSecondary.withOpacity(0.5),
            ),
          ),
          SizedBox(height: 32.h),
        ],
      ),
    );
  }
}
