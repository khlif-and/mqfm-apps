import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mqfm_apps/features/bookmark/data/datasources/remotes/bookmark_api_service.dart';
import 'package:mqfm_apps/features/bookmark/data/models/request/bookmark_request.dart';
import 'package:mqfm_apps/features/bookmark/domain/entities/bookmark.dart';
import 'package:mqfm_apps/features/bookmark/domain/interfaces/i_bookmark_repository.dart';

@LazySingleton(as: IBookmarkRepository)
class BookmarkRepositoryImpl implements IBookmarkRepository {
  final BookmarkRemoteDatasource _datasource;

  BookmarkRepositoryImpl(this._datasource);

  @override
  Future<Either<String, BookmarkEntity>> createBookmark(
      int audioId, int positionSeconds, String label) async {
    try {
      final response = await _datasource.createBookmark(
        CreateBookmarkRequest(
          audioId: audioId,
          positionSeconds: positionSeconds,
          label: label,
        ),
      );
      if (response.status == 200 && response.data != null) {
        return Right(response.data!.toEntity());
      }
      return Left(response.message);
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, List<BookmarkEntity>>> getBookmarks() async {
    try {
      final response = await _datasource.getBookmarks();
      if (response.status == 200 && response.data != null) {
        return Right(response.data!.map((d) => d.toEntity()).toList());
      }
      return Left(response.message);
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, String>> deleteBookmark(int id) async {
    try {
      final response = await _datasource.deleteBookmark(id);
      if (response.status == 200) return Right(response.message);
      return Left(response.message);
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, List<BookmarkEntity>>> getBookmarksByAudio(
      int audioId) async {
    try {
      final response = await _datasource.getBookmarksByAudio(audioId);
      if (response.status == 200 && response.data != null) {
        return Right(response.data!.map((d) => d.toEntity()).toList());
      }
      return Left(response.message);
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }
}
