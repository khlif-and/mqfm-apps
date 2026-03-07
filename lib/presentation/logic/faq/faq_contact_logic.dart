import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher.dart';

class FaqContactLogic {
  static Future<void> launchEmail() async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'bantuan@mqfmnetwork.com',
      query: 'subject=Bantuan%20Aplikasi%20MQFM',
    );
    if (!await launchUrl(emailLaunchUri)) {
      debugPrint('Could not launch email');
    }
  }

  static Future<void> launchWhatsApp() async {
    const String phone = '+6281234567890';
    const String message = 'Halo, saya butuh bantuan terkait aplikasi MQFM...';

    final Uri waLaunchUri = Uri.parse(
      'https://wa.me/$phone?text=${Uri.encodeComponent(message)}',
    );

    if (await canLaunchUrl(waLaunchUri)) {
      await launchUrl(waLaunchUri, mode: LaunchMode.externalApplication);
    } else {
      debugPrint('Could not launch WhatsApp');
    }
  }
}
