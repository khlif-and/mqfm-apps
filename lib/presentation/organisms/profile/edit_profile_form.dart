import 'dart:io';
import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_strings.dart';
import 'package:mqfm_apps/features/auth/domain/entities/user_entity.dart';
import 'package:mqfm_apps/presentation/atoms/common/custom_textfield.dart';
import 'package:mqfm_apps/presentation/atoms/common/custom_button.dart';

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
      padding: EdgeInsets.symmetric(
        horizontal: AppDims.w24,
        vertical: AppDims.h16,
      ),
      child: Column(
        children: [
          SizedBox(height: AppDims.h16),
          GestureDetector(
            onTap: onPickImage,
            child: Stack(
              children: [
                CircleAvatar(
                  radius: AppDims.r50,
                  backgroundColor: AppColors.surface,
                  backgroundImage: selectedImage != null
                      ? FileImage(selectedImage!)
                      : (user?.profilePicture != null &&
                            user!.profilePicture!.isNotEmpty)
                      ? NetworkImage(user!.profilePicture!) as ImageProvider
                      : null,
                  child:
                      selectedImage == null &&
                          (user?.profilePicture == null ||
                              user!.profilePicture!.isEmpty)
                      ? Text(
                          user?.initials ?? "?",
                          style: TextStyle(
                            color: AppColors.textWhite,
                            fontSize: AppDims.sp28,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      : null,
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(AppDims.r6),
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      shape: BoxShape.circle,
                      border: Border.all(color: AppColors.background, width: 2),
                    ),
                    child: Icon(
                      Icons.camera_alt_rounded,
                      color: AppColors.backgroundBlack,
                      size: AppDims.r16,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: AppDims.h32),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              AppStrings.usernameLabel,
              style: TextStyle(
                color: AppColors.textSecondary,
                fontSize: AppDims.sp13,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(height: AppDims.h8),
          CustomTextField(
            controller: usernameController,
            hintText: AppStrings.usernameHint,
            style: TextStyle(
              color: AppColors.textWhite,
              fontSize: AppDims.sp15,
            ),
            contentPadding: EdgeInsets.symmetric(
              horizontal: AppDims.w16,
              vertical: AppDims.h14,
            ),
          ),
          SizedBox(height: AppDims.h12),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              AppStrings.emailLabel,
              style: TextStyle(
                color: AppColors.textSecondary,
                fontSize: AppDims.sp13,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(height: AppDims.h8),
          CustomTextField(
            hintText: AppStrings.emailLabel,
            controller: emailController,
            style: TextStyle(
              color: AppColors.textWhite,
              fontSize: AppDims.sp15,
            ),
            contentPadding: EdgeInsets.symmetric(
              horizontal: AppDims.w16,
              vertical: AppDims.h14,
            ),
          ),
          SizedBox(height: AppDims.h40),
          CustomButton(
            text: AppStrings.saveProfile,
            isLoading: isLoading,
            onPressed: onSave,
            height: AppDims.h48,
          ),
        ],
      ),
    );
  }
}

