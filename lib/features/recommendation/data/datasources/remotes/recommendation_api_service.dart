import 'package:dio/dio.dart';
import 'package:mqfm_apps/core/models/base_response.dart';
import 'package:mqfm_apps/features/audio/data/models/dto/audio_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'recommendation_api_service.g.dart';

@RestApi()
abstract class RecommendationRemoteDatasource {
  factory RecommendationRemoteDatasource(Dio dio, {String baseUrl}) =
      _RecommendationRemoteDatasource;

  @GET('/api/user/recommendations/onboarding')
  Future<BaseResponse<List<AudioDto>>> getOnboarding();

  @GET('/api/user/recommendations/by-artist')
  Future<BaseResponse<List<AudioDto>>> getByArtist(
      @Query('artist') String artist);

  @GET('/api/user/recommendations/similar/{audioId}')
  Future<BaseResponse<List<AudioDto>>> getSimilar(
      @Path('audioId') int audioId);

  @GET('/api/user/recommendations/popular')
  Future<BaseResponse<List<AudioDto>>> getPopular();

  @GET('/api/user/recommendations/quick-pick')
  Future<BaseResponse<List<AudioDto>>> getQuickPick();

  @GET('/api/user/recommendations/personalized')
  Future<BaseResponse<List<AudioDto>>> getPersonalized();

  @GET('/api/user/recommendations/most-listened')
  Future<BaseResponse<List<AudioDto>>> getMostListened();

  @GET('/api/user/recommendations/location-based')
  Future<BaseResponse<List<AudioDto>>> getLocationBased();

  @GET('/api/user/recommendations/time-based')
  Future<BaseResponse<List<AudioDto>>> getTimeBased();
}
