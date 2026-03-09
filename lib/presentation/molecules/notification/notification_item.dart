import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/features/notification/domain/entities/notification.dart';

class NotificationItem extends StatelessWidget {
  final NotificationEntity notification;
  final VoidCallback? onTap;

  const NotificationItem({super.key, required this.notification, this.onTap});

  IconData _iconForType(String type) {
    switch (type) {
      case 'event': return Icons.event;
      case 'content': return Icons.library_music;
      case 'reminder': return Icons.alarm;
      default: return Icons.notifications_outlined;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppDims.w16, vertical: AppDims.h8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: AppDims.r42,
              height: AppDims.r42,
              decoration: BoxDecoration(
                color: notification.isRead
                    ? AppColors.surfaceHighlight
                    : AppColors.notificationBlue.withValues(alpha: 0.15),
                shape: BoxShape.circle,
              ),
              child: Icon(
                _iconForType(notification.type),
                color: notification.isRead ? AppColors.textSecondary : AppColors.notificationBlue,
                size: AppDims.sp20,
              ),
            ),
            SizedBox(width: AppDims.w12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    notification.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: AppColors.textWhite,
                      fontSize: AppDims.sp14,
                      fontWeight: notification.isRead ? FontWeight.w400 : FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: AppDims.h2),
                  Text(
                    notification.body,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: AppColors.textSecondary, fontSize: AppDims.sp12),
                  ),
                  SizedBox(height: AppDims.h2),
                  Text(
                    notification.createdAt,
                    style: TextStyle(color: AppColors.textMuted, fontSize: AppDims.sp10),
                  ),
                ],
              ),
            ),
            Icon(Icons.more_vert, color: AppColors.textSecondary, size: AppDims.sp18),
          ],
        ),
      ),
    );
  }
}
