import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/features/artikel/domain/entities/artikel.dart';
import 'package:mqfm_apps/presentation/atoms/common/app_network_image.dart';

class ArtikelCard extends StatelessWidget {
  final ArtikelEntity artikel;
  final VoidCallback? onTap;

  const ArtikelCard({super.key, required this.artikel, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: AppDims.w140,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppNetworkImage(
              url: artikel.image,
              width: AppDims.w140,
              height: AppDims.r140,
              borderRadius: AppDims.r12,
            ),
            SizedBox(height: AppDims.h8),
            Text(
              artikel.title,
              style: TextStyle(
                color: AppColors.textWhite,
                fontSize: AppDims.sp12,
                fontWeight: FontWeight.w600,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
