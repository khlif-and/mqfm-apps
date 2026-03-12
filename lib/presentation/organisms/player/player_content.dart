import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mqfm_apps/core/manager/audio_player_manager.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/core/utils/helpers/message_helper.dart';
import 'package:mqfm_apps/core/utils/helpers/preferences_helper.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';
import 'package:mqfm_apps/features/like/applications/like_bloc/like_bloc.dart';
import 'package:mqfm_apps/features/like/applications/like_bloc/like_event.dart';
import 'package:mqfm_apps/features/bookmark/applications/bookmark_bloc/bookmark_bloc.dart';
import 'package:mqfm_apps/features/bookmark/applications/bookmark_bloc/bookmark_event.dart';
import 'package:mqfm_apps/features/download/applications/download_bloc/download_bloc.dart';
import 'package:mqfm_apps/features/download/applications/download_bloc/download_event.dart';

import 'package:mqfm_apps/features/vote/applications/vote_bloc/vote_bloc.dart';
import 'package:mqfm_apps/features/vote/applications/vote_bloc/vote_event.dart';
import 'package:mqfm_apps/features/clip/applications/clip_bloc/clip_bloc.dart';
import 'package:mqfm_apps/features/clip/applications/clip_bloc/clip_event.dart';
import 'package:mqfm_apps/presentation/atoms/player/player_bottom_actions.dart';
import 'package:mqfm_apps/presentation/atoms/player/player_disk.dart';
import 'package:mqfm_apps/presentation/molecules/player/player_header.dart';
import 'package:mqfm_apps/presentation/molecules/player/player_track_info.dart';
import 'package:mqfm_apps/presentation/organisms/player/player_controls.dart';
import 'package:mqfm_apps/presentation/organisms/player/player_menu_sheet.dart';
import 'package:mqfm_apps/presentation/organisms/player/sleep_timer_sheet.dart';
import 'package:mqfm_apps/presentation/organisms/share/share_bottom_sheet.dart';
import 'package:mqfm_apps/presentation/logic/player/player_dialog_helper.dart';
import 'package:go_router/go_router.dart';
import 'package:mqfm_apps/core/di/injection.dart';

class PlayerContent extends StatelessWidget {
  final AudioEntity initialAudio;
  final AudioPlayerManager audioManager;
  final PageController pageController;
  final bool isLiked;
  final VoidCallback onLikeToggle;
  final ValueChanged<int> onPageSwiped;

  const PlayerContent({
    super.key,
    required this.initialAudio,
    required this.audioManager,
    required this.pageController,
    required this.isLiked,
    required this.onLikeToggle,
    required this.onPageSwiped,
  });

  @override
  Widget build(BuildContext context) {
    final queue = audioManager.queue;
    final currentAudio = audioManager.currentAudio ?? initialAudio;

    return Column(
      children: [
        SizedBox(height: AppDims.h10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppDims.w24),
          child: PlayerHeader(
            onBack: () => context.pop(),
            onMenu: () => _showMenu(context, currentAudio, queue),
          ),
        ),
        SizedBox(height: AppDims.h24),
        _buildDiskView(queue, currentAudio),
        SizedBox(height: AppDims.h24),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppDims.w24),
          child: PlayerTrackInfo(
            title: currentAudio.title,
            description: currentAudio.artist.isNotEmpty ? currentAudio.artist : currentAudio.description,
            onAddToPlaylist: () => PlayerDialogHelper.showPlaylistBottomSheet(context, currentAudio.id),
          ),
        ),
        SizedBox(height: AppDims.h24),
        ValueListenableBuilder<bool>(
          valueListenable: audioManager.isShuffledNotifier,
          builder: (_, isShuffled, _) => PlayerControls(
            player: audioManager.player,
            hasNext: audioManager.hasNext,
            hasPrevious: audioManager.hasPrevious,
            onNext: () => audioManager.skipNext(),
            onPrevious: () => audioManager.skipPrevious(),
            onShuffle: () => audioManager.toggleShuffle(),
            onTimer: () => SleepTimerSheet.show(context, audioManager),
            isShuffled: isShuffled,
          ),
        ),
        SizedBox(height: AppDims.h30),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppDims.w24),
          child: PlayerBottomActions(
            isLiked: isLiked,
            onLikeTap: () {
              if (isLiked) {
                context.read<LikeBloc>().add(LikeEvent.unlike(targetId: currentAudio.id));
                PreferencesHelper.removeLikedAudioId(currentAudio.id);
              } else {
                context.read<LikeBloc>().add(LikeEvent.like(targetId: currentAudio.id));
                PreferencesHelper.addLikedAudioId(currentAudio.id);
              }
              onLikeToggle();
            },
            onQueueTap: () => _showQueue(context, currentAudio, queue),
          ),
        ),
        SizedBox(height: AppDims.h20),
      ],
    );
  }

  Widget _buildDiskView(List<AudioEntity> queue, AudioEntity currentAudio) {
    return SizedBox(
      height: AppDims.w340,
      child: queue.isNotEmpty
          ? PageView.builder(
              controller: pageController,
              itemCount: queue.length,
              onPageChanged: onPageSwiped,
              itemBuilder: (_, index) => Padding(
                padding: EdgeInsets.symmetric(horizontal: AppDims.w24),
                child: PlayerDisk(imageUrl: queue[index].thumbnail),
              ),
            )
          : Padding(
              padding: EdgeInsets.symmetric(horizontal: AppDims.w24),
              child: PlayerDisk(imageUrl: currentAudio.thumbnail),
            ),
    );
  }

  void _showMenu(BuildContext context, AudioEntity currentAudio, List<AudioEntity> queue) {
    PlayerMenuSheet.show(
      context,
      onDownload: () {
        getIt<DownloadBloc>().add(DownloadEvent.downloadFile(audio: currentAudio));
        MessageHelper.showSuccess(context, 'Mengunduh ${currentAudio.title}...');
      },
      onShare: () => ShareBottomSheet.show(context, audioId: currentAudio.id),
      onClip: () {
        final pos = audioManager.player.position.inSeconds;
        getIt<ClipBloc>().add(ClipEvent.create(
          audioId: currentAudio.id,
          startTime: pos,
          endTime: pos + 30,
        ));
        MessageHelper.showSuccess(context, 'Clip dibuat');
      },
      onBookmark: () {
        final pos = audioManager.player.position.inSeconds;
        getIt<BookmarkBloc>().add(BookmarkEvent.create(
          audioId: currentAudio.id,
          positionSeconds: pos,
          label: currentAudio.title,
        ));
        MessageHelper.showSuccess(context, 'Bookmark ditambahkan');
      },
      onVote: () {
        getIt<VoteBloc>().add(VoteEvent.cast(audioId: currentAudio.id));
        MessageHelper.showSuccess(context, 'Vote berhasil');
      },
      onQueue: () => _showQueue(context, currentAudio, queue),
    );
  }

  void _showQueue(BuildContext context, AudioEntity currentAudio, List<AudioEntity> queue) {
    final startIdx = audioManager.queueIndexNotifier.value + 1;
    PlayerDialogHelper.showQueueBottomSheet(
      context,
      currentAudioTitle: currentAudio.title,
      queue: queue.length > 1 ? queue.sublist(startIdx) : [],
      onPlayAt: (index) => audioManager.playAt(startIdx + index),
    );
  }
}
