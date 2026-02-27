import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mqfm_apps/model/auth/auth_model.dart';
import 'package:mqfm_apps/presentation/atoms/profile/profile_avatar.dart';
import 'package:mqfm_apps/utils/app_colors.dart';
import 'package:mqfm_apps/utils/manager/user_manager.dart';

class SearchHeader extends StatelessWidget {
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final GlobalKey? profileKey;
  final GlobalKey? searchBarKey;

  const SearchHeader({
    super.key,
    this.controller,
    this.onChanged,
    this.profileKey,
    this.searchBarKey,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ValueListenableBuilder<UserData?>(
                  key: profileKey,
                  valueListenable: UserManager.instance.currentUserNotifier,
                  builder: (context, userData, child) {
                    Color bgColor = AppColors.placeholder;
                    if (userData?.avatarColor != null) {
                      try {
                        String hex = userData!.avatarColor!.replaceFirst(
                          '#',
                          '',
                        );
                        bgColor = Color(int.parse('FF$hex', radix: 16));
                      } catch (_) {}
                    }
                    return ProfileAvatar(
                      size: 32.r,
                      text: userData?.initials ?? "?",
                      backgroundColor: bgColor,
                      textColor: Colors.white,
                    );
                  },
                ),
                SizedBox(width: 12.w),
                Text(
                  'Search',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Icon(Icons.camera_alt_outlined, color: Colors.white, size: 28.r),
          ],
        ),
        SizedBox(height: 20.h),
        Container(
          key: searchBarKey,
          height: 44.h,
          decoration: BoxDecoration(
            color: const Color(0xFF2E2424),
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(color: const Color(0xFF4A4040), width: 1),
          ),
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
            children: [
              Icon(
                Icons.search_rounded,
                color: const Color(0xFF9E8E8E),
                size: 22.sp,
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: TextField(
                  controller: controller,
                  onChanged: onChanged,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Search your podcast',
                    hintStyle: TextStyle(
                      color: const Color(0xFF9E8E8E),
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(bottom: 4.h),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
