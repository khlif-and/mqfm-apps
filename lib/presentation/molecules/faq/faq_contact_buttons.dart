import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_styles.dart';

class FaqContactButtons extends StatelessWidget {
  final VoidCallback onWhatsAppPressed;
  final VoidCallback onEmailPressed;

  const FaqContactButtons({
    super.key,
    required this.onWhatsAppPressed,
    required this.onEmailPressed,
  });

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
            color: AppColors.textWhite.withValues(alpha: 0.6),
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
                onTap: onWhatsAppPressed,
              ),
            ),
            SizedBox(width: AppDims.w16),
            Expanded(
              child: _buildContactButton(
                icon: Icons.email_outlined,
                title: 'Email',
                color: const Color(0xFFEA4335),
                onTap: onEmailPressed,
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
            color: color.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(AppDims.r16),
            border: Border.all(color: color.withValues(alpha: 0.3), width: 1),
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
