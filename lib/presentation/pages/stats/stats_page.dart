import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mqfm_apps/core/di/injection.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/features/stats/applications/stats_bloc/stats_bloc.dart';
import 'package:mqfm_apps/features/stats/applications/stats_bloc/stats_event.dart';
import 'package:mqfm_apps/features/stats/applications/stats_bloc/stats_state.dart';
import 'package:mqfm_apps/presentation/molecules/common/custom_app_bar.dart';
import 'package:mqfm_apps/presentation/molecules/common/empty_state_card.dart';
import 'package:mqfm_apps/presentation/molecules/stats/stats_shimmer.dart';
import 'package:mqfm_apps/presentation/organisms/stats/stats_content.dart';

class StatsPage extends StatelessWidget {
  const StatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<StatsBloc>()
        ..add(const StatsEvent.fetchRecap()),
      child: Builder(
        builder: (context) => Scaffold(
          backgroundColor: AppColors.background,
          appBar: CustomAppBar(
            title: 'Statistik',
            backgroundColor: AppColors.background,
          ),
          body: BlocBuilder<StatsBloc, StatsState>(
            builder: (context, state) {
              return state.maybeWhen(
                loading: () => const StatsShimmer(),
                recapLoaded: (recap) => RefreshIndicator(
                  onRefresh: () async {
                    context.read<StatsBloc>().add(
                      const StatsEvent.fetchRecap(),
                    );
                  },
                  child: StatsContent(recap: recap),
                ),
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

