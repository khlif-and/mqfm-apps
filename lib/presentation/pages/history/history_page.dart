import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mqfm_apps/presentation/atoms/common/empty_state_card.dart';
import 'package:mqfm_apps/presentation/logic/history/history_logic.dart';
import 'package:mqfm_apps/presentation/organisms/history/history_audio_list.dart';
import 'package:shimmer/shimmer.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  final HistoryLogic logic = HistoryLogic();

  @override
  void dispose() {
    logic.dispose();
    super.dispose();
  }

  Widget _buildShimmer() {
    return ListView.builder(
      padding: EdgeInsets.all(AppDims.r16),
      itemCount: 6,
      itemBuilder: (context, index) {
        return Shimmer.fromColors(
            baseColor: AppColors.shimmerBase,
            highlightColor: AppColors.shimmerHighlight,
          child: Container(
            margin: EdgeInsets.only(bottom: AppDims.h12),
            child: Row(
              children: [
                Container(
                  width: AppDims.w50,
                  height: AppDims.w50,
                  decoration: BoxDecoration(
                    color: AppColors.onPrimary,
                    borderRadius: BorderRadius.circular(AppDims.r4),
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
                          color: AppColors.onPrimary,
                          borderRadius: BorderRadius.circular(AppDims.r4),
                        ),
                      ),
                      SizedBox(height: AppDims.h8),
                      Container(
                        width: AppDims.w120,
                        height: AppDims.h12,
                        decoration: BoxDecoration(
                          color: AppColors.onPrimary,
                          borderRadius: BorderRadius.circular(AppDims.r4),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: AppDims.w16),
                Container(
                  width: AppDims.w32,
                  height: AppDims.w32,
                  decoration: const BoxDecoration(
                    color: AppColors.onPrimary,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: AppColors.textWhite),
          onPressed: () => context.pop(),
        ),
        title: Text(
          "Riwayat Pemutaran",
          style: TextStyle(
            color: AppColors.textWhite,
            fontSize: AppDims.sp18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListenableBuilder(
        listenable: logic,
        builder: (context, child) {
          if (logic.isLoading) {
            return _buildShimmer();
          }

          if (logic.errorMessage != null) {
            return Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: AppDims.w24),
                child: EmptyStateCard(
                  message: logic.errorMessage!,
                  icon: Icons.wifi_off_rounded,
                ),
              ),
            );
          }

          if (logic.histories.isEmpty) {
            return Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: AppDims.w24),
                child: const EmptyStateCard(
                  message: 'Belum ada riwayat pemutaran',
                  icon: Icons.history_rounded,
                ),
              ),
            );
          }

          return HistoryAudioList(histories: logic.histories);
        },
      ),
    );
  }
}
