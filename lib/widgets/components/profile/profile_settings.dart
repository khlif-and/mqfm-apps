import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mqfm_apps/controller/auth/auth_controller.dart';
import 'package:shared_preferences/shared_preferences.dart'; // [1] Tambahkan Import

class ProfileSettings extends StatefulWidget {
  const ProfileSettings({super.key});

  @override
  State<ProfileSettings> createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
  final _authController = AuthController();
  bool _isLoading = false;

  Future<void> _handleLogout() async {
    setState(() {
      _isLoading = true;
    });

    try {
      // [2] Ambil token asli dari SharedPreferences
      final prefs = await SharedPreferences.getInstance();
      String? token = prefs.getString('auth_token');

      if (token != null) {
        // Kirim token asli ke server
        await _authController.logout(token);

        // [3] Hapus token dari HP setelah logout berhasil
        await prefs.remove('auth_token');

        if (mounted) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(const SnackBar(content: Text("Berhasil keluar")));
        }
      } else {
        // Jika tidak ada token (misal session habis), paksa logout lokal saja
        debugPrint("Token tidak ditemukan, logout lokal.");
      }
    } catch (e) {
      debugPrint("Logout error: $e");
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
        // Pindah ke halaman login
        context.go('/login-form');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    // ... (UI Widget sama seperti sebelumnya, copy dari kode sebelumnya)
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: const Color(0xFF121212),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        title: const Text(
          'Settings',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 8),
        children: [
          _buildSettingItem(
            Icons.account_circle_outlined,
            'Account',
            'Username • Close account',
          ),
          // ... (Item list lainnya sama) ...
          _buildSettingItem(
            Icons.music_note_outlined,
            'Content and display',
            'Canvas • App language',
          ),
          _buildSettingItem(
            Icons.volume_up_outlined,
            'Playback',
            'Gapless playback • Autoplay',
          ),
          _buildSettingItem(
            Icons.lock_outline,
            'Privacy and social',
            'Private session • Public playlists',
          ),
          _buildSettingItem(
            Icons.notifications_none_outlined,
            'Notifications',
            'Push • Email',
          ),
          _buildSettingItem(
            Icons.devices_outlined,
            'Apps and devices',
            'Google Maps • Spotify Connect control',
          ),
          _buildSettingItem(
            Icons.arrow_circle_down_outlined,
            'Data-saving and offline',
            'Data saver mode • Downloads over cellular',
          ),
          _buildSettingItem(
            Icons.bar_chart_outlined,
            'Media quality',
            'Wi-Fi streaming quality • Audio download quality',
          ),
          _buildSettingItem(
            Icons.web_asset_outlined,
            'Advertisements',
            'Tailored ads',
          ),
          _buildSettingItem(
            Icons.info_outline,
            'About and support',
            'Version • Privacy Policy',
          ),
          const SizedBox(height: 32),
          Center(
            child: SizedBox(
              height: 48,
              child: ElevatedButton(
                onPressed: _isLoading ? null : _handleLogout,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  elevation: 0,
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                child: _isLoading
                    ? const SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(
                          color: Colors.black,
                          strokeWidth: 2,
                        ),
                      )
                    : const Text(
                        'Log out',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
              ),
            ),
          ),
          const SizedBox(height: 48),
        ],
      ),
    );
  }

  Widget _buildSettingItem(IconData icon, String title, String subtitle) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
      leading: Icon(icon, color: Colors.white, size: 28),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 4),
        child: Text(
          subtitle,
          style: TextStyle(color: Colors.grey[400], fontSize: 12),
        ),
      ),
      onTap: () {},
    );
  }
}
