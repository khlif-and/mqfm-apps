import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mqfm_apps/core/di/injection.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/core/utils/helpers/message_helper.dart';
import 'package:mqfm_apps/features/download/applications/download_bloc/download_bloc.dart';
import 'package:mqfm_apps/features/download/applications/download_bloc/download_event.dart';
import 'package:mqfm_apps/features/download/applications/download_bloc/download_state.dart';
import 'package:mqfm_apps/presentation/atoms/common/shimmer_list.dart';
import 'package:mqfm_apps/presentation/molecules/common/content_tile.dart';
import 'package:mqfm_apps/presentation/molecules/common/custom_app_bar.dart';
import 'package:mqfm_apps/presentation/molecules/common/empty_state_card.dart';

class DownloadsPage extends StatelessWidget {
  const DownloadsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<DownloadBloc>()
        ..add(const DownloadEvent.fetch()),
      child: Builder(
        builder: (context) => Scaffold(
      backgroundColor: AppColors.background,
      appBar: CustomAppBar(
        title: 'Daftar Unduhan',
        backgroundColor: AppColors.background,
      ),
      body: BlocConsumer<DownloadBloc, DownloadState>(
        listener: (context, state) {
          state.whenOrNull(
            actionSuccess: (message) {
              MessageHelper.showSuccess(context, message);
              context.read<DownloadBloc>().add(
                const DownloadEvent.fetch(),
              );
            },
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const ShimmerList(itemCount: 6, hasTrailing: true),
            loaded: (downloads) {
              if (downloads.isEmpty) {
                return Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: AppDims.w24),
                    child: const EmptyStateCard(
                      icon: Icons.cloud_download_outlined,
                      message:
                          'Anda belum memiliki daftar unduhan.\nSimpan kajian favorit untuk didengarkan offline.',
                    ),
                  ),
                );
              }
              return RefreshIndicator(
                onRefresh: () async {
                  context.read<DownloadBloc>().add(
                    const DownloadEvent.fetch(),
                  );
                },
                child: ListView.builder(
                  physics: const AlwaysScrollableScrollPhysics(),
                  cacheExtent: 500,
                  itemCount: downloads.length,
                  itemBuilder: (context, index) {
                    final dl = downloads[index];
                    return RepaintBoundary(
                      child: ContentTile(
                        title: dl.title,
                        subtitle: '${dl.artist} • ${_formatSize(dl.fileSize)}',
                        leadingIcon: Icons.download_done,
                        trailing: GestureDetector(
                          onTap: () {
                            context.read<DownloadBloc>().add(
                              DownloadEvent.delete(id: dl.id),
                            );
                          },
                          child: Icon(
                            Icons.delete_outline,
                            color: AppColors.textSecondary,
                            size: AppDims.sp20,
                          ),
                        ),
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

  String _formatSize(int bytes) {
    if (bytes < 1024) return '$bytes B';
    if (bytes < 1024 * 1024) return '${(bytes / 1024).toStringAsFixed(1)} KB';
    return '${(bytes / (1024 * 1024)).toStringAsFixed(1)} MB';
  }
}
