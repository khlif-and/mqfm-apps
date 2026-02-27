import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mqfm_apps/presentation/atoms/common/empty_state_card.dart';
import 'package:mqfm_apps/presentation/atoms/player/player_background.dart';
import 'package:mqfm_apps/presentation/logic/player/player_logic.dart';
import 'package:mqfm_apps/presentation/molecules/player/player_bottom_actions.dart';
import 'package:mqfm_apps/presentation/organisms/player/player_controls.dart';
import 'package:mqfm_apps/presentation/organisms/player/player_dialog_helper.dart';
import 'package:mqfm_apps/presentation/organisms/player/player_disk.dart';
import 'package:mqfm_apps/presentation/organisms/player/player_header.dart';
import 'package:mqfm_apps/presentation/organisms/player/player_track_info.dart';
import 'package:mqfm_apps/utils/helpers/message_helper.dart';
import 'package:shimmer/shimmer.dart';

class PlayerPage extends StatefulWidget {
  final String audioId;

  const PlayerPage({super.key, required this.audioId});

  @override
  State<PlayerPage> createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
  final PlayerLogic logic = PlayerLogic();

  @override
  void initState() {
    super.initState();
    logic.fetchDetailAudio(widget.audioId);
    logic.addListener(_onLogicChange);
  }

  void _onLogicChange() {
    if (mounted) {
      if (logic.errorMessage != null) {
        MessageHelper.showError(context, logic.errorMessage!);
      }
      if (logic.successMessage != null) {
        MessageHelper.showSuccess(context, logic.successMessage!);
      }
    }
  }

  @override
  void dispose() {
    logic.removeListener(_onLogicChange);
    logic.dispose();
    super.dispose();
  }

  Widget _buildShimmer() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 10.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Shimmer.fromColors(
                baseColor: Colors.grey[800]!,
                highlightColor: Colors.grey[600]!,
                child: Container(
                  width: 32.w,
                  height: 32.w,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Shimmer.fromColors(
                baseColor: Colors.grey[800]!,
                highlightColor: Colors.grey[600]!,
                child: Container(
                  width: 100.w,
                  height: 14.h,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                ),
              ),
              Shimmer.fromColors(
                baseColor: Colors.grey[800]!,
                highlightColor: Colors.grey[600]!,
                child: Container(
                  width: 32.w,
                  height: 32.w,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
          const Spacer(),
          Shimmer.fromColors(
            baseColor: Colors.grey[800]!,
            highlightColor: Colors.grey[600]!,
            child: Container(
              width: 280.w,
              height: 280.w,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(16.r),
              ),
            ),
          ),
          const Spacer(),
          Shimmer.fromColors(
            baseColor: Colors.grey[800]!,
            highlightColor: Colors.grey[600]!,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 200.w,
                  height: 18.h,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                ),
                SizedBox(height: 10.h),
                Container(
                  width: 140.w,
                  height: 14.h,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 24.h),
          Shimmer.fromColors(
            baseColor: Colors.grey[800]!,
            highlightColor: Colors.grey[600]!,
            child: Container(
              width: double.infinity,
              height: 4.h,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(2.r),
              ),
            ),
          ),
          SizedBox(height: 24.h),
          Shimmer.fromColors(
            baseColor: Colors.grey[800]!,
            highlightColor: Colors.grey[600]!,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(5, (_) {
                return Container(
                  width: 40.w,
                  height: 40.w,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                );
              }),
            ),
          ),
          SizedBox(height: 50.h),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PlayerBackground(
        child: ListenableBuilder(
          listenable: logic,
          builder: (context, child) {
            if (logic.isLoading) {
              return _buildShimmer();
            }

            if (logic.audioData == null) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  children: [
                    SizedBox(height: 10.h),
                    const PlayerHeader(),
                    const Spacer(),
                    const EmptyStateCard(
                      message: 'Audio tidak ditemukan',
                      icon: Icons.music_off_rounded,
                    ),
                    const Spacer(),
                  ],
                ),
              );
            }

            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10.h),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: const PlayerHeader(),
                  ),
                  const Spacer(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: PlayerDisk(imageUrl: logic.audioData!.thumbnail),
                  ),
                  const Spacer(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: PlayerTrackInfo(
                      title: logic.audioData!.title,
                      description: logic.audioData!.description,
                      onAddToPlaylist: () =>
                          PlayerDialogHelper.showPlaylistBottomSheet(
                            context,
                            logic,
                          ),
                    ),
                  ),
                  SizedBox(height: 24.h),
                  PlayerControls(player: logic.player),
                  SizedBox(height: 30.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: const PlayerBottomActions(),
                  ),
                  SizedBox(height: 20.h),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
