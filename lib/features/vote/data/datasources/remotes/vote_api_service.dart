import 'package:dio/dio.dart';
import 'package:mqfm_apps/core/models/base_response.dart';
import 'package:mqfm_apps/features/vote/data/models/dto/vote_dto.dart';
import 'package:mqfm_apps/features/vote/data/models/request/vote_request.dart';
import 'package:retrofit/retrofit.dart';

part 'vote_api_service.g.dart';

@RestApi()
abstract class VoteRemoteDatasource {
  factory VoteRemoteDatasource(Dio dio, {String baseUrl}) =
      _VoteRemoteDatasource;

  @POST('/api/user/votes/')
  Future<BaseResponse<dynamic>> castVote(@Body() CastVoteRequest body);

  @DELETE('/api/user/votes/{audioId}')
  Future<BaseResponse<dynamic>> removeVote(@Path('audioId') int audioId);

  @GET('/api/user/votes/')
  Future<BaseResponse<List<VoteDto>>> getMyVotes();

  @GET('/api/votes/ranking/weekly')
  Future<BaseResponse<List<VoteRankingDto>>> getWeeklyRanking();

  @GET('/api/votes/ranking/monthly')
  Future<BaseResponse<List<VoteRankingDto>>> getMonthlyRanking();
}
