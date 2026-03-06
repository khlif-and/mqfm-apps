import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_strings.dart';
import 'package:mqfm_apps/features/playlist/presentation/bloc/playlist_bloc/playlist_bloc.dart';
import 'package:mqfm_apps/features/playlist/presentation/bloc/playlist_bloc/playlist_event.dart';
import 'package:mqfm_apps/features/playlist/presentation/bloc/playlist_bloc/playlist_state.dart';
import 'package:mqfm_apps/presentation/atoms/common/app_network_image.dart';

class AddToPlaylistSheet extends StatefulWidget {
  final int audioId;
  final VoidCallback onCreateNewPlaylist;

  const AddToPlaylistSheet({
    super.key,
    required this.audioId,
    required this.onCreateNewPlaylist,
  });

  @override
  State<AddToPlaylistSheet> createState() => _AddToPlaylistSheetState();
}

class _AddToPlaylistSheetState extends State<AddToPlaylistSheet> {
  @override
  void initState() {
    super.initState();
    context.read<PlaylistBloc>().add(const PlaylistEvent.fetch());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppDims.w16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              width: AppDims.w40,
              height: AppDims.h4,
              decoration: BoxDecoration(
                color: AppColors.textMuted,
                borderRadius: BorderRadius.circular(AppDims.r2),
              ),
            ),
          ),
          SizedBox(height: AppDims.h16),
          Text(
            AppStrings.addToPlaylist,
            style: TextStyle(
              color: AppColors.textWhite,
              fontSize: AppDims.sp18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: AppDims.h16),
          ListTile(
            leading: Container(
              width: AppDims.w48,
              height: AppDims.w48,
              decoration: BoxDecoration(
                color: AppColors.shimmerBase,
                borderRadius: BorderRadius.circular(AppDims.r4),
              ),
              child: Icon(Icons.add, color: AppColors.textWhite, size: AppDims.r28),
            ),
            title: Text(
              AppStrings.newPlaylist,
              style: TextStyle(
                color: AppColors.textWhite,
                fontSize: AppDims.sp16,
                fontWeight: FontWeight.w500,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              widget.onCreateNewPlaylist();
            },
          ),
          Divider(color: AppColors.textSecondary),
          Expanded(
            child: BlocBuilder<PlaylistBloc, PlaylistState>(
              builder: (context, state) {
                return state.when(
                  initial: () => const SizedBox.shrink(),
                  loading: () => const Center(child: CircularProgressIndicator(color: AppColors.textWhite)),
                  loaded: (playlists) {
                    if (playlists.isEmpty) {
                      return Center(
                        child: Text(AppStrings.noPlaylist, style: TextStyle(color: AppColors.textSecondary)),
                      );
                    }
                    return ListView.builder(
                      itemCount: playlists.length,
                      itemBuilder: (context, index) {
                        final playlist = playlists[index];
                        return ListTile(
                          leading: ClipRRect(
                            borderRadius: BorderRadius.circular(AppDims.r4),
                            child: AppNetworkImage(
                              url: playlist.imageUrl,
                              width: AppDims.w48,
                              height: AppDims.w48,
                            ),
                          ),
                          title: Text(
                            playlist.name,
                            style: TextStyle(color: AppColors.textWhite, fontSize: AppDims.sp14, fontWeight: FontWeight.w500),
                          ),
                          subtitle: Text(
                            "${playlist.audios.length} ${AppStrings.audioCount}",
                            style: TextStyle(color: AppColors.textSecondary, fontSize: AppDims.sp12),
                          ),
                          onTap: () {
                            Navigator.pop(context);
                            context.read<PlaylistBloc>().add(PlaylistEvent.addAudio(
                              playlistId: playlist.id,
                              audioId: widget.audioId,
                            ));
                          },
                        );
                      },
                    );
                  },
                  detailLoaded: (_) => const SizedBox.shrink(),
                  created: (_) => const SizedBox.shrink(),
                  audioAdded: () => const SizedBox.shrink(),
                  error: (message) => Center(child: Text(message, style: TextStyle(color: AppColors.error))),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

