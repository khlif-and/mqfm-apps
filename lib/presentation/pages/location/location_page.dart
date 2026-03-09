import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mqfm_apps/core/di/injection.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/core/utils/helpers/message_helper.dart';
import 'package:mqfm_apps/features/location/applications/location_bloc/location_bloc.dart';
import 'package:mqfm_apps/features/location/applications/location_bloc/location_event.dart';
import 'package:mqfm_apps/features/location/applications/location_bloc/location_state.dart';
import 'package:mqfm_apps/presentation/molecules/common/custom_app_bar.dart';
import 'package:mqfm_apps/presentation/molecules/common/empty_state_card.dart';
import 'package:shimmer/shimmer.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<LocationBloc>()
        ..add(const LocationEvent.fetch()),
      child: const _LocationView(),
    );
  }
}

class _LocationView extends StatelessWidget {
  const _LocationView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: CustomAppBar(
        title: 'Lokasi Saya',
        backgroundColor: AppColors.background,
      ),
      body: BlocConsumer<LocationBloc, LocationState>(
        listener: (context, state) {
          state.whenOrNull(
            updated: (message) {
              MessageHelper.showSuccess(context, message);
              context.read<LocationBloc>().add(
                const LocationEvent.fetch(),
              );
            },
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => _buildShimmer(),
            loaded: (location) => Padding(
              padding: EdgeInsets.all(AppDims.r16),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(AppDims.r16),
                    decoration: BoxDecoration(
                      color: AppColors.surfaceCard,
                      borderRadius: BorderRadius.circular(AppDims.r12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: AppColors.primary,
                              size: AppDims.sp22,
                            ),
                            SizedBox(width: AppDims.w8),
                            Text(
                              location.city.isNotEmpty
                                  ? location.city
                                  : 'Lokasi belum diatur',
                              style: TextStyle(
                                color: AppColors.textWhite,
                                fontSize: AppDims.sp16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: AppDims.h12),
                        Text(
                          'Lat: ${location.latitude.toStringAsFixed(4)}',
                          style: TextStyle(
                            color: AppColors.textSecondary,
                            fontSize: AppDims.sp13,
                          ),
                        ),
                        SizedBox(height: AppDims.h4),
                        Text(
                          'Lng: ${location.longitude.toStringAsFixed(4)}',
                          style: TextStyle(
                            color: AppColors.textSecondary,
                            fontSize: AppDims.sp13,
                          ),
                        ),
                        if (location.updatedAt.isNotEmpty) ...[
                          SizedBox(height: AppDims.h8),
                          Text(
                            'Diperbarui: ${location.updatedAt}',
                            style: TextStyle(
                              color: AppColors.textSecondary,
                              fontSize: AppDims.sp11,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                ],
              ),
            ),
            error: (message) => Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: AppDims.w24),
                child: EmptyStateCard(
                  icon: Icons.error_outline,
                  message: message,
                ),
              ),
            ),
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }

  Widget _buildShimmer() {
    return Shimmer.fromColors(
      baseColor: AppColors.shimmerBaseDark,
      highlightColor: AppColors.shimmerBase,
      child: Padding(
        padding: EdgeInsets.all(AppDims.r16),
        child: Container(
          height: AppDims.h180,
          decoration: BoxDecoration(
            color: AppColors.onPrimary,
            borderRadius: BorderRadius.circular(AppDims.r12),
          ),
        ),
      ),
    );
  }
}
