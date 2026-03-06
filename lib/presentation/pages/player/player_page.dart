import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mqfm_apps/core/di/injection.dart';
import 'package:mqfm_apps/core/manager/audio_player_manager.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_strings.dart';
import 'package:mqfm_apps/core/utils/helpers/message_helper.dart';
import 'package:mqfm_apps/core/utils/helpers/preferences_helper.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio_entity.dart';
import 'package:mqfm_apps/features/audio/presentation/bloc/player_bloc/player_bloc.dart';
import 'package:mqfm_apps/features/audio/presentation/bloc/player_bloc/player_event.dart';
import 'package:mqfm_apps/features/audio/presentation/bloc/player_bloc/player_state.dart';
import 'package:mqfm_apps/features/playlist/presentation/bloc/playlist_bloc/playlist_bloc.dart';
import 'package:mqfm_apps/presentation/atoms/common/empty_state_card.dart';
import 'package:mqfm_apps/presentation/atoms/common/shimmer_box.dart';
import 'package:mqfm_apps/presentation/atoms/player/player_background.dart';
import 'package:mqfm_apps/presentation/molecules/player/player_bottom_actions.dart';
import 'package:mqfm_apps/presentation/organisms/player/player_controls.dart';
import 'package:mqfm_apps/presentation/organisms/player/player_dialog_helper.dart';
import 'package:mqfm_apps/presentation/organisms/player/player_disk.dart';
import 'package:mqfm_apps/presentation/organisms/player/player_header.dart';
import 'package:mqfm_apps/presentation/organisms/player/player_track_info.dart';

class PlayerPage extends StatefulWidget {
  final String audioId;
  const PlayerPage({super.key, required this.audioId});

  @override
  State<PlayerPage> createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
  final AudioPlayerManager _audioManager = AudioPlayerManager();

  Future<void> _initPlayer(AudioEntity audio) async {
    if (audio.audioUrl.isEmpty) return;
    final id = audio.id;
    try {
      _audioManager.currentAudioNotifier.value = audio;
      if (_audioManager.currentAudioId == id) return;
      _audioManager.currentAudioId = id;
      await _audioManager.player.stop();
      await _audioManager.player.setUrl(audio.audioUrl);
      _audioManager.player.play();
      PreferencesHelper.savePlayedAudio(audio);
    } catch (e) {
      if (mounted) MessageHelper.showError(context, '${AppStrings.failedPlay}: $e');
    }
  }

  Widget _buildShimmer() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDims.w24, vertical: AppDims.h10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ShimmerBox(width: AppDims.w32, height: AppDims.w32, shape: BoxShape.circle),
              ShimmerBox(width: AppDims.w100, height: AppDims.h14, borderRadius: AppDims.r4),
              ShimmerBox(width: AppDims.w32, height: AppDims.w32, shape: BoxShape.circle),
            ],
          ),
          const Spacer(),
          ShimmerBox(width: AppDims.w280, height: AppDims.w280, borderRadius: AppDims.r16),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ShimmerBox(width: AppDims.w200, height: AppDims.h18, borderRadius: AppDims.r4),
              SizedBox(height: AppDims.h10),
              ShimmerBox(width: AppDims.w140, height: AppDims.h14, borderRadius: AppDims.r4),
            ],
          ),
          SizedBox(height: AppDims.h24),
          ShimmerBox(width: double.infinity, height: AppDims.h4, borderRadius: AppDims.r2),
          SizedBox(height: AppDims.h24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(5, (_) => ShimmerBox(width: AppDims.w40, height: AppDims.w40, shape: BoxShape.circle)),
          ),
          SizedBox(height: AppDims.h50),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final audioId = int.tryParse(widget.audioId) ?? 0;
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) {
            final bloc = getIt<PlayerBloc>();
            final currentState = bloc.state;
            final alreadyLoaded = currentState is PlayerLoaded && currentState.audio.id == audioId;
            if (!alreadyLoaded) {
              bloc.add(PlayerEvent.loadAudio(audioId: audioId));
            } else {
              Future.microtask(() => _initPlayer(currentState.audio));
            }
            return bloc;
          },
        ),
        BlocProvider(create: (_) => getIt<PlaylistBloc>()),
      ],
      child: BlocConsumer<PlayerBloc, PlayerState>(
        listener: (context, state) {
          state.whenOrNull(
            loaded: (audio) => _initPlayer(audio),
            error: (message) => MessageHelper.showError(context, message),
          );
        },
        builder: (context, state) {
          return Scaffold(
            body: PlayerBackground(
              child: state.when(
                initial: () => _buildShimmer(),
                loading: () => _buildShimmer(),
                loaded: (audio) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: AppDims.h10),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: AppDims.w24),
                        child: const PlayerHeader(),
                      ),
                      const Spacer(),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: AppDims.w24),
                        child: PlayerDisk(imageUrl: audio.thumbnail),
                      ),
                      const Spacer(),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: AppDims.w24),
                        child: PlayerTrackInfo(
                          title: audio.title,
                          description: audio.description,
                          onAddToPlaylist: () => PlayerDialogHelper.showPlaylistBottomSheet(context, audio.id),
                        ),
                      ),
                      SizedBox(height: AppDims.h24),
                      PlayerControls(player: _audioManager.player),
                      SizedBox(height: AppDims.h30),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: AppDims.w24),
                        child: const PlayerBottomActions(),
                      ),
                      SizedBox(height: AppDims.h20),
                    ],
                  ),
                ),
                error: (_) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppDims.w24),
                  child: Column(
                    children: [
                      SizedBox(height: AppDims.h10),
                      const PlayerHeader(),
                      const Spacer(),
                      const EmptyStateCard(message: AppStrings.audioNotFound, icon: Icons.music_off_rounded),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

