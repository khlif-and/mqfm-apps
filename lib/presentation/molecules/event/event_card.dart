import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/features/event/domain/entities/event.dart';
import 'package:mqfm_apps/presentation/atoms/common/app_network_image.dart';

class EventCard extends StatelessWidget {
  final EventEntity event;
  final VoidCallback? onTap;
  final VoidCallback? onRsvp;

  const EventCard({
    super.key,
    required this.event,
    this.onTap,
    this.onRsvp,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: AppDims.h12),
        decoration: BoxDecoration(
          color: AppColors.surfaceCard,
          borderRadius: BorderRadius.circular(AppDims.r12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(AppDims.r12),
              ),
              child: AppNetworkImage(
                url: event.imageUrl,
                width: double.infinity,
                height: AppDims.h180,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(AppDims.r12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.calendar_today,
                        size: AppDims.sp12,
                        color: AppColors.primary,
                      ),
                      SizedBox(width: AppDims.w4),
                      Text(
                        event.eventDate,
                        style: TextStyle(
                          color: AppColors.primary,
                          fontSize: AppDims.sp12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: AppDims.h8),
                  Text(
                    event.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: AppColors.textWhite,
                      fontSize: AppDims.sp16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: AppDims.h4),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        size: AppDims.sp12,
                        color: AppColors.textSecondary,
                      ),
                      SizedBox(width: AppDims.w4),
                      Expanded(
                        child: Text(
                          event.location,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: AppColors.textSecondary,
                            fontSize: AppDims.sp12,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: AppDims.h12),
                  if (onRsvp != null)
                    GestureDetector(
                      onTap: onRsvp,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: AppDims.w16,
                          vertical: AppDims.h8,
                        ),
                        decoration: BoxDecoration(
                          color: event.hasRsvp
                              ? AppColors.surfaceHighlight
                              : AppColors.primary,
                          borderRadius: BorderRadius.circular(AppDims.r20),
                        ),
                        child: Text(
                          event.hasRsvp ? 'RSVP Terdaftar' : 'Daftar RSVP',
                          style: TextStyle(
                            color: event.hasRsvp
                                ? AppColors.textWhite
                                : AppColors.onPrimary,
                            fontSize: AppDims.sp12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
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
