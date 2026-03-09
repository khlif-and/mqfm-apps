import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mqfm_apps/core/di/injection.dart';
import 'package:mqfm_apps/core/routes/app_path_routes.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/core/utils/helpers/message_helper.dart';
import 'package:mqfm_apps/core/utils/helpers/preferences_helper.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';
import 'package:mqfm_apps/features/recommendation/applications/onboarding_pick_bloc/onboarding_pick_bloc.dart';
import 'package:mqfm_apps/features/recommendation/applications/onboarding_pick_bloc/onboarding_pick_event.dart';
import 'package:mqfm_apps/features/recommendation/applications/onboarding_pick_bloc/onboarding_pick_state.dart';
import 'package:mqfm_apps/presentation/atoms/common/app_network_image.dart';
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
              final selectedAudios = state.audios.where((a) => state.selectedIds.contains(a.id)).toList();
              return Column(
                children: [
                  _buildTopBar(context, selectedAudios),
                  SizedBox(height: AppDims.h16),
                  _buildTitle(),
                  SizedBox(height: AppDims.h4),
                  Text(
                    '${state.selectedIds.length}/5 dipilih',
                    style: TextStyle(
                      color: AppColors.primaryClassic,
                      fontSize: AppDims.sp14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: AppDims.h16),
                  Expanded(
                    child: state.isLoading
                        ? const Center(child: CircularProgressIndicator(color: AppColors.primaryClassic))
                        : state.error != null
                            ? Center(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(state.error!, style: TextStyle(color: AppColors.textSecondary, fontSize: AppDims.sp14), textAlign: TextAlign.center),
                                    SizedBox(height: AppDims.h12),
                                    TextButton(
                                      onPressed: () => context.read<OnboardingPickBloc>().add(const OnboardingPickEvent.fetch()),
                                      child: Text('Coba Lagi', style: TextStyle(color: AppColors.primaryClassic)),
                                    ),
                                  ],
                                ),
                              )
                            : GridView.builder(
                                padding: EdgeInsets.symmetric(horizontal: AppDims.w16),
                                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  mainAxisSpacing: AppDims.h12,
                                  crossAxisSpacing: AppDims.w12,
                                  childAspectRatio: 0.75,
                                ),
                                itemCount: state.audios.length,
                                itemBuilder: (context, index) {
                                  final audio = state.audios[index];
                                  final isSelected = state.selectedIds.contains(audio.id);
                                  return AudioPickItem(
                                    audio: audio,
                                    isSelected: isSelected,
                                    onTap: () {
                                      if (!isSelected && state.selectedIds.length >= 5) {
                                        MessageHelper.showError(context, 'Maksimal 5 pilihan');
                                        return;
                                      }
                                      context.read<OnboardingPickBloc>().add(OnboardingPickEvent.toggle(audioId: audio.id));
                                    },
                                  );
                                },
                              ),
                  ),
                  _buildBottomActions(context, state),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildTopBar(BuildContext context, List<AudioEntity> selectedAudios) {
    return Padding(
      padding: EdgeInsets.fromLTRB(AppDims.w24, AppDims.h16, AppDims.w24, 0),
      child: Row(
        children: [
          if (selectedAudios.isNotEmpty)
            SizedBox(
              width: 24.0 + (selectedAudios.length - 1) * 18.0,
              height: 36,
              child: Stack(
                children: List.generate(selectedAudios.length, (i) {
                  return Positioned(
                    left: i * 18.0,
                    child: Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: AppColors.backgroundBlack, width: 2),
                      ),
                      child: ClipOval(
                        child: AppNetworkImage(
                          url: selectedAudios[i].thumbnail,
                          width: 32,
                          height: 32,
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
          const Spacer(),
          GestureDetector(
            onTap: () async {
              await PreferencesHelper.setOnboardingPickDone();
              if (context.mounted) context.go(AppPathRoutes.dashboard);
            },
            child: Text(
              'Lewati',
              style: TextStyle(color: AppColors.textSecondary, fontSize: AppDims.sp14, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTitle() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDims.w24),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: TextStyle(color: AppColors.textWhite, fontSize: AppDims.sp22, fontWeight: FontWeight.bold),
          children: const [
            TextSpan(text: 'Pilih Content '),
            TextSpan(text: 'Dakwah', style: TextStyle(color: Color(0xFFDBCD5D))),
            TextSpan(text: ' Kesukaan mu'),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomActions(BuildContext context, OnboardingPickState state) {
    return Padding(
      padding: EdgeInsets.all(AppDims.w24),
      child: SizedBox(
        width: double.infinity,
        height: AppDims.h50,
        child: ElevatedButton(
          onPressed: state.selectedIds.isEmpty
              ? null
              : () async {
                  await PreferencesHelper.setOnboardingPickDone();
                  if (context.mounted) {
                    context.push('/onboarding-result', extra: state.selectedIds.toList());
                  }
                },
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primaryClassic,
            disabledBackgroundColor: AppColors.surface,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppDims.r24)),
          ),
          child: Text(
            'Lanjutkan',
            style: TextStyle(
              color: state.selectedIds.isEmpty ? AppColors.textSecondary : AppColors.textWhite,
              fontSize: AppDims.sp16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

