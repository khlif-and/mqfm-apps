import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mqfm_apps/core/di/injection.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/core/utils/helpers/message_helper.dart';
import 'package:mqfm_apps/features/preferences/applications/preferences_bloc/preferences_bloc.dart';
import 'package:mqfm_apps/features/preferences/applications/preferences_bloc/preferences_event.dart';
import 'package:mqfm_apps/features/preferences/applications/preferences_bloc/preferences_state.dart';
import 'package:mqfm_apps/presentation/molecules/common/custom_app_bar.dart';
import 'package:mqfm_apps/presentation/molecules/common/empty_state_card.dart';
import 'package:mqfm_apps/presentation/molecules/preferences/preferences_shimmer.dart';
import 'package:mqfm_apps/presentation/organisms/preferences/preferences_form.dart';

class PreferencesPage extends StatelessWidget {
  const PreferencesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<PreferencesBloc>()
        ..add(const PreferencesEvent.fetch()),
      child: Builder(
        builder: (context) => Scaffold(
          backgroundColor: AppColors.background,
          appBar: CustomAppBar(
            title: 'Preferensi',
            backgroundColor: AppColors.background,
          ),
          body: BlocConsumer<PreferencesBloc, PreferencesState>(
            listener: (context, state) {
              state.whenOrNull(
                updated: (message) {
                  MessageHelper.showSuccess(context, message);
                  context.read<PreferencesBloc>().add(
                    const PreferencesEvent.fetch(),
                  );
                },
              );
            },
            builder: (context, state) {
              return state.maybeWhen(
                loading: () => const PreferencesShimmer(),
                loaded: (prefs) => PreferencesForm(preferences: prefs),
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

