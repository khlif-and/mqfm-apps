import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mqfm_apps/presentation/molecules/common/custom_app_bar.dart';
import 'package:mqfm_apps/presentation/molecules/common/empty_state_card.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:shimmer/shimmer.dart';

class DownloadsPage extends StatefulWidget {
  const DownloadsPage({super.key});

  @override
  State<DownloadsPage> createState() => _DownloadsPageState();
}

class _DownloadsPageState extends State<DownloadsPage> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _simulateLoading();
  }

  Future<void> _simulateLoading() async {
    await Future.delayed(const Duration(milliseconds: 1500));
    if (mounted) {
      setState(() {
        _isLoading = false;
      });
    }
  }

  Widget _buildShimmerLoading() {
    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: AppDims.w20, vertical: AppDims.h16),
      itemCount: 6,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(bottom: AppDims.h16),
          child: Shimmer.fromColors(
            baseColor: AppColors.shimmerBaseDark,
            highlightColor: AppColors.shimmerBase,
            child: Row(
              children: [
                Container(
                  width: AppDims.r64,
                  height: AppDims.r64,
                  decoration: BoxDecoration(
                    color: AppColors.onPrimary,
                    borderRadius: BorderRadius.circular(AppDims.r8),
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
                  width: AppDims.r32,
                  height: AppDims.r32,
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
      appBar: const CustomAppBar(
        title: 'Daftar Unduhan',
        backgroundColor: AppColors.background,
      ),
      body: Column(
        children: [
          Expanded(
            child: _isLoading
                ? _buildShimmerLoading()
                : Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: AppDims.w24),
                      child: const EmptyStateCard(
                        icon: Icons.cloud_download_outlined,
                        message:
                            'Anda belum memiliki daftar unduhan.\nSimpan kajian favorit untuk didengarkan offline.',
                      ),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
