import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mqfm_apps/core/di/injection.dart';
import 'package:mqfm_apps/core/manager/audio_player_manager.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_strings.dart';
import 'package:mqfm_apps/core/utils/helpers/message_helper.dart';
import 'package:mqfm_apps/core/utils/helpers/preferences_helper.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';
import 'package:mqfm_apps/features/audio/applications/player_bloc/player_bloc.dart';
import 'package:mqfm_apps/features/audio/applications/player_bloc/player_event.dart';
import 'package:mqfm_apps/features/audio/applications/player_bloc/player_state.dart';
import 'package:mqfm_apps/features/like/applications/like_bloc/like_bloc.dart';
import 'package:mqfm_apps/features/like/applications/like_bloc/like_event.dart';
import 'package:mqfm_apps/features/like/applications/like_bloc/like_state.dart';
import 'package:mqfm_apps/features/playlist/applications/playlist_bloc/playlist_bloc.dart';
import 'package:mqfm_apps/features/recommendation/applications/recommendation_bloc/recommendation_bloc.dart';
import 'package:mqfm_apps/features/recommendation/applications/recommendation_bloc/recommendation_event.dart';
import 'package:mqfm_apps/features/recommendation/applications/recommendation_bloc/recommendation_state.dart';
import 'package:mqfm_apps/presentation/molecules/common/empty_state_card.dart';
import 'package:mqfm_apps/presentation/atoms/common/shimmer_box.dart';
import 'package:mqfm_apps/presentation/atoms/player/player_background.dart';
import 'package:mqfm_apps/presentation/atoms/player/player_bottom_actions.dart';
import 'package:mqfm_apps/presentation/organisms/player/player_controls.dart';
import 'package:mqfm_apps/presentation/logic/player/player_dialog_helper.dart';
import 'package:mqfm_apps/presentation/atoms/player/player_disk.dart';
import 'package:mqfm_apps/presentation/molecules/player/player_header.dart';
import 'package:mqfm_apps/presentation/molecules/player/player_track_info.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlayerPage extends StatefulWidget {
  final String audioId;
  const PlayerPage({super.key, required this.audioId});

  @override
  State<PlayerPage> createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
  final AudioPlayerManager _audioManager = AudioPlayerManager();
  late PageController _pageController;
  bool _isPageAnimating = false;
  bool _isLiked = false;
  bool _queueReady = false;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _audioManager.queueIndexNotifier.addListener(_onQueueIndexChanged);
  }

  @override
  void dispose() {
    _audioManager.queueIndexNotifier.removeListener(_onQueueIndexChanged);
    _pageController.dispose();
    super.dispose();
  }

  void _onQueueIndexChanged() {
    if (!mounted) return;
    final idx = _audioManager.queueIndexNotifier.value;
    if (_pageController.hasClients && _pageController.page?.round() != idx) {
      _isPageAnimating = true;
      _pageController.animateToPage(
        idx,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      ).then((_) => _isPageAnimating = false);
    }
    setState(() {});
  }

  void _buildQueue(AudioEntity mainAudio, List<AudioEntity> similar) {
    if (_queueReady) return;
    _queueReady = true;
    final allAudios = [mainAudio, ...similar.where((a) => a.id != mainAudio.id)];
    _audioManager.setQueue(allAudios, 0);
    _startPlayback(mainAudio);
  }

  Future<void> _startPlayback(AudioEntity audio) async {
    if (audio.filePath.isEmpty) return;
    if (_audioManager.currentAudioId == audio.id) return;
    _audioManager.currentAudioNotifier.value = audio;
    _audioManager.currentAudioId = audio.id;
    try {
      await _audioManager.player.stop();
      await _audioManager.player.setUrl(audio.filePath);
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

  Color? _parseColor(String hex) {
    if (hex.isEmpty) return null;
    try {
      final clean = hex.replaceAll('#', '');
      return Color(int.parse('FF$clean', radix: 16));
    } catch (_) {
      return null;
    }
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
              Future.microtask(() => _startPlayback(currentState.audio));
            }
            return bloc;
          },
        ),
        BlocProvider(create: (_) => getIt<PlaylistBloc>()),
        BlocProvider(
          create: (_) => getIt<RecommendationBloc>()
            ..add(RecommendationEvent.fetchSimilar(audioId: audioId)),
        ),
        BlocProvider(
          create: (_) => getIt<LikeBloc>(),
        ),
      ],
      child: BlocConsumer<PlayerBloc, PlayerState>(
        listener: (context, state) {
          state.whenOrNull(
            loaded: (audio) {
              final recState = context.read<RecommendationBloc>().state;
              if (recState.similar.isNotEmpty) {
                _buildQueue(audio, recState.similar);
              }
            },
            error: (message) => MessageHelper.showError(context, message),
          );
        },
        builder: (context, state) {
          return BlocListener<RecommendationBloc, RecommendationState>(
            listener: (context, recState) {
              if (recState.similar.isNotEmpty) {
                final playerState = context.read<PlayerBloc>().state;
                playerState.whenOrNull(loaded: (audio) {
                  _buildQueue(audio, recState.similar);
                });
              }
            },
            child: _buildBody(context, state),
          );
        },
      ),
    );
  }

  Widget _buildBody(BuildContext context, PlayerState state) {
    return ValueListenableBuilder<int>(
      valueListenable: _audioManager.queueIndexNotifier,
      builder: (context, queueIndex, _) {
        final currentAudio = _audioManager.currentAudio;
        final dominantColor = currentAudio != null
            ? _parseColor(currentAudio.dominantColor)
            : state.whenOrNull(loaded: (audio) => _parseColor(audio.dominantColor));

        return Scaffold(
          body: AnimatedContainer(
            duration: const Duration(milliseconds: 400),
            curve: Curves.easeOut,
            child: PlayerBackground(
              dominantColor: dominantColor,
              child: state.when(
                initial: () => _buildShimmer(),
                loading: () => _buildShimmer(),
                loaded: (audio) => _buildPlayerContent(context, audio),
                error: (_) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppDims.w24),
                  child: Column(
                    children: [
                      SizedBox(height: AppDims.h10),
                      PlayerHeader(onBack: () => context.pop()),
                      const Spacer(),
                      const EmptyStateCard(message: AppStrings.audioNotFound, icon: Icons.music_off_rounded),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildPlayerContent(BuildContext context, AudioEntity initialAudio) {
    final queue = _audioManager.queue;
    final currentAudio = _audioManager.currentAudio ?? initialAudio;

    return Column(
      children: [
        SizedBox(height: AppDims.h10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppDims.w24),
          child: PlayerHeader(
            onBack: () => context.pop(),
            onMenu: () => PlayerDialogHelper.showQueueBottomSheet(
              context,
              currentAudioTitle: currentAudio.title,
              queue: queue.length > 1
                  ? queue.sublist(_audioManager.queueIndexNotifier.value + 1)
                  : [],
            ),
          ),
        ),
        SizedBox(height: AppDims.h24),
        SizedBox(
          height: AppDims.w340,
          child: queue.isNotEmpty
              ? PageView.builder(
                  controller: _pageController,
                  itemCount: queue.length,
                  onPageChanged: (index) {
                    if (!_isPageAnimating) {
                      _audioManager.playAt(index);
                    }
                  },
                  itemBuilder: (_, index) => Padding(
                    padding: EdgeInsets.symmetric(horizontal: AppDims.w24),
                    child: PlayerDisk(imageUrl: queue[index].thumbnail),
                  ),
                )
              : Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppDims.w24),
                  child: PlayerDisk(imageUrl: currentAudio.thumbnail),
                ),
        ),
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
        PlayerControls(
          player: _audioManager.player,
          hasNext: _audioManager.hasNext,
          hasPrevious: _audioManager.hasPrevious,
          onNext: () => _audioManager.skipNext(),
          onPrevious: () => _audioManager.skipPrevious(),
        ),
        SizedBox(height: AppDims.h30),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppDims.w24),
          child: PlayerBottomActions(
            isLiked: _isLiked,
            onLikeTap: () {
              context.read<LikeBloc>().add(LikeEvent.toggle(audioId: currentAudio.id));
              setState(() => _isLiked = !_isLiked);
            },
            onQueueTap: () => PlayerDialogHelper.showQueueBottomSheet(
              context,
              currentAudioTitle: currentAudio.title,
              queue: queue.length > 1
                  ? queue.sublist(_audioManager.queueIndexNotifier.value + 1)
                  : [],
            ),
          ),
        ),
        SizedBox(height: AppDims.h20),
      ],
    );
  }
}

