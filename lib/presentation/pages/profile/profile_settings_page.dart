import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mqfm_apps/core/di/injection.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_strings.dart';
import 'package:mqfm_apps/core/utils/helpers/message_helper.dart';
import 'package:mqfm_apps/features/auth/presentation/bloc/profile_bloc/profile_bloc.dart';
import 'package:mqfm_apps/features/auth/presentation/bloc/profile_bloc/profile_event.dart';
import 'package:mqfm_apps/features/auth/presentation/bloc/profile_bloc/profile_state.dart';
import 'package:mqfm_apps/presentation/atoms/profile/logout_button.dart';
import 'package:mqfm_apps/presentation/organisms/profile/settings_list.dart';

class ProfileSettingsPage extends StatelessWidget {
  const ProfileSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ProfileBloc>(),
      child: BlocConsumer<ProfileBloc, ProfileState>(
        listener: (context, state) {
          state.whenOrNull(
            loggedOut: () {
              MessageHelper.showSuccess(context, AppStrings.logoutSuccess);
              context.go('/login-form');
            },
            error: (message) => MessageHelper.showError(context, message),
          );
        },
        builder: (context, state) {
          final isLoading = state is ProfileLoading;
          return Scaffold(
            backgroundColor: AppColors.background,
            appBar: AppBar(
              backgroundColor: AppColors.background,
              elevation: 0,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back, color: AppColors.textWhite),
                onPressed: () => Navigator.pop(context),
              ),
              centerTitle: true,
              title: const Text(
                AppStrings.settingsTitle,
                style: TextStyle(color: AppColors.textWhite, fontSize: 16, fontWeight: FontWeight.bold),
              ),
              actions: [
                IconButton(icon: const Icon(Icons.search, color: AppColors.textWhite), onPressed: () {}),
              ],
            ),
            body: ListView(
              padding: const EdgeInsets.symmetric(vertical: 8),
              children: [
                const SettingsList(),
                const SizedBox(height: 32),
                LogoutButton(
                  isLoading: isLoading,
                  onPressed: () => context.read<ProfileBloc>().add(const ProfileEvent.logout()),
                ),
                const SizedBox(height: 48),
              ],
            ),
          );
        },
      ),
    );
  }
}

