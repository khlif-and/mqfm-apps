import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mqfm_apps/model/auth/auth_model.dart';
import 'package:mqfm_apps/presentation/atoms/profile/profile_avatar.dart';
import 'package:mqfm_apps/utils/app_colors.dart';
import 'package:mqfm_apps/utils/manager/user_manager.dart';

class LibraryHeader extends StatefulWidget {
  final ValueChanged<String>? onSearchChanged;
  final GlobalKey? searchKey;

  const LibraryHeader({super.key, this.onSearchChanged, this.searchKey});

  @override
  State<LibraryHeader> createState() => _LibraryHeaderState();
}

class _LibraryHeaderState extends State<LibraryHeader> {
  bool _isSearching = false;
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<UserData?>(
      valueListenable: UserManager.instance.currentUserNotifier,
      builder: (context, userData, child) {
        Color bgColor = AppColors.placeholder;
        if (userData?.avatarColor != null) {
          try {
            String hex = userData!.avatarColor!.replaceFirst('#', '');
            bgColor = Color(int.parse('FF$hex', radix: 16));
          } catch (_) {}
        }

        return Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ProfileAvatar(
                  size: 40.r,
                  text: userData?.initials ?? "?",
                  backgroundColor: bgColor,
                  textColor: Colors.white,
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        userData?.username ?? 'User',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                          letterSpacing: -0.5,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 2.h),
                      Text(
                        'Enjoy your music!',
                        style: TextStyle(
                          color: const Color(0xFFB3B3B3),
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w400,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                IconButton(
                  key: widget.searchKey,
                  onPressed: () {
                    setState(() {
                      _isSearching = !_isSearching;
                      if (!_isSearching) {
                        _searchController.clear();
                        widget.onSearchChanged?.call('');
                      }
                    });
                  },
                  icon: Icon(
                    _isSearching ? Icons.close : Icons.search_outlined,
                    color: const Color(0xFFB3B3B3),
                    size: 26.sp,
                  ),
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                ),
                SizedBox(width: 16.w),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_vert,
                    color: const Color(0xFFB3B3B3),
                    size: 26.sp,
                  ),
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                ),
              ],
            ),
            if (_isSearching) ...[
              SizedBox(height: 16.h),
              Container(
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
                        controller: _searchController,
                        autofocus: true,
                        onChanged: widget.onSearchChanged,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: InputDecoration(
                          hintText: 'Search playlist...',
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
          ],
        );
      },
    );
  }
}
