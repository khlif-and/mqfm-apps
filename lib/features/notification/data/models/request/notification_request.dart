import 'package:json_annotation/json_annotation.dart';

part 'notification_request.g.dart';

@JsonSerializable()
class UpdateNotificationSettingsRequest {
  @JsonKey(name: 'daily_reminder')
  final bool dailyReminder;
  @JsonKey(name: 'new_content')
  final bool newContent;
  @JsonKey(name: 'event_reminder')
  final bool eventReminder;

  const UpdateNotificationSettingsRequest({
    required this.dailyReminder,
    required this.newContent,
    required this.eventReminder,
  });

  factory UpdateNotificationSettingsRequest.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateNotificationSettingsRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$UpdateNotificationSettingsRequestToJson(this);
}
