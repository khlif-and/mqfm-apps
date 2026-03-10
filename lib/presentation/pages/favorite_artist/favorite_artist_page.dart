import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mqfm_apps/core/di/injection.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/core/utils/helpers/message_helper.dart';
import 'package:mqfm_apps/features/favorite_artist/applications/favorite_artist_bloc/favorite_artist_bloc.dart';
import 'package:mqfm_apps/features/favorite_artist/applications/favorite_artist_bloc/favorite_artist_event.dart';
import 'package:mqfm_apps/features/favorite_artist/applications/favorite_artist_bloc/favorite_artist_state.dart';
import 'package:mqfm_apps/presentation/atoms/common/shimmer_list.dart';
import 'package:mqfm_apps/presentation/molecules/common/custom_app_bar.dart';
import 'package:mqfm_apps/presentation/molecules/common/empty_state_card.dart';
import 'package:mqfm_apps/presentation/molecules/favorite_artist/artist_tile.dart';

class FavoriteArtistPage extends StatelessWidget {
  const FavoriteArtistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          getIt<FavoriteArtistBloc>()..add(const FavoriteArtistEvent.fetch()),
      child: Builder(
        builder: (context) => Scaffold(
          backgroundColor: AppColors.background,
          appBar: CustomAppBar(
            title: 'Artis Favorit',
            backgroundColor: AppColors.background,
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: AppColors.primary,
            foregroundColor: AppColors.background,
            onPressed: () => _showAddDialog(context),
            child: const Icon(Icons.add),
          ),
          body: BlocConsumer<FavoriteArtistBloc, FavoriteArtistState>(
            listener: (context, state) {
              state.whenOrNull(
                actionSuccess: (message) {
                  MessageHelper.showSuccess(context, message);
                  context.read<FavoriteArtistBloc>().add(
                    const FavoriteArtistEvent.fetch(),
                  );
                },
              );
            },
            builder: (context, state) {
              return state.maybeWhen(
                loading: () => const ShimmerList(itemCount: 6),
                loaded: (artists) {
                  if (artists.isEmpty) {
                    return Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: AppDims.w24),
                        child: const EmptyStateCard(
                          icon: Icons.person_outline,
                          message: 'Belum ada artis favorit',
                        ),
                      ),
                    );
                  }
                  return RefreshIndicator(
                    onRefresh: () async {
                      context.read<FavoriteArtistBloc>().add(
                        const FavoriteArtistEvent.fetch(),
                      );
                    },
                    child: ListView.builder(
                      physics: const AlwaysScrollableScrollPhysics(),
                      cacheExtent: 500,
                      itemCount: artists.length,
                      itemBuilder: (context, index) {
                        final artist = artists[index];
                        return RepaintBoundary(
                          child: ArtistTile(
                            name: artist.artistName,
                            onRemove: () {
                              context.read<FavoriteArtistBloc>().add(
                                FavoriteArtistEvent.remove(id: artist.id),
                              );
                            },
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
        ),
      ),
    );
  }

  void _showAddDialog(BuildContext context) {
    final controller = TextEditingController();
    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        backgroundColor: AppColors.surfaceCard,
        title: Text(
          'Tambah Artis Favorit',
          style: TextStyle(color: AppColors.textWhite, fontSize: AppDims.sp16),
        ),
        content: TextField(
          controller: controller,
          style: TextStyle(color: AppColors.textWhite),
          decoration: InputDecoration(
            hintText: 'Nama artis',
            hintStyle: TextStyle(color: AppColors.textSecondary),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.surfaceHighlight),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.primary),
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: Text(
              'Batal',
              style: TextStyle(color: AppColors.textSecondary),
            ),
          ),
          TextButton(
            onPressed: () {
              final name = controller.text.trim();
              if (name.isNotEmpty) {
                context.read<FavoriteArtistBloc>().add(
                  FavoriteArtistEvent.add(artistName: name),
                );
                Navigator.pop(dialogContext);
              }
            },
            child: Text('Tambah', style: TextStyle(color: AppColors.primary)),
          ),
        ],
      ),
    );
  }
}
