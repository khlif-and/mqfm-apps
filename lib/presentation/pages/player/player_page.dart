import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:just_audio/just_audio.dart';
import 'package:mqfm_apps/controller/audio/audio_controller.dart';
import 'package:mqfm_apps/controller/playlist/playlist_controller.dart';
import 'package:mqfm_apps/model/audio/audio_model.dart';
import 'package:mqfm_apps/utils/manager/audio_player_manager.dart';
import 'package:mqfm_apps/presentation/organisms/player/player_header.dart';
import 'package:mqfm_apps/presentation/organisms/player/player_controls.dart';
import 'package:mqfm_apps/presentation/organisms/player/add_to_playlist_sheet.dart';

class PlayerPage extends StatefulWidget {
  final String audioId;

  const PlayerPage({super.key, required this.audioId});

  @override
  State<PlayerPage> createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
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

  void _showPlaylistBottomSheet() {
    showModalBottomSheet(
      context: context,
      backgroundColor: const Color(0xFF121212),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
      ),
      builder: (context) {
        return AddToPlaylistSheet(
          playlistController: _playlistController,
          onPlaylistSelected: _addAudioToExistingPlaylist,
          onCreateNewPlaylist: _showCreatePlaylistDialog,
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
                if (nameController.text.isNotEmpty) {
                  Navigator.pop(context);
                  await _createNewPlaylist(nameController.text);
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
      final response = await _playlistController.createPlaylist(name: name);
      if (mounted) {
        if (response.status == 201 || response.status == 200) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("Playlist '$name' berhasil dibuat!"),
              backgroundColor: Colors.green,
            ),
          );
          _showPlaylistBottomSheet();
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
          SnackBar(
            content: Text(e.toString().replaceAll("Exception:", "").trim()),
            backgroundColor: Colors.red,
          ),
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
                      const PlayerHeader(),
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
                      PlayerControls(player: _player),
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
