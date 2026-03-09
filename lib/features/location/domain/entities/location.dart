import 'package:freezed_annotation/freezed_annotation.dart';

part 'location.freezed.dart';
part 'location.g.dart';

@freezed
class UserLocationEntity with _$UserLocationEntity {
  const factory UserLocationEntity({
    @Default(0.0) double latitude,
    @Default(0.0) double longitude,
    @Default('') String city,
    @Default('') String updatedAt,
  }) = _UserLocationEntity;

  factory UserLocationEntity.fromJson(Map<String, dynamic> json) =>
      _$UserLocationEntityFromJson(json);
}
