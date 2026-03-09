import 'package:dartz/dartz.dart';
import 'package:mqfm_apps/features/bookmark/domain/entities/bookmark.dart';

abstract class IBookmarkRepository {
  Future<Either<String, BookmarkEntity>> createBookmark(
      int audioId, int positionSeconds, String label);
  Future<Either<String, List<BookmarkEntity>>> getBookmarks();
  Future<Either<String, String>> deleteBookmark(int id);
  Future<Either<String, List<BookmarkEntity>>> getBookmarksByAudio(
      int audioId);
}
