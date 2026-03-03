import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mqfm_apps/presentation/logic/profile/edit_profile_logic.dart';
import 'package:mqfm_apps/utils/app_colors.dart';
import 'package:mqfm_apps/model/auth/auth_model.dart';
import 'package:mqfm_apps/presentation/atoms/common/custom_textfield.dart';
import 'package:mqfm_apps/presentation/atoms/common/custom_button.dart';

class EditProfileForm extends StatelessWidget {
  final UserData? user;
  final EditProfileLogic logic;
  final TextEditingController usernameController;
  final TextEditingController emailController;
  final File? selectedImage;
  final VoidCallback onPickImage;
  final VoidCallback onSave;

  const EditProfileForm({
    super.key,
    required this.user,
    required this.logic,
    required this.usernameController,
    required this.emailController,
    required this.selectedImage,
    required this.onPickImage,
    required this.onSave,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
      child: Column(
        children: [
          SizedBox(height: 16.h),
          GestureDetector(
            onTap: onPickImage,
            child: Stack(
              children: [
                CircleAvatar(
                  radius: 50.r,
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
                            color: Colors.white,
                            fontSize: 28.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      : null,
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(6.r),
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      shape: BoxShape.circle,
                      border: Border.all(color: AppColors.background, width: 2),
                    ),
                    child: Icon(
                      Icons.camera_alt_rounded,
                      color: Colors.black,
                      size: 16.r,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 32.h),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Username",
              style: TextStyle(
                color: AppColors.textSecondary,
                fontSize: 13.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(height: 8.h),
          CustomTextField(
            controller: usernameController,
            hintText: "Masukkan username baru",
            style: TextStyle(color: Colors.white, fontSize: 15.sp),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 14.h,
            ),
          ),
          SizedBox(height: 12.h),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Email",
              style: TextStyle(
                color: AppColors.textSecondary,
                fontSize: 13.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(height: 8.h),
          CustomTextField(
            hintText: "Email",
            controller: emailController,
            style: TextStyle(color: Colors.white, fontSize: 15.sp),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 14.h,
            ),
          ),
          SizedBox(height: 40.h),
          CustomButton(
            text: "Simpan",
            isLoading: logic.isLoading,
            onPressed: onSave,
            height: 48.h,
          ),
        ],
      ),
    );
  }
}
