import 'package:flutter/material.dart';

class ProfileSettings extends StatelessWidget {
  const ProfileSettings({super.key});

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
          _buildSettingItem(
            Icons.account_circle_outlined,
            'Account',
            'Username • Close account',
          ),
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
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  elevation: 0,
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                child: const Text(
                  'Log out',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
