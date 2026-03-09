// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$LocationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function() detectGps,
    required TResult Function(double latitude, double longitude, String city)
    update,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function()? detectGps,
    TResult? Function(double latitude, double longitude, String city)? update,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? detectGps,
    TResult Function(double latitude, double longitude, String city)? update,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationFetch value) fetch,
    required TResult Function(LocationDetectGps value) detectGps,
    required TResult Function(LocationUpdate value) update,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationFetch value)? fetch,
    TResult? Function(LocationDetectGps value)? detectGps,
    TResult? Function(LocationUpdate value)? update,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationFetch value)? fetch,
    TResult Function(LocationDetectGps value)? detectGps,
    TResult Function(LocationUpdate value)? update,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationEventCopyWith<$Res> {
  factory $LocationEventCopyWith(
    LocationEvent value,
    $Res Function(LocationEvent) then,
  ) = _$LocationEventCopyWithImpl<$Res, LocationEvent>;
}

/// @nodoc
class _$LocationEventCopyWithImpl<$Res, $Val extends LocationEvent>
    implements $LocationEventCopyWith<$Res> {
  _$LocationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LocationFetchImplCopyWith<$Res> {
  factory _$$LocationFetchImplCopyWith(
    _$LocationFetchImpl value,
    $Res Function(_$LocationFetchImpl) then,
  ) = __$$LocationFetchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocationFetchImplCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$LocationFetchImpl>
    implements _$$LocationFetchImplCopyWith<$Res> {
  __$$LocationFetchImplCopyWithImpl(
    _$LocationFetchImpl _value,
    $Res Function(_$LocationFetchImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LocationFetchImpl implements LocationFetch {
  const _$LocationFetchImpl();

  @override
  String toString() {
    return 'LocationEvent.fetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LocationFetchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function() detectGps,
    required TResult Function(double latitude, double longitude, String city)
    update,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function()? detectGps,
    TResult? Function(double latitude, double longitude, String city)? update,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? detectGps,
    TResult Function(double latitude, double longitude, String city)? update,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationFetch value) fetch,
    required TResult Function(LocationDetectGps value) detectGps,
    required TResult Function(LocationUpdate value) update,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationFetch value)? fetch,
    TResult? Function(LocationDetectGps value)? detectGps,
    TResult? Function(LocationUpdate value)? update,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationFetch value)? fetch,
    TResult Function(LocationDetectGps value)? detectGps,
    TResult Function(LocationUpdate value)? update,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class LocationFetch implements LocationEvent {
  const factory LocationFetch() = _$LocationFetchImpl;
}

/// @nodoc
abstract class _$$LocationDetectGpsImplCopyWith<$Res> {
  factory _$$LocationDetectGpsImplCopyWith(
    _$LocationDetectGpsImpl value,
    $Res Function(_$LocationDetectGpsImpl) then,
  ) = __$$LocationDetectGpsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocationDetectGpsImplCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$LocationDetectGpsImpl>
    implements _$$LocationDetectGpsImplCopyWith<$Res> {
  __$$LocationDetectGpsImplCopyWithImpl(
    _$LocationDetectGpsImpl _value,
    $Res Function(_$LocationDetectGpsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LocationDetectGpsImpl implements LocationDetectGps {
  const _$LocationDetectGpsImpl();

  @override
  String toString() {
    return 'LocationEvent.detectGps()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LocationDetectGpsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function() detectGps,
    required TResult Function(double latitude, double longitude, String city)
    update,
  }) {
    return detectGps();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function()? detectGps,
    TResult? Function(double latitude, double longitude, String city)? update,
  }) {
    return detectGps?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? detectGps,
    TResult Function(double latitude, double longitude, String city)? update,
    required TResult orElse(),
  }) {
    if (detectGps != null) {
      return detectGps();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationFetch value) fetch,
    required TResult Function(LocationDetectGps value) detectGps,
    required TResult Function(LocationUpdate value) update,
  }) {
    return detectGps(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationFetch value)? fetch,
    TResult? Function(LocationDetectGps value)? detectGps,
    TResult? Function(LocationUpdate value)? update,
  }) {
    return detectGps?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationFetch value)? fetch,
    TResult Function(LocationDetectGps value)? detectGps,
    TResult Function(LocationUpdate value)? update,
    required TResult orElse(),
  }) {
    if (detectGps != null) {
      return detectGps(this);
    }
    return orElse();
  }
}

abstract class LocationDetectGps implements LocationEvent {
  const factory LocationDetectGps() = _$LocationDetectGpsImpl;
}

/// @nodoc
abstract class _$$LocationUpdateImplCopyWith<$Res> {
  factory _$$LocationUpdateImplCopyWith(
    _$LocationUpdateImpl value,
    $Res Function(_$LocationUpdateImpl) then,
  ) = __$$LocationUpdateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double latitude, double longitude, String city});
}

/// @nodoc
class __$$LocationUpdateImplCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$LocationUpdateImpl>
    implements _$$LocationUpdateImplCopyWith<$Res> {
  __$$LocationUpdateImplCopyWithImpl(
    _$LocationUpdateImpl _value,
    $Res Function(_$LocationUpdateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? city = null,
  }) {
    return _then(
      _$LocationUpdateImpl(
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
      ),
    );
  }
}

/// @nodoc

class _$LocationUpdateImpl implements LocationUpdate {
  const _$LocationUpdateImpl({
    required this.latitude,
    required this.longitude,
    required this.city,
  });

  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final String city;

  @override
  String toString() {
    return 'LocationEvent.update(latitude: $latitude, longitude: $longitude, city: $city)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationUpdateImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.city, city) || other.city == city));
  }

  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude, city);

  /// Create a copy of LocationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationUpdateImplCopyWith<_$LocationUpdateImpl> get copyWith =>
      __$$LocationUpdateImplCopyWithImpl<_$LocationUpdateImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function() detectGps,
    required TResult Function(double latitude, double longitude, String city)
    update,
  }) {
    return update(latitude, longitude, city);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function()? detectGps,
    TResult? Function(double latitude, double longitude, String city)? update,
  }) {
    return update?.call(latitude, longitude, city);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? detectGps,
    TResult Function(double latitude, double longitude, String city)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(latitude, longitude, city);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationFetch value) fetch,
    required TResult Function(LocationDetectGps value) detectGps,
    required TResult Function(LocationUpdate value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationFetch value)? fetch,
    TResult? Function(LocationDetectGps value)? detectGps,
    TResult? Function(LocationUpdate value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationFetch value)? fetch,
    TResult Function(LocationDetectGps value)? detectGps,
    TResult Function(LocationUpdate value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class LocationUpdate implements LocationEvent {
  const factory LocationUpdate({
    required final double latitude,
    required final double longitude,
    required final String city,
  }) = _$LocationUpdateImpl;

  double get latitude;
  double get longitude;
  String get city;

  /// Create a copy of LocationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationUpdateImplCopyWith<_$LocationUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
