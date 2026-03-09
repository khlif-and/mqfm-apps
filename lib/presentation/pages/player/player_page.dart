import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mqfm_apps/core/di/injection.dart';
import 'package:mqfm_apps/core/manager/audio_player_manager.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_strings.dart';
import 'package:mqfm_apps/core/utils/helpers/message_helper.dart';
import 'package:mqfm_apps/core/utils/helpers/preferences_helper.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';
import 'package:mqfm_apps/features/audio/applications/player_bloc/player_bloc.dart';
import 'package:mqfm_apps/features/audio/applications/player_bloc/player_event.dart';
import 'package:mqfm_apps/features/audio/applications/player_bloc/player_state.dart';
import 'package:mqfm_apps/features/like/applications/like_bloc/like_bloc.dart';
import 'package:mqfm_apps/features/playlist/applications/playlist_bloc/playlist_bloc.dart';
import 'package:mqfm_apps/features/recommendation/applications/recommendation_bloc/recommendation_bloc.dart';
import 'package:mqfm_apps/features/recommendation/applications/recommendation_bloc/recommendation_event.dart';
import 'package:mqfm_apps/features/recommendation/applications/recommendation_bloc/recommendation_state.dart';
import 'package:mqfm_apps/presentation/molecules/common/empty_state_card.dart';
import 'package:mqfm_apps/presentation/atoms/player/player_background.dart';
import 'package:mqfm_apps/presentation/atoms/player/player_shimmer.dart';
import 'package:mqfm_apps/presentation/molecules/player/player_header.dart';
import 'package:mqfm_apps/presentation/organisms/player/player_content.dart';

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
    _audioManager.playerErrorNotifier.addListener(_onPlayerError);
    _loadLikeState();
  }

  Future<void> _loadLikeState() async {
    final audioId = int.tryParse(widget.audioId) ?? 0;
    final liked = await PreferencesHelper.isAudioLiked(audioId);
    if (mounted) setState(() => _isLiked = liked);
  }

  @override
  void dispose() {
    _audioManager.queueIndexNotifier.removeListener(_onQueueIndexChanged);
    _audioManager.playerErrorNotifier.removeListener(_onPlayerError);
    _pageController.dispose();
    super.dispose();
  }

  void _onPlayerError() {
    final err = _audioManager.playerErrorNotifier.value;
    if (err != null && mounted) MessageHelper.showError(context, err);
  }

  void _onQueueIndexChanged() {
    if (!mounted) return;
    final idx = _audioManager.queueIndexNotifier.value;
    if (_pageController.hasClients && _pageController.page?.round() != idx) {
      _isPageAnimating = true;
      _pageController
        .animateToPage(idx, duration: const Duration(milliseconds: 300), curve: Curves.easeInOut)
        .then((_) { _isPageAnimating = false; if (mounted) setState(() {}); });
    }
    _updateLikeState();
    setState(() {});
  }

  void _onPageSwiped(int index) {
    if (!_isPageAnimating) {
      _audioManager.playAt(index);
    }
  }

  Future<void> _updateLikeState() async {
    final audio = _audioManager.currentAudio;
    if (audio != null) {
      final liked = await PreferencesHelper.isAudioLiked(audio.id);
      if (mounted) setState(() => _isLiked = liked);
    }
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

  Color? _parseColor(String hex) {
    if (hex.isEmpty) return null;
    try { return Color(int.parse('FF${hex.replaceAll('#', '')}', radix: 16)); }
    catch (_) { return null; }
  }

  @override
  Widget build(BuildContext context) {
    final audioId = int.tryParse(widget.audioId) ?? 0;
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) {
          final bloc = getIt<PlayerBloc>();
          final currentState = bloc.state;
          final alreadyLoaded = currentState is PlayerLoaded && currentState.audio.id == audioId;
          if (!alreadyLoaded) {
            bloc.add(PlayerEvent.loadAudio(audioId: audioId));
          } else {
            Future.microtask(() => _startPlayback(currentState.audio));
          }
          return bloc;
        }),
        BlocProvider(create: (_) => getIt<PlaylistBloc>()),
        BlocProvider(create: (_) => getIt<RecommendationBloc>()..add(RecommendationEvent.fetchSimilar(audioId: audioId))),
        BlocProvider(create: (_) => getIt<LikeBloc>()),
      ],
      child: BlocConsumer<PlayerBloc, PlayerState>(
        listener: (context, state) {
          state.whenOrNull(
            loaded: (audio) {
              final recState = context.read<RecommendationBloc>().state;
              if (recState.similar.isNotEmpty) _buildQueue(audio, recState.similar);
            },
            error: (message) => MessageHelper.showError(context, message),
          );
        },
        builder: (context, state) {
          return BlocListener<RecommendationBloc, RecommendationState>(
            listener: (context, recState) {
              if (recState.similar.isNotEmpty) {
                final playerState = context.read<PlayerBloc>().state;
                playerState.whenOrNull(loaded: (audio) => _buildQueue(audio, recState.similar));
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
      builder: (context, _, _) {
        final currentAudio = _audioManager.currentAudio;
        final dominantColor = currentAudio != null
            ? _parseColor(currentAudio.dominantColor)
            : state.whenOrNull(loaded: (a) => _parseColor(a.dominantColor));
        return Scaffold(
          body: PlayerBackground(
            dominantColor: dominantColor,
            child: state.when(
              initial: () => const PlayerShimmer(),
              loading: () => const PlayerShimmer(),
              loaded: (audio) => PlayerContent(
                initialAudio: audio,
                audioManager: _audioManager,
                pageController: _pageController,
                isLiked: _isLiked,
                onLikeToggle: () => setState(() => _isLiked = !_isLiked),
                onPageSwiped: _onPageSwiped,
              ),
              error: (_) => Padding(
                padding: EdgeInsets.symmetric(horizontal: AppDims.w24),
                child: Column(children: [
                  SizedBox(height: AppDims.h10),
                  PlayerHeader(onBack: () => context.pop()),
                  const Spacer(),
                  const EmptyStateCard(message: AppStrings.audioNotFound, icon: Icons.music_off_rounded),
                  const Spacer(),
                ]),
              ),
            ),
          ),
        );
      },
    );
  }
}
