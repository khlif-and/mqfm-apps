import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_strings.dart';
import 'package:mqfm_apps/features/auth/domain/entities/user.dart';
import 'package:mqfm_apps/presentation/molecules/profile/profile_avatar_builder.dart';

class EditProfileForm extends StatelessWidget {
  final UserEntity? user;
  final bool isLoading;
  final TextEditingController usernameController;
  final TextEditingController emailController;
  final File? selectedImage;
  final VoidCallback onPickImage;
  final VoidCallback onSave;

  const EditProfileForm({
    super.key,
    required this.user,
    required this.isLoading,
    required this.usernameController,
    required this.emailController,
    required this.selectedImage,
    required this.onPickImage,
    required this.onSave,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: AppDims.w24, vertical: AppDims.h24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildAvatarSection(),
          SizedBox(height: AppDims.h32),
          _buildLabel(AppStrings.usernameLabel),
          SizedBox(height: AppDims.h8),
          _buildTextField(
            controller: usernameController,
            hint: AppStrings.usernameHint,
            enabled: !isLoading,
          ),
          SizedBox(height: AppDims.h20),
          _buildLabel(AppStrings.emailLabel),
          SizedBox(height: AppDims.h8),
          _buildTextField(
            controller: emailController,
            hint: AppStrings.emailHint,
            keyboardType: TextInputType.emailAddress,
            enabled: !isLoading,
          ),
          SizedBox(height: AppDims.h40),
          _buildSaveButton(),
        ],
      ),
    );
  }

  Widget _buildAvatarSection() {
    return Center(
      child: Stack(
        children: [
          selectedImage != null
              ? Container(
                  width: 90.r,
                  height: 90.r,
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child: ClipOval(
                    child: Image.file(
                      selectedImage!,
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              : ProfileAvatarBuilder(size: 90, userData: user),
          Positioned(
            bottom: 0,
            right: 0,
            child: GestureDetector(
              onTap: onPickImage,
              child: Container(
                padding: EdgeInsets.all(AppDims.r8),
                decoration: const BoxDecoration(
                  color: AppColors.primary,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.camera_alt,
                  color: AppColors.onPrimary,
                  size: AppDims.r16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLabel(String label) {
    return Text(
      label,
      style: TextStyle(
        fontSize: AppDims.sp15,
        fontWeight: FontWeight.w600,
        color: AppColors.textWhite,
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String hint,
    TextInputType keyboardType = TextInputType.text,
    bool enabled = true,
  }) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      enabled: enabled,
      style: TextStyle(color: AppColors.textWhite, fontSize: AppDims.sp14),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: AppColors.textMuted, fontSize: AppDims.sp14),
        filled: true,
        fillColor: AppColors.surface,
        contentPadding: EdgeInsets.symmetric(
          horizontal: AppDims.w16,
          vertical: AppDims.h14,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppDims.r12),
          borderSide: const BorderSide(color: AppColors.inputBorder),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppDims.r12),
          borderSide: const BorderSide(color: AppColors.inputBorder),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppDims.r12),
          borderSide: const BorderSide(color: AppColors.primary, width: 1.5),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppDims.r12),
          borderSide: BorderSide(color: AppColors.inputBorder.withValues(alpha: 0.4)),
        ),
      ),
    );
  }

  Widget _buildSaveButton() {
    return SizedBox(
      width: double.infinity,
      height: AppDims.h48,
      child: ElevatedButton(
        onPressed: isLoading ? null : onSave,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          disabledBackgroundColor: AppColors.primary.withValues(alpha: 0.5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppDims.r30),
          ),
        ),
        child: isLoading
            ? SizedBox(
                width: AppDims.r20,
                height: AppDims.r20,
                child: const CircularProgressIndicator(
                  color: AppColors.onPrimary,
                  strokeWidth: 2,
                ),
              )
            : Text(
                AppStrings.saveProfile,
                style: TextStyle(
                  color: AppColors.onPrimary,
                  fontSize: AppDims.sp16,
                  fontWeight: FontWeight.bold,
                ),
              ),
      ),
    );
  }
}
