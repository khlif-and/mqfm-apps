import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/features/event/domain/entities/event.dart';
import 'package:mqfm_apps/presentation/atoms/common/app_network_image.dart';

class EventCompactCard extends StatelessWidget {
  final EventEntity event;
  final VoidCallback? onTap;

  const EventCompactCard({super.key, required this.event, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: AppDims.w260,
        decoration: BoxDecoration(
          color: AppColors.surfaceCard,
          borderRadius: BorderRadius.circular(AppDims.r12),
        ),
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppNetworkImage(
              url: event.imageUrl,
              width: AppDims.w260,
              height: AppDims.h100,
            ),
            Padding(
              padding: EdgeInsets.all(AppDims.w12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    event.title,
                    style: TextStyle(
                      color: AppColors.textWhite,
                      fontSize: AppDims.sp14,
                      fontWeight: FontWeight.w600,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: AppDims.h4),
                  Row(
                    children: [
                      Icon(Icons.calendar_today, color: AppColors.textSecondary, size: AppDims.sp12),
                      SizedBox(width: AppDims.w4),
                      Text(
                        event.eventDate,
                        style: TextStyle(color: AppColors.textSecondary, fontSize: AppDims.sp11),
                      ),
                      SizedBox(width: AppDims.w12),
                      Icon(Icons.location_on_outlined, color: AppColors.textSecondary, size: AppDims.sp12),
                      SizedBox(width: AppDims.w4),
                      Expanded(
                        child: Text(
                          event.location,
                          style: TextStyle(color: AppColors.textSecondary, fontSize: AppDims.sp11),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
