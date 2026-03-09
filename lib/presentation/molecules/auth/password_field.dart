import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/core/utils/helpers/validators.dart';
import 'package:mqfm_apps/presentation/atoms/auth/suffix_password_icon.dart';

class CustomPasswordField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;

  const CustomPasswordField({
    super.key,
    required this.controller,
    this.hintText = "Password",
  });

  @override
  State<CustomPasswordField> createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  final ValueNotifier<bool> _obscureTextNotifier = ValueNotifier<bool>(true);

  @override
  void dispose() {
    _obscureTextNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.surfaceDark,
        borderRadius: BorderRadius.circular(AppDims.r8),
      ),
      child: ValueListenableBuilder<bool>(
        valueListenable: _obscureTextNotifier,
        builder: (context, isObscure, child) {
          return TextFormField(
            controller: widget.controller,
            obscureText: isObscure,
            style: const TextStyle(color: AppColors.textWhite),
            cursorColor: AppColors.primary,
            validator: Validators.validatePassword,
            decoration: InputDecoration(
              hintText: widget.hintText,
              hintStyle: TextStyle(
                color: AppColors.textWhite.withValues(alpha: 0.54),
              ),
              prefixIcon: Icon(
                Icons.lock_outline,
                color: AppColors.textWhite.withValues(alpha: 0.7),
              ),
              suffixIcon: SuffixPasswordIcon(
                obscureTextNotifier: _obscureTextNotifier,
              ),
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(
                horizontal: AppDims.w16,
                vertical: AppDims.h14,
              ),
              isDense: true,
              errorStyle: const TextStyle(color: AppColors.error),
            ),
          );
        },
      ),
    );
  }
}
