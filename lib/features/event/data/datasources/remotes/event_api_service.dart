import 'package:dio/dio.dart';
import 'package:mqfm_apps/core/models/base_response.dart';
import 'package:mqfm_apps/features/event/data/models/dto/event_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'event_api_service.g.dart';

@RestApi()
abstract class EventRemoteDatasource {
  factory EventRemoteDatasource(Dio dio, {String baseUrl}) =
      _EventRemoteDatasource;

  @GET('/api/events/upcoming')
  Future<BaseResponse<List<EventDto>>> getUpcomingEvents();

  @GET('/api/events/{id}')
  Future<BaseResponse<EventDto>> getEventById(@Path('id') int id);

  @POST('/api/user/events/{id}/rsvp')
  Future<BaseResponse<dynamic>> rsvpEvent(@Path('id') int id);

  @DELETE('/api/user/events/{id}/rsvp')
  Future<BaseResponse<dynamic>> cancelRsvp(@Path('id') int id);

  @GET('/api/user/events/my-rsvps')
  Future<BaseResponse<List<EventDto>>> getMyRsvps();
}
