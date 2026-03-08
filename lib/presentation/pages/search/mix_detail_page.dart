import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mqfm_apps/core/routes/app_path_routes.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';
import 'package:mqfm_apps/presentation/atoms/common/app_network_image.dart';

class MixDetailPage extends StatelessWidget {
  final List<AudioEntity> audios;
  const MixDetailPage({super.key, required this.audios});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColors.textWhite),
          onPressed: () => context.pop(),
        ),
        title: Text(
          'Mixed for you',
          style: TextStyle(
            color: AppColors.textWhite,
            fontSize: AppDims.sp18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: audios.isEmpty
          ? Center(
              child: Text(
                'Tidak ada audio',
                style: TextStyle(color: AppColors.textSecondary, fontSize: AppDims.sp14),
              ),
            )
          : ListView.separated(
              padding: EdgeInsets.all(AppDims.w16),
              itemCount: audios.length,
              separatorBuilder: (_, __) => SizedBox(height: AppDims.h8),
              itemBuilder: (context, index) {
                final audio = audios[index];
                return ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: AppNetworkImage(
                    url: audio.thumbnail,
                    width: AppDims.w50,
                    height: AppDims.w50,
                    borderRadius: AppDims.r6,
                  ),
                  title: Text(
                    audio.title,
                    style: TextStyle(
                      color: AppColors.textWhite,
                      fontSize: AppDims.sp14,
                      fontWeight: FontWeight.w500,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  subtitle: Text(
                    audio.artist.isNotEmpty ? audio.artist : audio.description,
                    style: TextStyle(
                      color: AppColors.textSecondary,
                      fontSize: AppDims.sp12,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: Icon(Icons.play_arrow_rounded, color: AppColors.textWhite, size: AppDims.r24),
                  onTap: () => context.push(AppPathRoutes.playerWithId(audio.id.toString())),
                );
              },
            ),
    );
  }
}
