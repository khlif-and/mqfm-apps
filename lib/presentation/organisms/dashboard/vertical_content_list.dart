import 'dart:math';
import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_strings.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';
import 'package:mqfm_apps/presentation/atoms/common/app_network_image.dart';
import 'package:mqfm_apps/presentation/atoms/common/shimmer_box.dart';

class VerticalContentList extends StatefulWidget {
  final List<AudioEntity> audios;
  final bool isLoading;
  final void Function(int audioId)? onAudioTap;

  const VerticalContentList({
    super.key,
    required this.audios,
    this.isLoading = false,
    this.onAudioTap,
  });

  @override
  State<VerticalContentList> createState() => _VerticalContentListState();
}

class _VerticalContentListState extends State<VerticalContentList> {
  List<AudioEntity> _cachedList = [];
  List<AudioEntity>? _lastAudios;

  List<AudioEntity> get _displayList {
    if (!identical(_lastAudios, widget.audios) || _cachedList.isEmpty) {
      _lastAudios = widget.audios;
      final copy = List<AudioEntity>.from(widget.audios);
      final now = DateTime.now();
      copy.shuffle(Random((now.year * 10000) + (now.month * 100) + now.day));
      _cachedList = copy.take(3).toList();
    }
    return _cachedList;
  }

  @override
  Widget build(BuildContext context) {
    if (widget.isLoading) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(3, (index) => Padding(
          padding: EdgeInsets.only(bottom: AppDims.h12),
          child: Row(
            children: [
              ShimmerBox(width: AppDims.r60, height: AppDims.r60, borderRadius: AppDims.r12),
              SizedBox(width: AppDims.w12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ShimmerBox(width: AppDims.w200, height: AppDims.h14),
                  SizedBox(height: AppDims.h4),
                  ShimmerBox(width: AppDims.w140, height: AppDims.h12),
                ],
              ),
            ],
          ),
        )),
      );
    }

    if (widget.audios.isEmpty) return const SizedBox();

    final finalList = _displayList;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.editorPicks,
          style: TextStyle(
            color: AppColors.textWhite,
            fontSize: AppDims.sp18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: AppDims.h16),
        ListView.separated(
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: finalList.length,
          addAutomaticKeepAlives: false,
          addRepaintBoundaries: false,
          separatorBuilder: (_, _) => SizedBox(height: AppDims.h8),
          itemBuilder: (context, index) {
            final audio = finalList[index];
            return RepaintBoundary(child: GestureDetector(
              onTap: () => widget.onAudioTap?.call(audio.id),
              child: Row(
                children: [
                  AppNetworkImage(
                    url: audio.thumbnail,
                    width: AppDims.r60,
                    height: AppDims.r60,
                    borderRadius: AppDims.r12,
                  ),
                  SizedBox(width: AppDims.w12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          audio.title,
                          style: TextStyle(
                            color: AppColors.textWhite,
                            fontSize: AppDims.sp14,
                            fontWeight: FontWeight.w600,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: AppDims.h4),
                        Text(
                          audio.description,
                          style: TextStyle(color: AppColors.textSecondary, fontSize: AppDims.sp12),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.more_vert, color: AppColors.textWhite, size: AppDims.sp24),
                  ),
                ],
              ),
            ));
          },
        ),
      ],
    );
  }
}

