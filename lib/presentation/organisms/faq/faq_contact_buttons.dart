import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_styles.dart';
import 'package:url_launcher/url_launcher.dart';

class FaqContactButtons extends StatelessWidget {
  const FaqContactButtons({super.key});

  Future<void> _launchEmail() async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'bantuan@mqfmnetwork.com',
      query: 'subject=Bantuan%20Aplikasi%20MQFM',
    );
    if (!await launchUrl(emailLaunchUri)) {
      debugPrint('Could not launch email');
    }
  }

  Future<void> _launchWhatsApp() async {
    const String phone = '+6281234567890'; // Replace with real number
    const String message = 'Halo, saya butuh bantuan terkait aplikasi MQFM...';

    final Uri waLaunchUri = Uri.parse(
      'https://wa.me/$phone?text=${Uri.encodeComponent(message)}',
    );

    // Fallback if wa.me protocol not supported in some cases
    if (await canLaunchUrl(waLaunchUri)) {
      await launchUrl(waLaunchUri, mode: LaunchMode.externalApplication);
    } else {
      debugPrint('Could not launch WhatsApp');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Butuh Bantuan Lebih Lanjut?',
          style: AppStyles.titleMedium.copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: AppDims.h8),
        Text(
          'Jangan ragu menghubungi kami apabila Anda punya kendala penggunaan aplikasi.',
          style: AppStyles.bodyMedium.copyWith(
            color: Colors.white.withOpacity(0.6),
          ),
        ),
        SizedBox(height: AppDims.h20),
        Row(
          children: [
            Expanded(
              child: _buildContactButton(
                icon: Icons.chat_bubble_outline_rounded,
                title: 'WhatsApp',
                color: const Color(0xFF25D366),
                onTap: _launchWhatsApp,
              ),
            ),
            SizedBox(width: AppDims.w16),
            Expanded(
              child: _buildContactButton(
                icon: Icons.email_outlined,
                title: 'Email',
                color: const Color(0xFFEA4335),
                onTap: _launchEmail,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildContactButton({
    required IconData icon,
    required String title,
    required Color color,
    required VoidCallback onTap,
  }) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(AppDims.r16),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: AppDims.h16),
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.circular(AppDims.r16),
            border: Border.all(color: color.withOpacity(0.3), width: 1),
          ),
          child: Column(
            children: [
              Icon(icon, color: color, size: AppDims.sp28),
              SizedBox(height: AppDims.h8),
              Text(
                title,
                style: AppStyles.bodyMedium.copyWith(
                  color: color,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
