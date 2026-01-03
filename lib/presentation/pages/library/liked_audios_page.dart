import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:mqfm_apps/controller/like/like_controller.dart';
import 'package:mqfm_apps/model/audio/audio_model.dart';
import 'package:mqfm_apps/presentation/molecules/library/liked_audio_tile.dart';

class LikedAudiosPage extends StatefulWidget {
  const LikedAudiosPage({super.key});

  @override
  State<LikedAudiosPage> createState() => _LikedAudiosPageState();
}

class _LikedAudiosPageState extends State<LikedAudiosPage> {
  final LikeController _controller = LikeController();
  List<Audio> _likedAudios = [];
  bool _isLoading = true;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    _fetchLikedAudios();
  }

  Future<void> _fetchLikedAudios() async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    try {
      final prefs = await SharedPreferences.getInstance();
      final String? token = prefs.getString('auth_token');

      if (token == null) {
        setState(() {
          _errorMessage = "Silakan login terlebih dahulu";
          _isLoading = false;
        });
        return;
      }

      final response = await _controller.getLikedAudios(token);

      if (mounted) {
        if (response.status == 200 && response.data != null) {
          setState(() {
            _likedAudios = response.data!;
            _isLoading = false;
          });
        } else {
          setState(() {
            _errorMessage = response.message;
            _isLoading = false;
          });
        }
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _errorMessage = "Gagal memuat data. Periksa koneksi internet.";
          _isLoading = false;
        });
      }
    }
  }

  Future<void> _unlikeAudio(int index) async {
    final audio = _likedAudios[index];

    setState(() {
      _likedAudios.removeAt(index);
    });

    try {
      final prefs = await SharedPreferences.getInstance();
      final String? token = prefs.getString('auth_token');

      if (token != null) {
        await _controller.unlikeAudio(token, audio.id);
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _likedAudios.insert(index, audio);
        });
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Gagal menghapus dari favorit")),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => context.pop(),
        ),
        title: Text(
          "Kajian Favorit",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator(color: Colors.green))
          : _errorMessage != null
          ? Center(
              child: Text(
                _errorMessage!,
                style: const TextStyle(color: Colors.red),
              ),
            )
          : _likedAudios.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.favorite_border, size: 64.r, color: Colors.grey),
                  SizedBox(height: 16.h),
                  Text(
                    "Belum ada kajian yang disukai",
                    style: TextStyle(color: Colors.grey[400], fontSize: 14.sp),
                  ),
                ],
              ),
            )
          : ListView.builder(
              padding: EdgeInsets.all(16.r),
              itemCount: _likedAudios.length,
              itemBuilder: (context, index) {
                return LikedAudioTile(
                  audio: _likedAudios[index],
                  onUnlike: () => _unlikeAudio(index),
                );
              },
            ),
    );
  }
}
