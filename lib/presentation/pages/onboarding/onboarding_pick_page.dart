import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mqfm_apps/core/di/injection.dart';
import 'package:mqfm_apps/core/routes/app_path_routes.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/core/utils/helpers/message_helper.dart';
import 'package:mqfm_apps/core/utils/helpers/preferences_helper.dart';
import 'package:mqfm_apps/features/recommendation/applications/onboarding_pick_bloc/onboarding_pick_bloc.dart';
import 'package:mqfm_apps/features/recommendation/applications/onboarding_pick_bloc/onboarding_pick_event.dart';
import 'package:mqfm_apps/features/recommendation/applications/onboarding_pick_bloc/onboarding_pick_state.dart';
import 'package:mqfm_apps/presentation/molecules/onboarding/audio_pick_item.dart';

class OnboardingPickPage extends StatelessWidget {
  const OnboardingPickPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<OnboardingPickBloc>()..add(const OnboardingPickEvent.fetch()),
      child: Scaffold(
        backgroundColor: AppColors.backgroundBlack,
        body: SafeArea(
          child: BlocBuilder<OnboardingPickBloc, OnboardingPickState>(
            builder: (context, state) {
            return Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      AppDims.w24, AppDims.h24, AppDims.w24, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Pilih Yang Kamu Suka",
                        style: TextStyle(
                          color: AppColors.textWhite,
                          fontSize: AppDims.sp24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: AppDims.h8),
                      Text(
                        "Pilih hingga 5 konten untuk rekomendasi yang lebih baik",
                        style: TextStyle(
                          color: AppColors.textSecondary,
                          fontSize: AppDims.sp14,
                        ),
                      ),
                      SizedBox(height: AppDims.h4),
                      Text(
                        "${state.selectedIds.length}/5 dipilih",
                        style: TextStyle(
                          color: AppColors.primaryClassic,
                          fontSize: AppDims.sp14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: AppDims.h16),
                Expanded(
                  child: state.isLoading
                      ? const Center(
                          child: CircularProgressIndicator(
                              color: AppColors.primaryClassic))
                      : state.error != null
                          ? Center(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    state.error!,
                                    style: TextStyle(
                                      color: AppColors.textSecondary,
                                      fontSize: AppDims.sp14,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(height: AppDims.h12),
                                  TextButton(
                                    onPressed: () => context
                                        .read<OnboardingPickBloc>()
                                        .add(const OnboardingPickEvent.fetch()),
                                    child: Text(
                                      "Coba Lagi",
                                      style: TextStyle(
                                          color: AppColors.primaryClassic),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          : GridView.builder(
                              padding: EdgeInsets.symmetric(
                                  horizontal: AppDims.w16),
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                mainAxisSpacing: AppDims.h12,
                                crossAxisSpacing: AppDims.w12,
                                childAspectRatio: 0.75,
                              ),
                              itemCount: state.audios.length,
                              itemBuilder: (context, index) {
                                final audio = state.audios[index];
                                final isSelected =
                                    state.selectedIds.contains(audio.id);
                                return AudioPickItem(
                                  audio: audio,
                                  isSelected: isSelected,
                                  onTap: () {
                                    if (!isSelected &&
                                        state.selectedIds.length >= 5) {
                                      MessageHelper.showError(
                                          context, "Maksimal 5 pilihan");
                                      return;
                                    }
                                    context
                                        .read<OnboardingPickBloc>()
                                        .add(OnboardingPickEvent.toggle(
                                            audioId: audio.id));
                                  },
                                );
                              },
                            ),
                ),
                Padding(
                  padding: EdgeInsets.all(AppDims.w24),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextButton(
                          onPressed: () async {
                            await PreferencesHelper.setOnboardingPickDone();
                            if (context.mounted) context.go(AppPathRoutes.dashboard);
                          },
                          child: Text(
                            "Lewati",
                            style: TextStyle(
                              color: AppColors.textSecondary,
                              fontSize: AppDims.sp16,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: AppDims.w16),
                      Expanded(
                        flex: 2,
                        child: SizedBox(
                          height: AppDims.h50,
                          child: ElevatedButton(
                            onPressed: state.selectedIds.isEmpty
                                ? null
                                : () async {
                                    await PreferencesHelper.setOnboardingPickDone();
                                    if (context.mounted) context.go(AppPathRoutes.dashboard);
                                  },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.primaryClassic,
                              disabledBackgroundColor:
                                  AppColors.surface,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    AppDims.r24),
                              ),
                            ),
                            child: Text(
                              "Lanjutkan",
                              style: TextStyle(
                                color: state.selectedIds.isEmpty
                                    ? AppColors.textSecondary
                                    : AppColors.textWhite,
                                fontSize: AppDims.sp16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    ),
  );
  }
}
