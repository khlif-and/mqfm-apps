import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/presentation/atoms/common/custom_textfield.dart';
import 'package:mqfm_apps/presentation/molecules/auth/email_field.dart';
import 'package:mqfm_apps/presentation/molecules/auth/password_field.dart';

class RegisterFormSection extends StatelessWidget {
  final TextEditingController usernameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  const RegisterFormSection({
    super.key,
    required this.usernameController,
    required this.emailController,
    required this.passwordController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Username",
          style: TextStyle(
            fontSize: AppDims.sp15,
            fontWeight: FontWeight.w600,
            color: AppColors.textWhite,
          ),
        ),
        SizedBox(height: AppDims.h10),
        CustomTextField(
          controller: usernameController,
          hintText: "Username",
          prefixIcon: const Icon(Icons.person_outline, color: AppColors.textWhiteSubdued),
        ),
        SizedBox(height: AppDims.h20),
        Text(
          "Email",
          style: TextStyle(
            fontSize: AppDims.sp15,
            fontWeight: FontWeight.w600,
            color: AppColors.textWhite,
          ),
        ),
        SizedBox(height: AppDims.h10),
        CustomEmailField(controller: emailController),
        SizedBox(height: AppDims.h20),
        Text(
          "Password",
          style: TextStyle(
            fontSize: AppDims.sp15,
            fontWeight: FontWeight.w600,
            color: AppColors.textWhite,
          ),
        ),
        SizedBox(height: AppDims.h10),
        CustomPasswordField(controller: passwordController),
        SizedBox(height: AppDims.h8),
        Text(
          "semua data akun anda akan kami konfirmasi.",
          style: TextStyle(
            color: AppColors.textSecondary,
            fontSize: AppDims.sp10,
          ),
        ),
      ],
    );
  }
}
