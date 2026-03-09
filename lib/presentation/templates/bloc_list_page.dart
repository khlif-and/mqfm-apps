import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/presentation/atoms/common/shimmer_list.dart';
import 'package:mqfm_apps/presentation/molecules/common/custom_app_bar.dart';
import 'package:mqfm_apps/presentation/molecules/common/empty_state_card.dart';

class BlocListPage<B extends BlocBase<S>, S> extends StatelessWidget {
  final String title;
  final String emptyMessage;
  final IconData emptyIcon;
  final bool Function(S state) isLoading;
  final bool Function(S state) isError;
  final String Function(S state)? errorMessage;
  final Widget Function(BuildContext context, S state) buildContent;
  final VoidCallback? onRefresh;
  final Widget? floatingActionButton;
  final List<Widget>? actions;
  final int shimmerCount;
  final bool hasTrailingShimmer;

  const BlocListPage({
    super.key,
    required this.title,
    required this.isLoading,
    required this.isError,
    required this.buildContent,
    this.emptyMessage = 'Belum ada data',
    this.emptyIcon = Icons.inbox_rounded,
    this.errorMessage,
    this.onRefresh,
    this.floatingActionButton,
    this.actions,
    this.shimmerCount = 6,
    this.hasTrailingShimmer = false,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: CustomAppBar(title: title, backgroundColor: AppColors.background),
      floatingActionButton: floatingActionButton,
      body: BlocBuilder<B, S>(
        builder: (context, state) {
          if (isLoading(state)) {
            return ShimmerList(
              itemCount: shimmerCount,
              hasTrailing: hasTrailingShimmer,
            );
          }

          if (isError(state)) {
            return Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: AppDims.w24),
                child: EmptyStateCard(
                  icon: Icons.error_outline,
                  message: errorMessage?.call(state) ?? 'Terjadi kesalahan',
                ),
              ),
            );
          }

          if (onRefresh != null) {
            return RefreshIndicator(
              onRefresh: () async => onRefresh!(),
              child: buildContent(context, state),
            );
          }

          return buildContent(context, state);
        },
      ),
    );
  }
}
