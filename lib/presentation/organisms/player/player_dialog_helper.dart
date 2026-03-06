import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_strings.dart';
import 'package:mqfm_apps/features/playlist/presentation/bloc/playlist_bloc/playlist_bloc.dart';
import 'package:mqfm_apps/features/playlist/presentation/bloc/playlist_bloc/playlist_event.dart';
import 'package:mqfm_apps/presentation/organisms/player/add_to_playlist_sheet.dart';

class PlayerDialogHelper {
  static void showPlaylistBottomSheet(BuildContext context, int audioId) {
    showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.background,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(AppDims.r16)),
      ),
      builder: (sheetContext) => BlocProvider.value(
        value: context.read<PlaylistBloc>(),
        child: AddToPlaylistSheet(
          audioId: audioId,
          onCreateNewPlaylist: () => showCreatePlaylistDialog(context, audioId),
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
}

