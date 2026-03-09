// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'preferences_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PreferencesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PreferencesEntity preferences) loaded,
    required TResult Function(String message) updated,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PreferencesEntity preferences)? loaded,
    TResult? Function(String message)? updated,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PreferencesEntity preferences)? loaded,
    TResult Function(String message)? updated,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PreferencesInitial value) initial,
    required TResult Function(PreferencesLoading value) loading,
    required TResult Function(PreferencesLoaded value) loaded,
    required TResult Function(PreferencesUpdated value) updated,
    required TResult Function(PreferencesError value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PreferencesInitial value)? initial,
    TResult? Function(PreferencesLoading value)? loading,
    TResult? Function(PreferencesLoaded value)? loaded,
    TResult? Function(PreferencesUpdated value)? updated,
    TResult? Function(PreferencesError value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreferencesInitial value)? initial,
    TResult Function(PreferencesLoading value)? loading,
    TResult Function(PreferencesLoaded value)? loaded,
    TResult Function(PreferencesUpdated value)? updated,
    TResult Function(PreferencesError value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreferencesStateCopyWith<$Res> {
  factory $PreferencesStateCopyWith(
    PreferencesState value,
    $Res Function(PreferencesState) then,
  ) = _$PreferencesStateCopyWithImpl<$Res, PreferencesState>;
}

/// @nodoc
class _$PreferencesStateCopyWithImpl<$Res, $Val extends PreferencesState>
    implements $PreferencesStateCopyWith<$Res> {
  _$PreferencesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PreferencesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PreferencesInitialImplCopyWith<$Res> {
  factory _$$PreferencesInitialImplCopyWith(
    _$PreferencesInitialImpl value,
    $Res Function(_$PreferencesInitialImpl) then,
  ) = __$$PreferencesInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PreferencesInitialImplCopyWithImpl<$Res>
    extends _$PreferencesStateCopyWithImpl<$Res, _$PreferencesInitialImpl>
    implements _$$PreferencesInitialImplCopyWith<$Res> {
  __$$PreferencesInitialImplCopyWithImpl(
    _$PreferencesInitialImpl _value,
    $Res Function(_$PreferencesInitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PreferencesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PreferencesInitialImpl implements PreferencesInitial {
  const _$PreferencesInitialImpl();

  @override
  String toString() {
    return 'PreferencesState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PreferencesInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PreferencesEntity preferences) loaded,
    required TResult Function(String message) updated,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PreferencesEntity preferences)? loaded,
    TResult? Function(String message)? updated,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PreferencesEntity preferences)? loaded,
    TResult Function(String message)? updated,
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
    required TResult Function(PreferencesInitial value) initial,
    required TResult Function(PreferencesLoading value) loading,
    required TResult Function(PreferencesLoaded value) loaded,
    required TResult Function(PreferencesUpdated value) updated,
    required TResult Function(PreferencesError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PreferencesInitial value)? initial,
    TResult? Function(PreferencesLoading value)? loading,
    TResult? Function(PreferencesLoaded value)? loaded,
    TResult? Function(PreferencesUpdated value)? updated,
    TResult? Function(PreferencesError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreferencesInitial value)? initial,
    TResult Function(PreferencesLoading value)? loading,
    TResult Function(PreferencesLoaded value)? loaded,
    TResult Function(PreferencesUpdated value)? updated,
    TResult Function(PreferencesError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class PreferencesInitial implements PreferencesState {
  const factory PreferencesInitial() = _$PreferencesInitialImpl;
}

/// @nodoc
abstract class _$$PreferencesLoadingImplCopyWith<$Res> {
  factory _$$PreferencesLoadingImplCopyWith(
    _$PreferencesLoadingImpl value,
    $Res Function(_$PreferencesLoadingImpl) then,
  ) = __$$PreferencesLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PreferencesLoadingImplCopyWithImpl<$Res>
    extends _$PreferencesStateCopyWithImpl<$Res, _$PreferencesLoadingImpl>
    implements _$$PreferencesLoadingImplCopyWith<$Res> {
  __$$PreferencesLoadingImplCopyWithImpl(
    _$PreferencesLoadingImpl _value,
    $Res Function(_$PreferencesLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PreferencesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PreferencesLoadingImpl implements PreferencesLoading {
  const _$PreferencesLoadingImpl();

  @override
  String toString() {
    return 'PreferencesState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PreferencesLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PreferencesEntity preferences) loaded,
    required TResult Function(String message) updated,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PreferencesEntity preferences)? loaded,
    TResult? Function(String message)? updated,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PreferencesEntity preferences)? loaded,
    TResult Function(String message)? updated,
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
    required TResult Function(PreferencesInitial value) initial,
    required TResult Function(PreferencesLoading value) loading,
    required TResult Function(PreferencesLoaded value) loaded,
    required TResult Function(PreferencesUpdated value) updated,
    required TResult Function(PreferencesError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PreferencesInitial value)? initial,
    TResult? Function(PreferencesLoading value)? loading,
    TResult? Function(PreferencesLoaded value)? loaded,
    TResult? Function(PreferencesUpdated value)? updated,
    TResult? Function(PreferencesError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreferencesInitial value)? initial,
    TResult Function(PreferencesLoading value)? loading,
    TResult Function(PreferencesLoaded value)? loaded,
    TResult Function(PreferencesUpdated value)? updated,
    TResult Function(PreferencesError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PreferencesLoading implements PreferencesState {
  const factory PreferencesLoading() = _$PreferencesLoadingImpl;
}

/// @nodoc
abstract class _$$PreferencesLoadedImplCopyWith<$Res> {
  factory _$$PreferencesLoadedImplCopyWith(
    _$PreferencesLoadedImpl value,
    $Res Function(_$PreferencesLoadedImpl) then,
  ) = __$$PreferencesLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PreferencesEntity preferences});

  $PreferencesEntityCopyWith<$Res> get preferences;
}

/// @nodoc
class __$$PreferencesLoadedImplCopyWithImpl<$Res>
    extends _$PreferencesStateCopyWithImpl<$Res, _$PreferencesLoadedImpl>
    implements _$$PreferencesLoadedImplCopyWith<$Res> {
  __$$PreferencesLoadedImplCopyWithImpl(
    _$PreferencesLoadedImpl _value,
    $Res Function(_$PreferencesLoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PreferencesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? preferences = null}) {
    return _then(
      _$PreferencesLoadedImpl(
        preferences: null == preferences
            ? _value.preferences
            : preferences // ignore: cast_nullable_to_non_nullable
                  as PreferencesEntity,
      ),
    );
  }

  /// Create a copy of PreferencesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PreferencesEntityCopyWith<$Res> get preferences {
    return $PreferencesEntityCopyWith<$Res>(_value.preferences, (value) {
      return _then(_value.copyWith(preferences: value));
    });
  }
}

/// @nodoc

class _$PreferencesLoadedImpl implements PreferencesLoaded {
  const _$PreferencesLoadedImpl({required this.preferences});

  @override
  final PreferencesEntity preferences;

  @override
  String toString() {
    return 'PreferencesState.loaded(preferences: $preferences)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreferencesLoadedImpl &&
            (identical(other.preferences, preferences) ||
                other.preferences == preferences));
  }

  @override
  int get hashCode => Object.hash(runtimeType, preferences);

  /// Create a copy of PreferencesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PreferencesLoadedImplCopyWith<_$PreferencesLoadedImpl> get copyWith =>
      __$$PreferencesLoadedImplCopyWithImpl<_$PreferencesLoadedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PreferencesEntity preferences) loaded,
    required TResult Function(String message) updated,
    required TResult Function(String message) error,
  }) {
    return loaded(preferences);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PreferencesEntity preferences)? loaded,
    TResult? Function(String message)? updated,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(preferences);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PreferencesEntity preferences)? loaded,
    TResult Function(String message)? updated,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(preferences);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PreferencesInitial value) initial,
    required TResult Function(PreferencesLoading value) loading,
    required TResult Function(PreferencesLoaded value) loaded,
    required TResult Function(PreferencesUpdated value) updated,
    required TResult Function(PreferencesError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PreferencesInitial value)? initial,
    TResult? Function(PreferencesLoading value)? loading,
    TResult? Function(PreferencesLoaded value)? loaded,
    TResult? Function(PreferencesUpdated value)? updated,
    TResult? Function(PreferencesError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreferencesInitial value)? initial,
    TResult Function(PreferencesLoading value)? loading,
    TResult Function(PreferencesLoaded value)? loaded,
    TResult Function(PreferencesUpdated value)? updated,
    TResult Function(PreferencesError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class PreferencesLoaded implements PreferencesState {
  const factory PreferencesLoaded({
    required final PreferencesEntity preferences,
  }) = _$PreferencesLoadedImpl;

  PreferencesEntity get preferences;

  /// Create a copy of PreferencesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PreferencesLoadedImplCopyWith<_$PreferencesLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PreferencesUpdatedImplCopyWith<$Res> {
  factory _$$PreferencesUpdatedImplCopyWith(
    _$PreferencesUpdatedImpl value,
    $Res Function(_$PreferencesUpdatedImpl) then,
  ) = __$$PreferencesUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$PreferencesUpdatedImplCopyWithImpl<$Res>
    extends _$PreferencesStateCopyWithImpl<$Res, _$PreferencesUpdatedImpl>
    implements _$$PreferencesUpdatedImplCopyWith<$Res> {
  __$$PreferencesUpdatedImplCopyWithImpl(
    _$PreferencesUpdatedImpl _value,
    $Res Function(_$PreferencesUpdatedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PreferencesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$PreferencesUpdatedImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$PreferencesUpdatedImpl implements PreferencesUpdated {
  const _$PreferencesUpdatedImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'PreferencesState.updated(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreferencesUpdatedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of PreferencesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PreferencesUpdatedImplCopyWith<_$PreferencesUpdatedImpl> get copyWith =>
      __$$PreferencesUpdatedImplCopyWithImpl<_$PreferencesUpdatedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PreferencesEntity preferences) loaded,
    required TResult Function(String message) updated,
    required TResult Function(String message) error,
  }) {
    return updated(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PreferencesEntity preferences)? loaded,
    TResult? Function(String message)? updated,
    TResult? Function(String message)? error,
  }) {
    return updated?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PreferencesEntity preferences)? loaded,
    TResult Function(String message)? updated,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PreferencesInitial value) initial,
    required TResult Function(PreferencesLoading value) loading,
    required TResult Function(PreferencesLoaded value) loaded,
    required TResult Function(PreferencesUpdated value) updated,
    required TResult Function(PreferencesError value) error,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PreferencesInitial value)? initial,
    TResult? Function(PreferencesLoading value)? loading,
    TResult? Function(PreferencesLoaded value)? loaded,
    TResult? Function(PreferencesUpdated value)? updated,
    TResult? Function(PreferencesError value)? error,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreferencesInitial value)? initial,
    TResult Function(PreferencesLoading value)? loading,
    TResult Function(PreferencesLoaded value)? loaded,
    TResult Function(PreferencesUpdated value)? updated,
    TResult Function(PreferencesError value)? error,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class PreferencesUpdated implements PreferencesState {
  const factory PreferencesUpdated({required final String message}) =
      _$PreferencesUpdatedImpl;

  String get message;

  /// Create a copy of PreferencesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PreferencesUpdatedImplCopyWith<_$PreferencesUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PreferencesErrorImplCopyWith<$Res> {
  factory _$$PreferencesErrorImplCopyWith(
    _$PreferencesErrorImpl value,
    $Res Function(_$PreferencesErrorImpl) then,
  ) = __$$PreferencesErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$PreferencesErrorImplCopyWithImpl<$Res>
    extends _$PreferencesStateCopyWithImpl<$Res, _$PreferencesErrorImpl>
    implements _$$PreferencesErrorImplCopyWith<$Res> {
  __$$PreferencesErrorImplCopyWithImpl(
    _$PreferencesErrorImpl _value,
    $Res Function(_$PreferencesErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PreferencesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$PreferencesErrorImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$PreferencesErrorImpl implements PreferencesError {
  const _$PreferencesErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'PreferencesState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreferencesErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of PreferencesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PreferencesErrorImplCopyWith<_$PreferencesErrorImpl> get copyWith =>
      __$$PreferencesErrorImplCopyWithImpl<_$PreferencesErrorImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PreferencesEntity preferences) loaded,
    required TResult Function(String message) updated,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PreferencesEntity preferences)? loaded,
    TResult? Function(String message)? updated,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PreferencesEntity preferences)? loaded,
    TResult Function(String message)? updated,
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
    required TResult Function(PreferencesInitial value) initial,
    required TResult Function(PreferencesLoading value) loading,
    required TResult Function(PreferencesLoaded value) loaded,
    required TResult Function(PreferencesUpdated value) updated,
    required TResult Function(PreferencesError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PreferencesInitial value)? initial,
    TResult? Function(PreferencesLoading value)? loading,
    TResult? Function(PreferencesLoaded value)? loaded,
    TResult? Function(PreferencesUpdated value)? updated,
    TResult? Function(PreferencesError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreferencesInitial value)? initial,
    TResult Function(PreferencesLoading value)? loading,
    TResult Function(PreferencesLoaded value)? loaded,
    TResult Function(PreferencesUpdated value)? updated,
    TResult Function(PreferencesError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class PreferencesError implements PreferencesState {
  const factory PreferencesError({required final String message}) =
      _$PreferencesErrorImpl;

  String get message;

  /// Create a copy of PreferencesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PreferencesErrorImplCopyWith<_$PreferencesErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
