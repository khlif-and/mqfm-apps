import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mqfm_apps/utils/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mqfm_apps/model/audio/audio_model.dart';
import 'package:mqfm_apps/utils/helpers/preferences_helper.dart';

class MenuGrid extends StatefulWidget {
  final int selectedCategoryId;

  const MenuGrid({super.key, required this.selectedCategoryId});

  @override
  State<MenuGrid> createState() => _MenuGridState();
}

class _MenuGridState extends State<MenuGrid> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _initHistory();
  }

  Future<void> _initHistory() async {
    await PreferencesHelper.getPlayedAudios();
    if (mounted) {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) return const SizedBox();

    return ValueListenableBuilder<List<Audio>>(
      valueListenable: PreferencesHelper.historyNotifier,
      builder: (context, historyAudios, child) {
        if (historyAudios.isEmpty) return const SizedBox();

        return GridView.builder(
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: historyAudios.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 12.h,
            crossAxisSpacing: 12.w,
            childAspectRatio: 2.8,
          ),
          itemBuilder: (context, index) {
            final audio = historyAudios[index];
            return GestureDetector(
              onTap: () {
                context.push('/player/${audio.id}');
              },
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.surfaceCard,
                  borderRadius: BorderRadius.circular(4.r),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 45.w,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColors.placeholder,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(4.r),
                          bottomLeft: Radius.circular(4.r),
                        ),
                        image: DecorationImage(
                          image: (audio.thumbnail.isNotEmpty)
                              ? NetworkImage(audio.thumbnail) as ImageProvider
                              : const AssetImage('assets/images/img_card.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 8.w),
                        child: Text(
                          audio.title,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
