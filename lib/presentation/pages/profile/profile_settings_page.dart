import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mqfm_apps/controller/auth/auth_controller.dart';
import 'package:mqfm_apps/presentation/molecules/profile/settings_tile.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileSettingsPage extends StatefulWidget {
  const ProfileSettingsPage({super.key});

  @override
  State<ProfileSettingsPage> createState() => _ProfileSettingsPageState();
}

class _ProfileSettingsPageState extends State<ProfileSettingsPage> {
  final _authController = AuthController();
  bool _isLoading = false;

  Future<void> _handleLogout() async {
    setState(() {
      _isLoading = true;
    });

    try {
      final prefs = await SharedPreferences.getInstance();
      String? token = prefs.getString('auth_token');

      if (token != null) {
        await _authController.logout(token);
        await prefs.remove('auth_token');

        if (mounted) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(const SnackBar(content: Text("Berhasil keluar")));
        }
      } else {
        debugPrint("Token tidak ditemukan, logout lokal.");
      }
    } catch (e) {
      debugPrint("Logout error: $e");
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
        context.go('/login-form');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
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
          SettingsTile(
            icon: Icons.account_circle_outlined,
            title: 'Account',
            subtitle: 'Username • Close account',
            onTap: () {},
          ),
          SettingsTile(
            icon: Icons.music_note_outlined,
            title: 'Content and display',
            subtitle: 'Canvas • App language',
            onTap: () {},
          ),
          SettingsTile(
            icon: Icons.volume_up_outlined,
            title: 'Playback',
            subtitle: 'Gapless playback • Autoplay',
            onTap: () {},
          ),
          SettingsTile(
            icon: Icons.lock_outline,
            title: 'Privacy and social',
            subtitle: 'Private session • Public playlists',
            onTap: () {},
          ),
          SettingsTile(
            icon: Icons.notifications_none_outlined,
            title: 'Notifications',
            subtitle: 'Push • Email',
            onTap: () {},
          ),
          SettingsTile(
            icon: Icons.devices_outlined,
            title: 'Apps and devices',
            subtitle: 'Google Maps • Spotify Connect control',
            onTap: () {},
          ),
          SettingsTile(
            icon: Icons.arrow_circle_down_outlined,
            title: 'Data-saving and offline',
            subtitle: 'Data saver mode • Downloads over cellular',
            onTap: () {},
          ),
          SettingsTile(
            icon: Icons.bar_chart_outlined,
            title: 'Media quality',
            subtitle: 'Wi-Fi streaming quality • Audio download quality',
            onTap: () {},
          ),
          SettingsTile(
            icon: Icons.web_asset_outlined,
            title: 'Advertisements',
            subtitle: 'Tailored ads',
            onTap: () {},
          ),
          SettingsTile(
            icon: Icons.info_outline,
            title: 'About and support',
            subtitle: 'Version • Privacy Policy',
            onTap: () {},
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
}
