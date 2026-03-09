// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'series_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SeriesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<SeriesEntity> series) loaded,
    required TResult Function(SeriesEntity series) detail,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<SeriesEntity> series)? loaded,
    TResult? Function(SeriesEntity series)? detail,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<SeriesEntity> series)? loaded,
    TResult Function(SeriesEntity series)? detail,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SeriesInitial value) initial,
    required TResult Function(SeriesLoading value) loading,
    required TResult Function(SeriesLoaded value) loaded,
    required TResult Function(SeriesDetail value) detail,
    required TResult Function(SeriesError value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SeriesInitial value)? initial,
    TResult? Function(SeriesLoading value)? loading,
    TResult? Function(SeriesLoaded value)? loaded,
    TResult? Function(SeriesDetail value)? detail,
    TResult? Function(SeriesError value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SeriesInitial value)? initial,
    TResult Function(SeriesLoading value)? loading,
    TResult Function(SeriesLoaded value)? loaded,
    TResult Function(SeriesDetail value)? detail,
    TResult Function(SeriesError value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeriesStateCopyWith<$Res> {
  factory $SeriesStateCopyWith(
    SeriesState value,
    $Res Function(SeriesState) then,
  ) = _$SeriesStateCopyWithImpl<$Res, SeriesState>;
}

/// @nodoc
class _$SeriesStateCopyWithImpl<$Res, $Val extends SeriesState>
    implements $SeriesStateCopyWith<$Res> {
  _$SeriesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SeriesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SeriesInitialImplCopyWith<$Res> {
  factory _$$SeriesInitialImplCopyWith(
    _$SeriesInitialImpl value,
    $Res Function(_$SeriesInitialImpl) then,
  ) = __$$SeriesInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SeriesInitialImplCopyWithImpl<$Res>
    extends _$SeriesStateCopyWithImpl<$Res, _$SeriesInitialImpl>
    implements _$$SeriesInitialImplCopyWith<$Res> {
  __$$SeriesInitialImplCopyWithImpl(
    _$SeriesInitialImpl _value,
    $Res Function(_$SeriesInitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SeriesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SeriesInitialImpl implements SeriesInitial {
  const _$SeriesInitialImpl();

  @override
  String toString() {
    return 'SeriesState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SeriesInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<SeriesEntity> series) loaded,
    required TResult Function(SeriesEntity series) detail,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<SeriesEntity> series)? loaded,
    TResult? Function(SeriesEntity series)? detail,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<SeriesEntity> series)? loaded,
    TResult Function(SeriesEntity series)? detail,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SeriesInitial value) initial,
    required TResult Function(SeriesLoading value) loading,
    required TResult Function(SeriesLoaded value) loaded,
    required TResult Function(SeriesDetail value) detail,
    required TResult Function(SeriesError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SeriesInitial value)? initial,
    TResult? Function(SeriesLoading value)? loading,
    TResult? Function(SeriesLoaded value)? loaded,
    TResult? Function(SeriesDetail value)? detail,
    TResult? Function(SeriesError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SeriesInitial value)? initial,
    TResult Function(SeriesLoading value)? loading,
    TResult Function(SeriesLoaded value)? loaded,
    TResult Function(SeriesDetail value)? detail,
    TResult Function(SeriesError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SeriesInitial implements SeriesState {
  const factory SeriesInitial() = _$SeriesInitialImpl;
}

/// @nodoc
abstract class _$$SeriesLoadingImplCopyWith<$Res> {
  factory _$$SeriesLoadingImplCopyWith(
    _$SeriesLoadingImpl value,
    $Res Function(_$SeriesLoadingImpl) then,
  ) = __$$SeriesLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SeriesLoadingImplCopyWithImpl<$Res>
    extends _$SeriesStateCopyWithImpl<$Res, _$SeriesLoadingImpl>
    implements _$$SeriesLoadingImplCopyWith<$Res> {
  __$$SeriesLoadingImplCopyWithImpl(
    _$SeriesLoadingImpl _value,
    $Res Function(_$SeriesLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SeriesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SeriesLoadingImpl implements SeriesLoading {
  const _$SeriesLoadingImpl();

  @override
  String toString() {
    return 'SeriesState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SeriesLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<SeriesEntity> series) loaded,
    required TResult Function(SeriesEntity series) detail,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<SeriesEntity> series)? loaded,
    TResult? Function(SeriesEntity series)? detail,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<SeriesEntity> series)? loaded,
    TResult Function(SeriesEntity series)? detail,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SeriesInitial value) initial,
    required TResult Function(SeriesLoading value) loading,
    required TResult Function(SeriesLoaded value) loaded,
    required TResult Function(SeriesDetail value) detail,
    required TResult Function(SeriesError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SeriesInitial value)? initial,
    TResult? Function(SeriesLoading value)? loading,
    TResult? Function(SeriesLoaded value)? loaded,
    TResult? Function(SeriesDetail value)? detail,
    TResult? Function(SeriesError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SeriesInitial value)? initial,
    TResult Function(SeriesLoading value)? loading,
    TResult Function(SeriesLoaded value)? loaded,
    TResult Function(SeriesDetail value)? detail,
    TResult Function(SeriesError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SeriesLoading implements SeriesState {
  const factory SeriesLoading() = _$SeriesLoadingImpl;
}

/// @nodoc
abstract class _$$SeriesLoadedImplCopyWith<$Res> {
  factory _$$SeriesLoadedImplCopyWith(
    _$SeriesLoadedImpl value,
    $Res Function(_$SeriesLoadedImpl) then,
  ) = __$$SeriesLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SeriesEntity> series});
}

/// @nodoc
class __$$SeriesLoadedImplCopyWithImpl<$Res>
    extends _$SeriesStateCopyWithImpl<$Res, _$SeriesLoadedImpl>
    implements _$$SeriesLoadedImplCopyWith<$Res> {
  __$$SeriesLoadedImplCopyWithImpl(
    _$SeriesLoadedImpl _value,
    $Res Function(_$SeriesLoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SeriesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? series = null}) {
    return _then(
      _$SeriesLoadedImpl(
        series: null == series
            ? _value._series
            : series // ignore: cast_nullable_to_non_nullable
                  as List<SeriesEntity>,
      ),
    );
  }
}

/// @nodoc

class _$SeriesLoadedImpl implements SeriesLoaded {
  const _$SeriesLoadedImpl({required final List<SeriesEntity> series})
    : _series = series;

  final List<SeriesEntity> _series;
  @override
  List<SeriesEntity> get series {
    if (_series is EqualUnmodifiableListView) return _series;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_series);
  }

  @override
  String toString() {
    return 'SeriesState.loaded(series: $series)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeriesLoadedImpl &&
            const DeepCollectionEquality().equals(other._series, _series));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_series));

  /// Create a copy of SeriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SeriesLoadedImplCopyWith<_$SeriesLoadedImpl> get copyWith =>
      __$$SeriesLoadedImplCopyWithImpl<_$SeriesLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<SeriesEntity> series) loaded,
    required TResult Function(SeriesEntity series) detail,
    required TResult Function(String message) error,
  }) {
    return loaded(series);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<SeriesEntity> series)? loaded,
    TResult? Function(SeriesEntity series)? detail,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(series);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<SeriesEntity> series)? loaded,
    TResult Function(SeriesEntity series)? detail,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(series);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SeriesInitial value) initial,
    required TResult Function(SeriesLoading value) loading,
    required TResult Function(SeriesLoaded value) loaded,
    required TResult Function(SeriesDetail value) detail,
    required TResult Function(SeriesError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SeriesInitial value)? initial,
    TResult? Function(SeriesLoading value)? loading,
    TResult? Function(SeriesLoaded value)? loaded,
    TResult? Function(SeriesDetail value)? detail,
    TResult? Function(SeriesError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SeriesInitial value)? initial,
    TResult Function(SeriesLoading value)? loading,
    TResult Function(SeriesLoaded value)? loaded,
    TResult Function(SeriesDetail value)? detail,
    TResult Function(SeriesError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class SeriesLoaded implements SeriesState {
  const factory SeriesLoaded({required final List<SeriesEntity> series}) =
      _$SeriesLoadedImpl;

  List<SeriesEntity> get series;

  /// Create a copy of SeriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SeriesLoadedImplCopyWith<_$SeriesLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SeriesDetailImplCopyWith<$Res> {
  factory _$$SeriesDetailImplCopyWith(
    _$SeriesDetailImpl value,
    $Res Function(_$SeriesDetailImpl) then,
  ) = __$$SeriesDetailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SeriesEntity series});

  $SeriesEntityCopyWith<$Res> get series;
}

/// @nodoc
class __$$SeriesDetailImplCopyWithImpl<$Res>
    extends _$SeriesStateCopyWithImpl<$Res, _$SeriesDetailImpl>
    implements _$$SeriesDetailImplCopyWith<$Res> {
  __$$SeriesDetailImplCopyWithImpl(
    _$SeriesDetailImpl _value,
    $Res Function(_$SeriesDetailImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SeriesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? series = null}) {
    return _then(
      _$SeriesDetailImpl(
        series: null == series
            ? _value.series
            : series // ignore: cast_nullable_to_non_nullable
                  as SeriesEntity,
      ),
    );
  }

  /// Create a copy of SeriesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SeriesEntityCopyWith<$Res> get series {
    return $SeriesEntityCopyWith<$Res>(_value.series, (value) {
      return _then(_value.copyWith(series: value));
    });
  }
}

/// @nodoc

class _$SeriesDetailImpl implements SeriesDetail {
  const _$SeriesDetailImpl({required this.series});

  @override
  final SeriesEntity series;

  @override
  String toString() {
    return 'SeriesState.detail(series: $series)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeriesDetailImpl &&
            (identical(other.series, series) || other.series == series));
  }

  @override
  int get hashCode => Object.hash(runtimeType, series);

  /// Create a copy of SeriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SeriesDetailImplCopyWith<_$SeriesDetailImpl> get copyWith =>
      __$$SeriesDetailImplCopyWithImpl<_$SeriesDetailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<SeriesEntity> series) loaded,
    required TResult Function(SeriesEntity series) detail,
    required TResult Function(String message) error,
  }) {
    return detail(series);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<SeriesEntity> series)? loaded,
    TResult? Function(SeriesEntity series)? detail,
    TResult? Function(String message)? error,
  }) {
    return detail?.call(series);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<SeriesEntity> series)? loaded,
    TResult Function(SeriesEntity series)? detail,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (detail != null) {
      return detail(series);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SeriesInitial value) initial,
    required TResult Function(SeriesLoading value) loading,
    required TResult Function(SeriesLoaded value) loaded,
    required TResult Function(SeriesDetail value) detail,
    required TResult Function(SeriesError value) error,
  }) {
    return detail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SeriesInitial value)? initial,
    TResult? Function(SeriesLoading value)? loading,
    TResult? Function(SeriesLoaded value)? loaded,
    TResult? Function(SeriesDetail value)? detail,
    TResult? Function(SeriesError value)? error,
  }) {
    return detail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SeriesInitial value)? initial,
    TResult Function(SeriesLoading value)? loading,
    TResult Function(SeriesLoaded value)? loaded,
    TResult Function(SeriesDetail value)? detail,
    TResult Function(SeriesError value)? error,
    required TResult orElse(),
  }) {
    if (detail != null) {
      return detail(this);
    }
    return orElse();
  }
}

abstract class SeriesDetail implements SeriesState {
  const factory SeriesDetail({required final SeriesEntity series}) =
      _$SeriesDetailImpl;

  SeriesEntity get series;

  /// Create a copy of SeriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SeriesDetailImplCopyWith<_$SeriesDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SeriesErrorImplCopyWith<$Res> {
  factory _$$SeriesErrorImplCopyWith(
    _$SeriesErrorImpl value,
    $Res Function(_$SeriesErrorImpl) then,
  ) = __$$SeriesErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SeriesErrorImplCopyWithImpl<$Res>
    extends _$SeriesStateCopyWithImpl<$Res, _$SeriesErrorImpl>
    implements _$$SeriesErrorImplCopyWith<$Res> {
  __$$SeriesErrorImplCopyWithImpl(
    _$SeriesErrorImpl _value,
    $Res Function(_$SeriesErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SeriesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$SeriesErrorImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$SeriesErrorImpl implements SeriesError {
  const _$SeriesErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'SeriesState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeriesErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of SeriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SeriesErrorImplCopyWith<_$SeriesErrorImpl> get copyWith =>
      __$$SeriesErrorImplCopyWithImpl<_$SeriesErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<SeriesEntity> series) loaded,
    required TResult Function(SeriesEntity series) detail,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<SeriesEntity> series)? loaded,
    TResult? Function(SeriesEntity series)? detail,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<SeriesEntity> series)? loaded,
    TResult Function(SeriesEntity series)? detail,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SeriesInitial value) initial,
    required TResult Function(SeriesLoading value) loading,
    required TResult Function(SeriesLoaded value) loaded,
    required TResult Function(SeriesDetail value) detail,
    required TResult Function(SeriesError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SeriesInitial value)? initial,
    TResult? Function(SeriesLoading value)? loading,
    TResult? Function(SeriesLoaded value)? loaded,
    TResult? Function(SeriesDetail value)? detail,
    TResult? Function(SeriesError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SeriesInitial value)? initial,
    TResult Function(SeriesLoading value)? loading,
    TResult Function(SeriesLoaded value)? loaded,
    TResult Function(SeriesDetail value)? detail,
    TResult Function(SeriesError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SeriesError implements SeriesState {
  const factory SeriesError({required final String message}) =
      _$SeriesErrorImpl;

  String get message;

  /// Create a copy of SeriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SeriesErrorImplCopyWith<_$SeriesErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
