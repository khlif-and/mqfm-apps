import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mqfm_apps/features/bookmark/domain/entities/bookmark.dart';

part 'bookmark_state.freezed.dart';

@freezed
class BookmarkState with _$BookmarkState {
  const factory BookmarkState.initial() = BookmarkInitial;
  const factory BookmarkState.loading() = BookmarkLoading;
  const factory BookmarkState.loaded(
      {required List<BookmarkEntity> bookmarks}) = BookmarkLoaded;
  const factory BookmarkState.actionSuccess({required String message}) =
      BookmarkActionSuccess;
  const factory BookmarkState.error({required String message}) = BookmarkError;
}
