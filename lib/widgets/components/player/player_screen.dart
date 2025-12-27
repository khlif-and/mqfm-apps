import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:just_audio/just_audio.dart';
import 'package:mqfm_apps/controller/audio/audio_controller.dart';
import 'package:mqfm_apps/controller/playlist/playlist_controller.dart';
import 'package:mqfm_apps/model/audio/audio_model.dart';
import 'package:mqfm_apps/model/playlist/playlist_model.dart';
import 'package:mqfm_apps/utils/manager/audio_player_manager.dart';

class PlayerScreen extends StatefulWidget {
  final String audioId;

  const PlayerScreen({super.key, required this.audioId});

  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  final AudioController _audioController = AudioController();
  final PlaylistController _playlistController = PlaylistController();
  final AudioPlayerManager _audioManager = AudioPlayerManager();

  AudioPlayer get _player => _audioManager.player;

  Audio? _audioData;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _fetchDetailAudio();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> _fetchDetailAudio() async {
    try {
      final id = int.tryParse(widget.audioId) ?? 0;

      final response = await _audioController.getDetailAudio(id);

      if (mounted) {
        if (response.status == 200 && response.data != null) {
          setState(() {
            _audioData = response.data;
            _isLoading = false;
          });

          if (_audioData!.audioUrl.isNotEmpty) {
            _audioManager.currentAudioNotifier.value = _audioData;

            try {
              if (_audioManager.currentAudioId == id) {
                if (!_player.playing) {
                  _player.play();
                }
              } else {
                await _player.stop();
                await _player.setUrl(_audioData!.audioUrl);
                _player.play();

                _audioManager.currentAudioId = id;
              }
            } catch (playerError) {
              if (mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Gagal putar: $playerError")),
                );
              }
            }
          }
        } else {
          setState(() => _isLoading = false);
        }
      }
    } catch (e) {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  String _formatDuration(Duration? duration) {
    if (duration == null) return '--:--';
    final minutes = duration.inMinutes.remainder(60).toString().padLeft(2, '0');
    final seconds = duration.inSeconds.remainder(60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }

  void _showPlaylistBottomSheet() {
    showModalBottomSheet(
      context: context,
      backgroundColor: const Color(0xFF121212),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
      ),
      builder: (context) {
        return Container(
          padding: EdgeInsets.all(16.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  width: 40.w,
                  height: 4.h,
                  decoration: BoxDecoration(
                    color: Colors.grey[600],
                    borderRadius: BorderRadius.circular(2.r),
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              Text(
                "Tambahkan ke Playlist",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.h),
              ListTile(
                leading: Container(
                  width: 48.w,
                  height: 48.w,
                  decoration: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                  child: Icon(Icons.add, color: Colors.white, size: 28.r),
                ),
                title: Text(
                  "Playlist Baru",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                  _showCreatePlaylistDialog();
                },
              ),
              const Divider(color: Colors.grey),
              Expanded(
                child: FutureBuilder<PlaylistListResponse>(
                  future: _playlistController.getAllPlaylists(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(
                        child: CircularProgressIndicator(color: Colors.white),
                      );
                    }
                    if (snapshot.hasError ||
                        snapshot.data?.data == null ||
                        snapshot.data!.data!.isEmpty) {
                      return Center(
                        child: Text(
                          "Belum ada playlist",
                          style: TextStyle(color: Colors.grey[400]),
                        ),
                      );
                    }

                    final playlists = snapshot.data!.data!;
                    return ListView.builder(
                      itemCount: playlists.length,
                      itemBuilder: (context, index) {
                        final playlist = playlists[index];
                        return ListTile(
                          leading: Container(
                            width: 48.w,
                            height: 48.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.r),
                              image: DecorationImage(
                                image: (playlist.imageUrl.isNotEmpty)
                                    ? NetworkImage(playlist.imageUrl)
                                    : const AssetImage(
                                            'assets/images/img_card.jpg',
                                          )
                                          as ImageProvider,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          title: Text(
                            playlist.name,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          subtitle: Text(
                            "${playlist.audios.length} audio",
                            style: TextStyle(
                              color: Colors.grey[400],
                              fontSize: 12.sp,
                            ),
                          ),
                          onTap: () {
                            Navigator.pop(context);
                            _addAudioToExistingPlaylist(
                              playlist.id,
                              playlist.name,
                            );
                          },
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void _showCreatePlaylistDialog() {
    final TextEditingController nameController = TextEditingController();
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: const Color(0xFF242424),
          title: const Text(
            "Buat Playlist Baru",
            style: TextStyle(color: Colors.white),
          ),
          content: TextField(
            controller: nameController,
            style: const TextStyle(color: Colors.white),
            decoration: const InputDecoration(
              hintText: "Nama Playlist",
              hintStyle: TextStyle(color: Colors.grey),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.green),
              ),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Batal", style: TextStyle(color: Colors.grey)),
            ),
            TextButton(
              onPressed: () async {
                if (nameController.text.isNotEmpty && _audioData != null) {
                  Navigator.pop(context);
                  _createNewPlaylist(nameController.text);
                }
              },
              child: const Text("Buat", style: TextStyle(color: Colors.green)),
            ),
          ],
        );
      },
    );
  }

  Future<void> _createNewPlaylist(String name) async {
    try {
      if (_audioData == null) return;

      final response = await _playlistController.createPlaylist(
        name: name,
        audioId: _audioData!.id,
      );

      if (mounted) {
        if (response.status == 201) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("Playlist '$name' berhasil dibuat!"),
              backgroundColor: Colors.green,
            ),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("Gagal: ${response.message}"),
              backgroundColor: Colors.red,
            ),
          );
        }
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Error: $e"), backgroundColor: Colors.red),
        );
      }
    }
  }

  Future<void> _addAudioToExistingPlaylist(
    int playlistId,
    String playlistName,
  ) async {
    try {
      if (_audioData == null) return;

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Menambahkan ke playlist...")),
      );

      final success = await _playlistController.addAudioToPlaylist(
        playlistId: playlistId,
        audioId: _audioData!.id,
      );

      if (mounted) {
        if (success) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("Berhasil ditambahkan ke '$playlistName'"),
              backgroundColor: Colors.green,
            ),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Gagal menambahkan audio"),
              backgroundColor: Colors.red,
            ),
          );
        }
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Gagal: $e"), backgroundColor: Colors.red),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFB94E4E), Color(0xFF682A2A), Color(0xFF1E1C1C)],
          ),
        ),
        child: SafeArea(
          child: _isLoading
              ? const Center(
                  child: CircularProgressIndicator(color: Colors.white),
                )
              : _audioData == null
              ? const Center(
                  child: Text(
                    "Audio tidak ditemukan",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              : Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.w,
                    vertical: 10.h,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () => context.pop(),
                            child: Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.white,
                              size: 30.r,
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                'PLAYING FROM PLAYLIST',
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 10.sp,
                                  letterSpacing: 1.2,
                                ),
                              ),
                              Text(
                                "MQFM Radio",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.sp,
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.more_vert,
                            color: Colors.white,
                            size: 24.r,
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        height: 340.w,
                        width: 340.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          image: DecorationImage(
                            image: (_audioData!.thumbnail.isNotEmpty)
                                ? NetworkImage(_audioData!.thumbnail)
                                      as ImageProvider
                                : const AssetImage(
                                    'assets/images/img_card.jpg',
                                  ),
                            fit: BoxFit.cover,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              blurRadius: 20.r,
                              offset: Offset(0, 10.h),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  _audioData!.title,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                SizedBox(height: 4.h),
                                Text(
                                  _audioData!.description,
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(0.7),
                                    fontSize: 16.sp,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: _showPlaylistBottomSheet,
                            child: Icon(
                              Icons.add_circle_outline,
                              color: Colors.white,
                              size: 28.r,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 24.h),
                      StreamBuilder<Duration>(
                        stream: _player.positionStream,
                        builder: (context, snapshot) {
                          final position = snapshot.data ?? Duration.zero;
                          final duration = _player.duration ?? Duration.zero;

                          double sliderValue = position.inSeconds.toDouble();
                          double maxDuration = duration.inSeconds.toDouble();
                          if (maxDuration <= 0) maxDuration = 1;
                          if (sliderValue > maxDuration)
                            sliderValue = maxDuration;

                          return Column(
                            children: [
                              SliderTheme(
                                data: SliderTheme.of(context).copyWith(
                                  trackHeight: 2.h,
                                  thumbShape: RoundSliderThumbShape(
                                    enabledThumbRadius: 6.r,
                                  ),
                                  overlayShape: RoundSliderOverlayShape(
                                    overlayRadius: 14.r,
                                  ),
                                  activeTrackColor: Colors.white,
                                  inactiveTrackColor: Colors.white.withOpacity(
                                    0.3,
                                  ),
                                  thumbColor: Colors.white,
                                ),
                                child: Slider(
                                  min: 0,
                                  max: maxDuration,
                                  value: sliderValue,
                                  onChanged: (value) {
                                    _player.seek(
                                      Duration(seconds: value.toInt()),
                                    );
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 0,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      _formatDuration(position),
                                      style: TextStyle(
                                        color: Colors.white.withOpacity(0.7),
                                        fontSize: 12.sp,
                                      ),
                                    ),
                                    Text(
                                      _formatDuration(duration),
                                      style: TextStyle(
                                        color: Colors.white.withOpacity(0.7),
                                        fontSize: 12.sp,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.shuffle,
                            color: const Color(0xFF1DB954),
                            size: 26.r,
                          ),
                          Icon(
                            Icons.skip_previous,
                            color: Colors.white,
                            size: 42.r,
                          ),
                          StreamBuilder<PlayerState>(
                            stream: _player.playerStateStream,
                            builder: (context, snapshot) {
                              final playerState = snapshot.data;
                              final processingState =
                                  playerState?.processingState;
                              final playing = playerState?.playing;

                              if (processingState == ProcessingState.loading ||
                                  processingState ==
                                      ProcessingState.buffering) {
                                return Container(
                                  height: 72.r,
                                  width: 72.r,
                                  padding: EdgeInsets.all(20.r),
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                  child: const CircularProgressIndicator(
                                    color: Colors.black,
                                  ),
                                );
                              } else if (playing != true) {
                                return GestureDetector(
                                  onTap: _player.play,
                                  child: Container(
                                    height: 72.r,
                                    width: 72.r,
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(
                                      Icons.play_arrow,
                                      color: Colors.black,
                                      size: 38.r,
                                    ),
                                  ),
                                );
                              } else {
                                return GestureDetector(
                                  onTap: _player.pause,
                                  child: Container(
                                    height: 72.r,
                                    width: 72.r,
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(
                                      Icons.pause,
                                      color: Colors.black,
                                      size: 38.r,
                                    ),
                                  ),
                                );
                              }
                            },
                          ),
                          Icon(
                            Icons.skip_next,
                            color: Colors.white,
                            size: 42.r,
                          ),
                          Icon(
                            Icons.timer_outlined,
                            color: Colors.white,
                            size: 26.r,
                          ),
                        ],
                      ),
                      SizedBox(height: 30.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.speaker_group_outlined,
                            color: Colors.white70,
                            size: 24.r,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.share_outlined,
                                color: Colors.white70,
                                size: 24.r,
                              ),
                              SizedBox(width: 24.w),
                              Icon(
                                Icons.menu,
                                color: Colors.white70,
                                size: 24.r,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 20.h),
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
