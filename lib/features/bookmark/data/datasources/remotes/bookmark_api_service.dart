import 'package:dio/dio.dart';
import 'package:mqfm_apps/core/models/base_response.dart';
import 'package:mqfm_apps/features/bookmark/data/models/dto/bookmark_dto.dart';
import 'package:mqfm_apps/features/bookmark/data/models/request/bookmark_request.dart';
import 'package:retrofit/retrofit.dart';

part 'bookmark_api_service.g.dart';

@RestApi()
abstract class BookmarkRemoteDatasource {
  factory BookmarkRemoteDatasource(Dio dio, {String baseUrl}) =
      _BookmarkRemoteDatasource;

  @POST('/api/user/bookmarks/')
  Future<BaseResponse<BookmarkDto>> createBookmark(
      @Body() CreateBookmarkRequest body);

  @GET('/api/user/bookmarks/')
  Future<BaseResponse<List<BookmarkDto>>> getBookmarks();

  @DELETE('/api/user/bookmarks/{id}')
  Future<BaseResponse<dynamic>> deleteBookmark(@Path('id') int id);

  @GET('/api/user/bookmarks/audio/{audioId}')
  Future<BaseResponse<List<BookmarkDto>>> getBookmarksByAudio(
      @Path('audioId') int audioId);
}
