import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/core/utils/helpers/geolocator_helper.dart';
import 'package:mqfm_apps/features/location/applications/location_bloc/location_bloc.dart';
import 'package:mqfm_apps/features/location/applications/location_bloc/location_event.dart';
import 'package:mqfm_apps/features/location/applications/location_bloc/location_state.dart';
import 'package:mqfm_apps/presentation/atoms/common/section_header.dart';
import 'package:mqfm_apps/presentation/atoms/common/shimmer_box.dart';

class LocationSection extends StatelessWidget {
  final VoidCallback? onSeeAll;

  const LocationSection({super.key, this.onSeeAll});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocationBloc, LocationState>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => _buildShimmer(),
          loaded: (location) => location.city.isEmpty
              ? _buildDetectButton(context)
              : _buildContent(location.city),
          error: (_) => _buildDetectButton(context),
          orElse: () => _buildDetectButton(context),
        );
      },
    );
  }

  Widget _buildShimmer() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDims.w16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShimmerBox(width: AppDims.w200, height: AppDims.h20),
          SizedBox(height: AppDims.h12),
          ShimmerBox(
            width: double.infinity,
            height: AppDims.h100,
            borderRadius: AppDims.r12,
          ),
        ],
      ),
    );
  }

  Widget _buildDetectButton(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeader(title: 'Info Kajian di sekitar Kamu'),
        SizedBox(height: AppDims.h8),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppDims.w16),
          child: GestureDetector(
            onTap: () async {
              await GeolocatorHelper.getCurrentPosition();
              if (!context.mounted) return;
              context.read<LocationBloc>().add(const LocationEvent.detectGps());
            },
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: AppDims.h20),
              decoration: BoxDecoration(
                color: AppColors.surfaceCard,
                borderRadius: BorderRadius.circular(AppDims.r12),
              ),
              child: Column(
                children: [
                  Icon(
                    Icons.location_searching,
                    color: AppColors.primary,
                    size: AppDims.sp32,
                  ),
                  SizedBox(height: AppDims.h8),
                  Text(
                    'Deteksi Lokasi Saya',
                    style: TextStyle(
                      color: AppColors.primary,
                      fontSize: AppDims.sp14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: AppDims.h4),
                  Text(
                    'Ketuk untuk mengizinkan akses lokasi',
                    style: TextStyle(
                      color: AppColors.textSecondary,
                      fontSize: AppDims.sp11,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildContent(String city) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeader(title: 'Info Kajian di sekitar Kamu', onSeeAll: onSeeAll),
        SizedBox(height: AppDims.h8),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppDims.w16),
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(AppDims.w16),
            decoration: BoxDecoration(
              color: AppColors.surfaceCard,
              borderRadius: BorderRadius.circular(AppDims.r12),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: AppColors.error,
                  size: AppDims.sp24,
                ),
                SizedBox(width: AppDims.w12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lokasi kamu',
                        style: TextStyle(
                          color: AppColors.textSecondary,
                          fontSize: AppDims.sp11,
                        ),
                      ),
                      SizedBox(height: AppDims.h4),
                      Text(
                        city,
                        style: TextStyle(
                          color: AppColors.textWhite,
                          fontSize: AppDims.sp14,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.chevron_right,
                  color: AppColors.textSecondary,
                  size: AppDims.sp24,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
