import 'package:dio/dio.dart';
import 'package:mqfm_apps/core/models/base_response.dart';
import 'package:mqfm_apps/features/notification/data/models/dto/notification_dto.dart';
import 'package:mqfm_apps/features/notification/data/models/request/notification_request.dart';
import 'package:retrofit/retrofit.dart';

part 'notification_api_service.g.dart';

@RestApi()
abstract class NotificationRemoteDatasource {
  factory NotificationRemoteDatasource(Dio dio, {String baseUrl}) =
      _NotificationRemoteDatasource;

  @GET('/api/user/notifications/')
  Future<BaseResponse<List<NotificationDto>>> getNotifications();

  @PUT('/api/user/notifications/{id}/read')
  Future<BaseResponse<dynamic>> markAsRead(@Path('id') int id);

  @PUT('/api/user/notifications/read-all')
  Future<BaseResponse<dynamic>> markAllAsRead();

  @GET('/api/user/notifications/unread-count')
  Future<BaseResponse<dynamic>> getUnreadCount();

  @GET('/api/user/notifications/settings')
  Future<BaseResponse<NotificationSettingsDto>> getSettings();

  @PUT('/api/user/notifications/settings')
  Future<BaseResponse<dynamic>> updateSettings(
      @Body() UpdateNotificationSettingsRequest body);
}
