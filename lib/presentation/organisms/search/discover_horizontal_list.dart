import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:go_router/go_router.dart';
import 'package:mqfm_apps/core/di/injection.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio_entity.dart';
import 'package:mqfm_apps/features/audio/domain/repositories/i_audio_repository.dart';
import 'package:mqfm_apps/presentation/atoms/common/empty_state_card.dart';
import 'package:shimmer/shimmer.dart';

class DiscoverHorizontalList extends StatefulWidget {
  const DiscoverHorizontalList({super.key});

  @override
  State<DiscoverHorizontalList> createState() => _DiscoverHorizontalListState();
}

class _DiscoverHorizontalListState extends State<DiscoverHorizontalList> {
  final IAudioRepository _audioRepository = getIt<IAudioRepository>();
  List<AudioEntity> _audios = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _fetchAudios();
  }

  Future<void> _fetchAudios() async {
    try {
      final result = await _audioRepository.getAudios();
      if (mounted) {
        result.fold(
          (error) => setState(() => _isLoading = false),
          (audios) => setState(() {
            _audios = audios;
            _isLoading = false;
          }),
        );
      }
    } catch (e) {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Shimmer.fromColors(
            baseColor: Colors.grey[800]!,
            highlightColor: Colors.grey[600]!,
            child: Container(
              width: AppDims.w180,
              height: AppDims.h18,
              decoration: BoxDecoration(
                color: AppColors.backgroundBlack,
                borderRadius: BorderRadius.circular(AppDims.r4),
              ),
            ),
          ),
          SizedBox(height: AppDims.h16),
          ...List.generate(4, (_) {
            return Padding(
              padding: EdgeInsets.only(bottom: AppDims.h12),
              child: Shimmer.fromColors(
                baseColor: Colors.grey[800]!,
                highlightColor: Colors.grey[600]!,
                child: Row(
                  children: [
                    Container(
                      width: AppDims.w52,
                      height: AppDims.w52,
                      decoration: BoxDecoration(
                        color: AppColors.backgroundBlack,
                        borderRadius: BorderRadius.circular(AppDims.r2),
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

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Discover something new',
          style: TextStyle(
            color: AppColors.textWhite,
            fontSize: AppDims.sp16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: AppDims.h16),
        if (_audios.isEmpty)
          const EmptyStateCard(
            message: 'Belum ada data saat ini',
            icon: Icons.explore_off_rounded,
          )
        else
          ListView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: _audios.length,
            itemBuilder: (context, index) {
              return _DiscoverTrackTile(audio: _audios[index]);
            },
          ),
      ],
    );
  }
}

class _DiscoverTrackTile extends StatelessWidget {
  final AudioEntity audio;

  const _DiscoverTrackTile({required this.audio});

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
              color: AppColors.textWhite.withOpacity(0.15),
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
                borderRadius: BorderRadius.circular(AppDims.r2),
                image: DecorationImage(
                  image: (audio.thumbnail.isNotEmpty)
                      ? NetworkImage(audio.thumbnail)
                      : const AssetImage('assets/images/img_card.jpg')
                            as ImageProvider,
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
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: AppColors.textSecondary,
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
