import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mqfm_apps/core/di/injection.dart';
import 'package:mqfm_apps/core/manager/audio_player_manager.dart';
import 'package:mqfm_apps/core/routes/app_path_routes.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/core/utils/helpers/message_helper.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';
import 'package:mqfm_apps/features/download/applications/download_bloc/download_bloc.dart';
import 'package:mqfm_apps/features/download/applications/download_bloc/download_event.dart';
import 'package:mqfm_apps/features/download/applications/download_bloc/download_state.dart';
import 'package:mqfm_apps/features/download/data/datasources/locals/audio_file_downloader.dart';
import 'package:mqfm_apps/features/download/data/datasources/locals/download_db_helper.dart';
import 'package:mqfm_apps/features/download/domain/entities/download.dart';
import 'package:mqfm_apps/presentation/atoms/common/shimmer_list.dart';
import 'package:mqfm_apps/presentation/molecules/common/custom_app_bar.dart';
import 'package:mqfm_apps/presentation/molecules/common/empty_state_card.dart';
import 'package:mqfm_apps/presentation/molecules/download/download_tile.dart';

class DownloadsPage extends StatefulWidget {
  const DownloadsPage({super.key});

  @override
  State<DownloadsPage> createState() => _DownloadsPageState();
}

class _DownloadsPageState extends State<DownloadsPage> {
  Set<int> _localAudioIds = {};

  @override
  void initState() {
    super.initState();
    _loadLocalIds();
  }

  Future<void> _loadLocalIds() async {
    final rows = await DownloadDbHelper.getAll();
    if (mounted) {
      setState(() {
        _localAudioIds = rows.map((r) => r['audio_id'] as int).toSet();
      });
    }
  }

  void _playDownload(BuildContext context, DownloadEntity dl) {
    final audio = AudioEntity(
      id: dl.audioId,
      title: dl.title,
      artist: dl.artist,
      filePath: dl.audio?.filePath ?? '',
      duration: dl.duration,
      durationFmt: dl.durationFmt,
      fileSize: dl.fileSize,
      thumbnail: dl.thumbnail,
      dominantColor: dl.dominantColor,
    );
    final manager = AudioPlayerManager();
    manager.setQueue([audio], 0);
    manager.playAt(0);
    context.push(AppPathRoutes.playerWithId(dl.audioId.toString()));
  }

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
              _loadLocalIds();
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
                  await _loadLocalIds();
                  if (context.mounted) {
                    context.read<DownloadBloc>().add(
                      const DownloadEvent.fetch(),
                    );
                  }
                },
                child: ValueListenableBuilder<Map<int, double>>(
                  valueListenable: AudioFileDownloader().progressNotifier,
                  builder: (context, progressMap, _) {
                    return ListView.builder(
                      physics: const AlwaysScrollableScrollPhysics(),
                      cacheExtent: 500,
                      itemCount: downloads.length,
                      itemBuilder: (context, index) {
                        final dl = downloads[index];
                        return RepaintBoundary(
                          child: DownloadTile(
                            download: dl,
                            isDownloaded: _localAudioIds.contains(dl.audioId),
                            progress: progressMap[dl.audioId],
                            onTap: () => _playDownload(context, dl),
                            onDelete: () {
                              context.read<DownloadBloc>().add(
                                DownloadEvent.delete(id: dl.id),
                              );
                            },
                          ),
                        );
                      },
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
