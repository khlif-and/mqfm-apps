import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mqfm_apps/core/routes/app_path_routes.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_strings.dart';
import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';
import 'package:mqfm_apps/features/playlist/applications/playlist_bloc/playlist_bloc.dart';
import 'package:mqfm_apps/features/playlist/applications/playlist_bloc/playlist_event.dart';
import 'package:mqfm_apps/features/playlist/applications/playlist_bloc/playlist_state.dart';
import 'package:mqfm_apps/presentation/organisms/player/add_to_playlist_sheet.dart';
import 'package:mqfm_apps/presentation/organisms/player/queue_bottom_sheet.dart';

class PlayerDialogHelper {
  static void showPlaylistBottomSheet(BuildContext context, int audioId) {
    final bloc = context.read<PlaylistBloc>();
    bloc.add(const PlaylistEvent.fetch());

    showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.background,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(AppDims.r16)),
      ),
      builder: (sheetContext) => BlocProvider.value(
        value: bloc,
        child: BlocBuilder<PlaylistBloc, PlaylistState>(
          builder: (ctx, state) {
            return AddToPlaylistSheet(
              playlists: state.maybeWhen(
                loaded: (playlists) => playlists,
                orElse: () => [],
              ),
              isLoading: state.maybeWhen(
                loading: () => true,
                initial: () => true,
                orElse: () => false,
              ),
              errorMessage: state.maybeWhen(
                error: (message) => message,
                orElse: () => null,
              ),
              onCreateNewPlaylist: () => showCreatePlaylistDialog(context, audioId),
              onPlaylistSelected: (playlistId) {
                bloc.add(PlaylistEvent.addAudio(
                  playlistId: playlistId,
                  audioId: audioId,
                ));
              },
            );
          },
        ),
      ),
    );
  }

  static void showCreatePlaylistDialog(BuildContext context, int audioId) {
    final TextEditingController nameController = TextEditingController();
    showDialog(
      context: context,
      builder: (dialogContext) => BlocProvider.value(
        value: context.read<PlaylistBloc>(),
        child: AlertDialog(
          backgroundColor: AppColors.surfaceHeader,
          title: Text(AppStrings.createNewPlaylist, style: const TextStyle(color: AppColors.textWhite)),
          content: TextField(
            controller: nameController,
            style: const TextStyle(color: AppColors.textWhite),
            decoration: InputDecoration(
              hintText: AppStrings.playlistNameHint,
              hintStyle: TextStyle(color: AppColors.textSecondary),
              enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: AppColors.textWhite)),
              focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: AppColors.success)),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(dialogContext),
              child: Text(AppStrings.cancel, style: TextStyle(color: AppColors.textSecondary)),
            ),
            TextButton(
              onPressed: () {
                if (nameController.text.isNotEmpty) {
                  context.read<PlaylistBloc>().add(PlaylistEvent.create(name: nameController.text));
                  Navigator.pop(dialogContext);
                  showPlaylistBottomSheet(context, audioId);
                }
              },
              child: Text(AppStrings.create, style: const TextStyle(color: AppColors.success)),
            ),
          ],
        ),
      ),
    );
  }

  static void showQueueBottomSheet(
    BuildContext context, {
    required String currentAudioTitle,
    required List<AudioEntity> queue,
  }) {
    showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.background,
      isScrollControlled: true,
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height * 0.75,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(AppDims.r16)),
      ),
      builder: (_) => QueueBottomSheet(
        currentAudioTitle: currentAudioTitle,
        queue: queue,
        onAudioTap: (audio) {
          context.pushReplacement(AppPathRoutes.playerWithId(audio.id.toString()));
        },
      ),
    );
  }
}

