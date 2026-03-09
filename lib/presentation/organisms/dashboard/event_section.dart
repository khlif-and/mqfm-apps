import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/features/event/applications/event_bloc/event_bloc.dart';
import 'package:mqfm_apps/features/event/applications/event_bloc/event_state.dart';
import 'package:mqfm_apps/features/event/domain/entities/event.dart';
import 'package:mqfm_apps/presentation/atoms/common/app_network_image.dart';
import 'package:mqfm_apps/presentation/atoms/common/section_header.dart';
import 'package:mqfm_apps/presentation/atoms/common/shimmer_box.dart';

class EventSection extends StatelessWidget {
  final void Function(int eventId)? onEventTap;
  final VoidCallback? onSeeAll;

  const EventSection({super.key, this.onEventTap, this.onSeeAll});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventBloc, EventState>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => _buildShimmer(),
          loaded: (events) => events.isEmpty ? const SizedBox.shrink() : _buildContent(events),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget _buildShimmer() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppDims.w16),
          child: ShimmerBox(width: AppDims.w140, height: AppDims.h20),
        ),
        SizedBox(height: AppDims.h16),
        SizedBox(
          height: AppDims.h180,
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: AppDims.w16),
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            separatorBuilder: (_, _) => SizedBox(width: AppDims.w12),
            itemBuilder: (_, _) => ShimmerBox(
              width: AppDims.w260,
              height: AppDims.h180,
              borderRadius: AppDims.r12,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildContent(List<EventEntity> events) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeader(title: 'Event Mendatang', onSeeAll: onSeeAll),
        SizedBox(height: AppDims.h16),
        SizedBox(
          height: AppDims.h180,
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: AppDims.w16),
            scrollDirection: Axis.horizontal,
            itemCount: events.length,
            cacheExtent: 300,
            addAutomaticKeepAlives: false,
            addRepaintBoundaries: false,
            separatorBuilder: (_, _) => SizedBox(width: AppDims.w12),
            itemBuilder: (_, index) {
              final event = events[index];
              return RepaintBoundary(child: _EventCard(event: event, onTap: () => onEventTap?.call(event.id)));
            },
          ),
        ),
      ],
    );
  }
}

class _EventCard extends StatelessWidget {
  final EventEntity event;
  final VoidCallback? onTap;

  const _EventCard({required this.event, this.onTap});

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
