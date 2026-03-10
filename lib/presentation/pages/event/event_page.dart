import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mqfm_apps/core/di/injection.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/core/utils/helpers/message_helper.dart';
import 'package:mqfm_apps/features/event/applications/event_bloc/event_bloc.dart';
import 'package:mqfm_apps/features/event/applications/event_bloc/event_event.dart';
import 'package:mqfm_apps/features/event/applications/event_bloc/event_state.dart';
import 'package:mqfm_apps/presentation/atoms/common/shimmer_list.dart';
import 'package:mqfm_apps/presentation/molecules/common/custom_app_bar.dart';
import 'package:mqfm_apps/presentation/molecules/common/empty_state_card.dart';
import 'package:mqfm_apps/presentation/molecules/event/event_card.dart';

class EventPage extends StatelessWidget {
  const EventPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<EventBloc>()
        ..add(const EventEvent.fetchUpcoming()),
      child: Builder(
        builder: (context) => Scaffold(
      backgroundColor: AppColors.background,
      appBar: const CustomAppBar(
        title: 'Event & Acara',
        backgroundColor: AppColors.background,
      ),
      body: BlocConsumer<EventBloc, EventState>(
        listener: (context, state) {
          state.whenOrNull(
            actionSuccess: (message) {
              MessageHelper.showSuccess(context, message);
              context.read<EventBloc>().add(
                const EventEvent.fetchUpcoming(),
              );
            },
            error: (message) {
              MessageHelper.showError(context, message);
            },
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const ShimmerList(itemCount: 4),
            loaded: (events) {
              if (events.isEmpty) {
                return Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: AppDims.w24),
                    child: const EmptyStateCard(
                      icon: Icons.event_outlined,
                      message: 'Tidak ada event mendatang',
                    ),
                  ),
                );
              }
              return RefreshIndicator(
                onRefresh: () async {
                  context.read<EventBloc>().add(
                    const EventEvent.fetchUpcoming(),
                  );
                },
                child: ListView.builder(
                  padding: EdgeInsets.all(AppDims.w16),
                  physics: const AlwaysScrollableScrollPhysics(),
                  cacheExtent: 500,
                  itemCount: events.length,
                  itemBuilder: (context, index) {
                    final event = events[index];
                    return RepaintBoundary(
                      child: EventCard(
                        event: event,
                        onRsvp: () {
                          if (event.hasRsvp) {
                            context.read<EventBloc>().add(
                              EventEvent.cancelRsvp(id: event.id),
                            );
                          } else {
                            context.read<EventBloc>().add(
                              EventEvent.rsvp(id: event.id),
                            );
                          }
                        },
                      ),
                    );
                  },
                ),
              );
            },
            error: (message) => Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: AppDims.w24),
                child: EmptyStateCard(
                  icon: Icons.error_outline,
                  message: message,
                ),
              ),
            ),
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    ),
      ),
    );
  }
}
