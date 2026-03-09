import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mqfm_apps/core/di/injection.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/core/utils/helpers/message_helper.dart';
import 'package:mqfm_apps/features/bookmark/applications/bookmark_bloc/bookmark_bloc.dart';
import 'package:mqfm_apps/features/bookmark/applications/bookmark_bloc/bookmark_event.dart';
import 'package:mqfm_apps/features/bookmark/applications/bookmark_bloc/bookmark_state.dart';
import 'package:mqfm_apps/presentation/atoms/common/shimmer_list.dart';
import 'package:mqfm_apps/presentation/molecules/common/content_tile.dart';
import 'package:mqfm_apps/presentation/molecules/common/custom_app_bar.dart';
import 'package:mqfm_apps/presentation/molecules/common/empty_state_card.dart';

class BookmarkPage extends StatelessWidget {
  const BookmarkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<BookmarkBloc>()
        ..add(const BookmarkEvent.fetch()),
      child: const _BookmarkView(),
    );
  }
}

class _BookmarkView extends StatelessWidget {
  const _BookmarkView();

  String _formatPosition(int seconds) {
    final m = (seconds ~/ 60).toString().padLeft(2, '0');
    final s = (seconds % 60).toString().padLeft(2, '0');
    return '$m:$s';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: const CustomAppBar(
        title: 'Bookmark',
        backgroundColor: AppColors.background,
      ),
      body: BlocConsumer<BookmarkBloc, BookmarkState>(
        listener: (context, state) {
          state.whenOrNull(
            actionSuccess: (message) {
              MessageHelper.showSuccess(context, message);
              context.read<BookmarkBloc>().add(const BookmarkEvent.fetch());
            },
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const ShimmerList(
              itemCount: 6,
              hasTrailing: true,
            ),
            loaded: (bookmarks) {
              if (bookmarks.isEmpty) {
                return Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: AppDims.w24),
                    child: const EmptyStateCard(
                      icon: Icons.bookmark_border_rounded,
                      message: 'Belum ada bookmark.\nTandai posisi audio favorit Anda.',
                    ),
                  ),
                );
              }
              return RefreshIndicator(
                onRefresh: () async {
                  context.read<BookmarkBloc>().add(
                    const BookmarkEvent.fetch(),
                  );
                },
                child: ListView.builder(
                  physics: const AlwaysScrollableScrollPhysics(),
                  cacheExtent: 300,
                  itemCount: bookmarks.length,
                  itemBuilder: (context, index) {
                    final bm = bookmarks[index];
                    return RepaintBoundary(
                      child: ContentTile(
                        title: bm.label.isNotEmpty
                            ? bm.label
                            : 'Bookmark #${bm.id}',
                        subtitle: 'Posisi ${_formatPosition(bm.positionSeconds)}',
                        leadingIcon: Icons.bookmark,
                        trailing: IconButton(
                          onPressed: () {
                            context.read<BookmarkBloc>().add(
                              BookmarkEvent.delete(id: bm.id),
                            );
                          },
                          icon: Icon(
                            Icons.delete_outline,
                            color: AppColors.error,
                            size: AppDims.sp20,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              );
            },
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
}
