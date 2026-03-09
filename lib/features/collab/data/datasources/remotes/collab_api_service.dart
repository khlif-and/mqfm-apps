import 'package:dio/dio.dart';
import 'package:mqfm_apps/core/models/base_response.dart';
import 'package:mqfm_apps/features/collab/data/models/dto/collab_dto.dart';
import 'package:mqfm_apps/features/collab/data/models/request/collab_request.dart';
import 'package:retrofit/retrofit.dart';

part 'collab_api_service.g.dart';

@RestApi()
abstract class CollabRemoteDatasource {
  factory CollabRemoteDatasource(Dio dio, {String baseUrl}) =
      _CollabRemoteDatasource;

  @POST('/api/user/collab/collaborators')
  Future<BaseResponse<dynamic>> addCollaborator(
      @Body() AddCollaboratorRequest body);

  @DELETE('/api/user/collab/playlists/{playlistId}/collaborators/{userId}')
  Future<BaseResponse<dynamic>> removeCollaborator(
    @Path('playlistId') int playlistId,
    @Path('userId') int userId,
  );

  @GET('/api/user/collab/playlists/{playlistId}/collaborators')
  Future<BaseResponse<List<CollaboratorDto>>> getCollaborators(
      @Path('playlistId') int playlistId);

  @POST('/api/user/collab/contribute')
  Future<BaseResponse<dynamic>> contributeAudio(
      @Body() ContributeAudioRequest body);

  @POST('/api/user/collab/join')
  Future<BaseResponse<dynamic>> joinCollab(@Body() JoinCollabRequest body);
}
