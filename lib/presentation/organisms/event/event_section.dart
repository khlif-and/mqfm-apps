import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/features/event/applications/event_bloc/event_bloc.dart';
import 'package:mqfm_apps/features/event/applications/event_bloc/event_state.dart';
import 'package:mqfm_apps/features/event/domain/entities/event.dart';
import 'package:mqfm_apps/presentation/atoms/common/section_header.dart';
import 'package:mqfm_apps/presentation/atoms/common/shimmer_box.dart';
import 'package:mqfm_apps/presentation/molecules/event/event_compact_card.dart';

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
              return RepaintBoundary(child: EventCompactCard(event: event, onTap: () => onEventTap?.call(event.id)));
            },
          ),
        ),
      ],
    );
  }
}
