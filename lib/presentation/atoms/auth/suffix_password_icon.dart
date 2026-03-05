import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';

class SuffixPasswordIcon extends StatelessWidget {
  final ValueNotifier<bool> obscureTextNotifier;

  const SuffixPasswordIcon({super.key, required this.obscureTextNotifier});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: obscureTextNotifier,
      builder: (context, isObscure, child) {
        return IconButton(
          icon: Icon(
            isObscure
                ? Icons.visibility_outlined
                : Icons.visibility_off_outlined,
            color: AppColors.textWhite.withOpacity(0.54),
          ),
          onPressed: () {
            obscureTextNotifier.value = !isObscure;
          },
        );
      },
    );
  }
}
