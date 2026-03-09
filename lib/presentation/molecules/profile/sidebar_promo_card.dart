import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';

class SidebarPromoCard extends StatelessWidget {
  const SidebarPromoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppDims.r16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            const Color(0xFF1E1E2E),
            const Color(0xFF2A2A3A).withValues(alpha: 0.6),
          ],
        ),
        borderRadius: BorderRadius.circular(AppDims.r12),
        border: Border.all(
          color: AppColors.textWhite.withValues(alpha: 0.06),
          width: 1,
        ),
      ),
      child: Row(
        children: [
          Icon(
            Icons.mosque_rounded,
            color: const Color(0xFF9D8DF1),
            size: AppDims.sp28,
          ),
          SizedBox(width: AppDims.w12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'MQFM Podcast',
                  style: TextStyle(
                    color: AppColors.textWhite,
                    fontSize: AppDims.sp13,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: AppDims.h2),
                Text(
                  'Dengarkan kajian kapan saja',
                  style: TextStyle(
                    color: AppColors.textWhite.withValues(alpha: 0.4),
                    fontSize: AppDims.sp11,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
