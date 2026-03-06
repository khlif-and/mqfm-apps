import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio_entity.dart';
import 'package:mqfm_apps/presentation/atoms/common/empty_state_card.dart';
import 'package:mqfm_apps/core/utils/helpers/preferences_helper.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:shimmer/shimmer.dart';

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
    Future.microtask(_initHistory);
  }

  Future<void> _initHistory() async {
    await PreferencesHelper.getPlayedAudios();
    if (mounted) {
      setState(() {
        _isLoading = false;
      });
    }
  }

  Widget _buildShimmer() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Shimmer.fromColors(
          baseColor: AppColors.shimmerBase,
          highlightColor: AppColors.shimmerHighlight,
          child: Container(
            width: AppDims.w120,
            height: AppDims.h18,
            decoration: BoxDecoration(
              color: AppColors.backgroundBlack,
              borderRadius: BorderRadius.circular(AppDims.r4),
            ),
          ),
        ),
        SizedBox(height: AppDims.h14),
        ...List.generate(3, (_) {
          return Padding(
            padding: EdgeInsets.only(bottom: AppDims.h12),
            child: Shimmer.fromColors(
              baseColor: AppColors.shimmerBase,
              highlightColor: AppColors.shimmerHighlight,
              child: Row(
                children: [
                  Container(
                    width: AppDims.w52,
                    height: AppDims.w52,
                    decoration: BoxDecoration(
                      color: AppColors.backgroundBlack,
                      borderRadius: BorderRadius.circular(AppDims.r6),
                    ),
                  ),
                  SizedBox(width: AppDims.w16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: double.infinity,
                          height: AppDims.h14,
                          decoration: BoxDecoration(
                            color: AppColors.backgroundBlack,
                            borderRadius: BorderRadius.circular(AppDims.r4),
                          ),
                        ),
                        SizedBox(height: AppDims.h8),
                        Container(
                          width: AppDims.w100,
                          height: AppDims.h12,
                          decoration: BoxDecoration(
                            color: AppColors.backgroundBlack,
                            borderRadius: BorderRadius.circular(AppDims.r4),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) return _buildShimmer();

    return ValueListenableBuilder<List<AudioEntity>>(
      valueListenable: PreferencesHelper.historyNotifier,
      builder: (context, historyAudios, child) {
        if (historyAudios.isEmpty) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Quick Pick',
                style: TextStyle(
                  color: AppColors.textWhite,
                  fontSize: AppDims.sp16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: AppDims.h14),
              const EmptyStateCard(
                message: 'Belum ada data saat ini',
                icon: Icons.headphones_rounded,
              ),
            ],
          );
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Quick Pick',
              style: TextStyle(
                color: AppColors.textWhite,
                fontSize: AppDims.sp16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: AppDims.h14),
            ListView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: historyAudios.length,
              itemBuilder: (context, index) {
                final audio = historyAudios[index];
                return _QuickPickTile(audio: audio);
              },
            ),
          ],
        );
      },
    );
  }
}

class _QuickPickTile extends StatelessWidget {
  final AudioEntity audio;

  const _QuickPickTile({required this.audio});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push('/player/${audio.id}');
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: AppDims.h10),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: AppColors.textWhite.withValues(alpha: 0.15),
              width: 0.5,
            ),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: AppDims.w52,
              height: AppDims.w52,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppDims.r6),
                image: DecorationImage(
                  image: (audio.thumbnail.isNotEmpty)
                      ? NetworkImage(audio.thumbnail) as ImageProvider
                      : const AssetImage('assets/images/img_card.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: AppDims.w16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    audio.title,
                    style: TextStyle(
                      color: AppColors.textWhite,
                      fontSize: AppDims.sp15,
                      fontWeight: FontWeight.w600,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: AppDims.h4),
                  Text(
                    audio.description,
                    style: TextStyle(
                      color: const Color(0xFFB3B3B3),
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
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: const Color(0xFFB3B3B3),
                size: AppDims.sp24,
              ),
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
            ),
          ],
        ),
      ),
    );
  }
}
