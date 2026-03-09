// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UserLocationEntity _$UserLocationEntityFromJson(Map<String, dynamic> json) {
  return _UserLocationEntity.fromJson(json);
}

/// @nodoc
mixin _$UserLocationEntity {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this UserLocationEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserLocationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserLocationEntityCopyWith<UserLocationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLocationEntityCopyWith<$Res> {
  factory $UserLocationEntityCopyWith(
    UserLocationEntity value,
    $Res Function(UserLocationEntity) then,
  ) = _$UserLocationEntityCopyWithImpl<$Res, UserLocationEntity>;
  @useResult
  $Res call({double latitude, double longitude, String city, String updatedAt});
}

/// @nodoc
class _$UserLocationEntityCopyWithImpl<$Res, $Val extends UserLocationEntity>
    implements $UserLocationEntityCopyWith<$Res> {
  _$UserLocationEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserLocationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? city = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _value.copyWith(
            latitude: null == latitude
                ? _value.latitude
                : latitude // ignore: cast_nullable_to_non_nullable
                      as double,
            longitude: null == longitude
                ? _value.longitude
                : longitude // ignore: cast_nullable_to_non_nullable
                      as double,
            city: null == city
                ? _value.city
                : city // ignore: cast_nullable_to_non_nullable
                      as String,
            updatedAt: null == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserLocationEntityImplCopyWith<$Res>
    implements $UserLocationEntityCopyWith<$Res> {
  factory _$$UserLocationEntityImplCopyWith(
    _$UserLocationEntityImpl value,
    $Res Function(_$UserLocationEntityImpl) then,
  ) = __$$UserLocationEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double latitude, double longitude, String city, String updatedAt});
}

/// @nodoc
class __$$UserLocationEntityImplCopyWithImpl<$Res>
    extends _$UserLocationEntityCopyWithImpl<$Res, _$UserLocationEntityImpl>
    implements _$$UserLocationEntityImplCopyWith<$Res> {
  __$$UserLocationEntityImplCopyWithImpl(
    _$UserLocationEntityImpl _value,
    $Res Function(_$UserLocationEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserLocationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? city = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _$UserLocationEntityImpl(
        latitude: null == latitude
            ? _value.latitude
            : latitude // ignore: cast_nullable_to_non_nullable
                  as double,
        longitude: null == longitude
            ? _value.longitude
            : longitude // ignore: cast_nullable_to_non_nullable
                  as double,
        city: null == city
            ? _value.city
            : city // ignore: cast_nullable_to_non_nullable
                  as String,
        updatedAt: null == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserLocationEntityImpl implements _UserLocationEntity {
  const _$UserLocationEntityImpl({
    this.latitude = 0.0,
    this.longitude = 0.0,
    this.city = '',
    this.updatedAt = '',
  });

  factory _$UserLocationEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserLocationEntityImplFromJson(json);

  @override
  @JsonKey()
  final double latitude;
  @override
  @JsonKey()
  final double longitude;
  @override
  @JsonKey()
  final String city;
  @override
  @JsonKey()
  final String updatedAt;

  @override
  String toString() {
    return 'UserLocationEntity(latitude: $latitude, longitude: $longitude, city: $city, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLocationEntityImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, latitude, longitude, city, updatedAt);

  /// Create a copy of UserLocationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLocationEntityImplCopyWith<_$UserLocationEntityImpl> get copyWith =>
      __$$UserLocationEntityImplCopyWithImpl<_$UserLocationEntityImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UserLocationEntityImplToJson(this);
  }
}

abstract class _UserLocationEntity implements UserLocationEntity {
  const factory _UserLocationEntity({
    final double latitude,
    final double longitude,
    final String city,
    final String updatedAt,
  }) = _$UserLocationEntityImpl;

  factory _UserLocationEntity.fromJson(Map<String, dynamic> json) =
      _$UserLocationEntityImpl.fromJson;

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  String get city;
  @override
  String get updatedAt;

  /// Create a copy of UserLocationEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserLocationEntityImplCopyWith<_$UserLocationEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
