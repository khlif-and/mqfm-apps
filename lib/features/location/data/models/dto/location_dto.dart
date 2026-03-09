import 'package:json_annotation/json_annotation.dart';
import 'package:mqfm_apps/features/location/domain/entities/location.dart';

part 'location_dto.g.dart';

@JsonSerializable()
class UserLocationDto {
  @JsonKey(defaultValue: 0.0)
  final double latitude;
  @JsonKey(defaultValue: 0.0)
  final double longitude;
  @JsonKey(defaultValue: '')
  final String city;
  @JsonKey(name: 'updated_at', defaultValue: '')
  final String updatedAt;

  const UserLocationDto({
    this.latitude = 0.0,
    this.longitude = 0.0,
    this.city = '',
    this.updatedAt = '',
  });

  factory UserLocationDto.fromJson(Map<String, dynamic> json) =>
      _$UserLocationDtoFromJson(json);

  Map<String, dynamic> toJson() => _$UserLocationDtoToJson(this);

  UserLocationEntity toEntity() {
    return UserLocationEntity(
      latitude: latitude,
      longitude: longitude,
      city: city,
      updatedAt: updatedAt,
    );
  }
}
