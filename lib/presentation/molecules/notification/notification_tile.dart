import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/features/notification/domain/entities/notification.dart';

class NotificationTile extends StatelessWidget {
  final NotificationEntity notification;
  final VoidCallback? onTap;

  const NotificationTile({
    super.key,
    required this.notification,
    this.onTap,
  });

  IconData _iconForType(String type) {
    switch (type) {
      case 'event':
        return Icons.event;
      case 'content':
        return Icons.library_music;
      case 'reminder':
        return Icons.alarm;
      default:
        return Icons.notifications_outlined;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: AppDims.w16,
          vertical: AppDims.h12,
        ),
        decoration: BoxDecoration(
          color: notification.isRead
              ? AppColors.background
              : AppColors.surfaceCard,
          border: Border(
            bottom: BorderSide(
              color: AppColors.textWhite.withValues(alpha: 0.05),
            ),
          ),
        ),
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
                color: notification.isRead
                    ? AppColors.textSecondary
                    : AppColors.notificationBlue,
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
                      fontWeight: notification.isRead
                          ? FontWeight.w400
                          : FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: AppDims.h4),
                  Text(
                    notification.body,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: AppColors.textSecondary,
                      fontSize: AppDims.sp12,
                    ),
                  ),
                  SizedBox(height: AppDims.h4),
                  Text(
                    notification.createdAt,
                    style: TextStyle(
                      color: AppColors.textMuted,
                      fontSize: AppDims.sp10,
                    ),
                  ),
                ],
              ),
            ),
            if (!notification.isRead)
              Container(
                width: AppDims.h8,
                height: AppDims.h8,
                margin: EdgeInsets.only(top: AppDims.h4),
                decoration: const BoxDecoration(
                  color: AppColors.notificationBlue,
                  shape: BoxShape.circle,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
