import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';
part 'event.g.dart';

@freezed
class EventEntity with _$EventEntity {
  const factory EventEntity({
    required int id,
    @Default('') String title,
    @Default('') String description,
    @Default('') String eventDate,
    @Default('') String location,
    @Default('') String imageUrl,
    @Default(false) bool hasRsvp,
    @Default('') String createdAt,
  }) = _EventEntity;

  factory EventEntity.fromJson(Map<String, dynamic> json) =>
      _$EventEntityFromJson(json);
}
