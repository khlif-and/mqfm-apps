import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mqfm_apps/core/di/injection.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/core/utils/helpers/message_helper.dart';
import 'package:mqfm_apps/features/share/applications/share_bloc/share_bloc.dart';
import 'package:mqfm_apps/features/share/applications/share_bloc/share_event.dart';
import 'package:mqfm_apps/features/share/applications/share_bloc/share_state.dart';

class ShareBottomSheet extends StatelessWidget {
  final int audioId;

  const ShareBottomSheet({super.key, required this.audioId});

  static void show(BuildContext context, {required int audioId}) {
    showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.surfaceCard,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(AppDims.r16),
        ),
      ),
      builder: (_) => ShareBottomSheet(audioId: audioId),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ShareBloc>()
        ..add(ShareEvent.getAudioShare(audioId: audioId)),
      child: const _ShareContent(),
    );
  }
}

class _ShareContent extends StatelessWidget {
  const _ShareContent();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppDims.r16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              width: AppDims.w40,
              height: AppDims.h4,
              decoration: BoxDecoration(
                color: AppColors.surfaceHighlight,
                borderRadius: BorderRadius.circular(AppDims.r2),
              ),
            ),
          ),
          SizedBox(height: AppDims.h16),
          Text(
            'Bagikan Audio',
            style: TextStyle(
              color: AppColors.textWhite,
              fontSize: AppDims.sp18,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: AppDims.h16),
          BlocConsumer<ShareBloc, ShareState>(
            listener: (context, state) {
              state.whenOrNull(
                error: (message) {
                  MessageHelper.showError(context, message);
                },
              );
            },
            builder: (context, state) {
              return state.maybeWhen(
                loading: () => Padding(
                  padding: EdgeInsets.symmetric(vertical: AppDims.h24),
                  child: const Center(
                    child: CircularProgressIndicator(
                      color: AppColors.primary,
                    ),
                  ),
                ),
                shareLoaded: (share) => Column(
                  children: [
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(AppDims.r12),
                      decoration: BoxDecoration(
                        color: AppColors.background,
                        borderRadius: BorderRadius.circular(AppDims.r8),
                      ),
                      child: Text(
                        share.shareUrl,
                        style: TextStyle(
                          color: AppColors.textSecondary,
                          fontSize: AppDims.sp13,
                        ),
                      ),
                    ),
                    SizedBox(height: AppDims.h16),
                    SizedBox(
                      width: double.infinity,
                      height: AppDims.h44,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          Clipboard.setData(
                            ClipboardData(text: share.shareUrl),
                          );
                          MessageHelper.showSuccess(
                            context,
                            'Link disalin ke clipboard',
                          );
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.copy),
                        label: const Text('Salin Link'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primary,
                          foregroundColor: AppColors.background,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(AppDims.r22),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                error: (message) => Padding(
                  padding: EdgeInsets.symmetric(vertical: AppDims.h16),
                  child: Text(
                    message,
                    style: TextStyle(
                      color: AppColors.textSecondary,
                      fontSize: AppDims.sp14,
                    ),
                  ),
                ),
                orElse: () => const SizedBox.shrink(),
              );
            },
          ),
          SizedBox(height: AppDims.h16),
        ],
      ),
    );
  }
}
