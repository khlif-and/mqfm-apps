import 'package:flutter/material.dart';
import 'package:mqfm_apps/features/auth/domain/entities/user_entity.dart';
import 'package:mqfm_apps/presentation/atoms/profile/profile_avatar_builder.dart';
import 'package:mqfm_apps/core/manager/user_manager.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/presentation/logic/profile/profile_pic_logic.dart';

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
    return ValueListenableBuilder<UserEntity?>(
      valueListenable: UserManager.instance.currentUserNotifier,
      builder: (context, userData, child) {
        final displayUsername = ProfilePicLogic.getDisplayUsername(userData);

        return Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ProfileAvatarBuilder(size: 40),
                SizedBox(width: AppDims.w12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        displayUsername,
                        style: TextStyle(
                          color: AppColors.textWhite,
                          fontSize: AppDims.sp18,
                          fontWeight: FontWeight.bold,
                          letterSpacing: -0.5,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: AppDims.h2),
                      Text(
                        'Enjoy your music!',
                        style: TextStyle(
                          color: AppColors.textSecondary,
                          fontSize: AppDims.sp13,
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
                    color: AppColors.textSecondary,
                    size: AppDims.sp26,
                  ),
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                ),
                SizedBox(width: AppDims.w16),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_vert,
                    color: AppColors.textSecondary,
                    size: AppDims.sp26,
                  ),
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                ),
              ],
            ),
            if (_isSearching) ...[
              SizedBox(height: AppDims.h16),
              Container(
                height: AppDims.h44,
                decoration: BoxDecoration(
                  color: AppColors.inputBackground,
                  borderRadius: BorderRadius.circular(AppDims.r10),
                  border: Border.all(color: AppColors.inputBorder, width: 1),
                ),
                padding: EdgeInsets.symmetric(horizontal: AppDims.w16),
                child: Row(
                  children: [
                    Icon(
                      Icons.search_rounded,
                      color: AppColors.textSecondary,
                      size: AppDims.sp22,
                    ),
                    SizedBox(width: AppDims.w12),
                    Expanded(
                      child: TextField(
                        controller: _searchController,
                        autofocus: true,
                        onChanged: widget.onSearchChanged,
                        style: TextStyle(
                          color: AppColors.textWhite,
                          fontSize: AppDims.sp15,
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: InputDecoration(
                          hintText: 'Search playlist...',
                          hintStyle: TextStyle(
                            color: AppColors.textSecondary,
                            fontSize: AppDims.sp15,
                            fontWeight: FontWeight.w400,
                          ),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(bottom: AppDims.h4),
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
