// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PlayerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AudioEntity audio) loaded,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AudioEntity audio)? loaded,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AudioEntity audio)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayerInitial value) initial,
    required TResult Function(PlayerLoading value) loading,
    required TResult Function(PlayerLoaded value) loaded,
    required TResult Function(PlayerError value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlayerInitial value)? initial,
    TResult? Function(PlayerLoading value)? loading,
    TResult? Function(PlayerLoaded value)? loaded,
    TResult? Function(PlayerError value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayerInitial value)? initial,
    TResult Function(PlayerLoading value)? loading,
    TResult Function(PlayerLoaded value)? loaded,
    TResult Function(PlayerError value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerStateCopyWith<$Res> {
  factory $PlayerStateCopyWith(
    PlayerState value,
    $Res Function(PlayerState) then,
  ) = _$PlayerStateCopyWithImpl<$Res, PlayerState>;
}

/// @nodoc
class _$PlayerStateCopyWithImpl<$Res, $Val extends PlayerState>
    implements $PlayerStateCopyWith<$Res> {
  _$PlayerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PlayerInitialImplCopyWith<$Res> {
  factory _$$PlayerInitialImplCopyWith(
    _$PlayerInitialImpl value,
    $Res Function(_$PlayerInitialImpl) then,
  ) = __$$PlayerInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PlayerInitialImplCopyWithImpl<$Res>
    extends _$PlayerStateCopyWithImpl<$Res, _$PlayerInitialImpl>
    implements _$$PlayerInitialImplCopyWith<$Res> {
  __$$PlayerInitialImplCopyWithImpl(
    _$PlayerInitialImpl _value,
    $Res Function(_$PlayerInitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PlayerInitialImpl implements PlayerInitial {
  const _$PlayerInitialImpl();

  @override
  String toString() {
    return 'PlayerState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PlayerInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AudioEntity audio) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AudioEntity audio)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AudioEntity audio)? loaded,
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
    required TResult Function(PlayerInitial value) initial,
    required TResult Function(PlayerLoading value) loading,
    required TResult Function(PlayerLoaded value) loaded,
    required TResult Function(PlayerError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlayerInitial value)? initial,
    TResult? Function(PlayerLoading value)? loading,
    TResult? Function(PlayerLoaded value)? loaded,
    TResult? Function(PlayerError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayerInitial value)? initial,
    TResult Function(PlayerLoading value)? loading,
    TResult Function(PlayerLoaded value)? loaded,
    TResult Function(PlayerError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class PlayerInitial implements PlayerState {
  const factory PlayerInitial() = _$PlayerInitialImpl;
}

/// @nodoc
abstract class _$$PlayerLoadingImplCopyWith<$Res> {
  factory _$$PlayerLoadingImplCopyWith(
    _$PlayerLoadingImpl value,
    $Res Function(_$PlayerLoadingImpl) then,
  ) = __$$PlayerLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PlayerLoadingImplCopyWithImpl<$Res>
    extends _$PlayerStateCopyWithImpl<$Res, _$PlayerLoadingImpl>
    implements _$$PlayerLoadingImplCopyWith<$Res> {
  __$$PlayerLoadingImplCopyWithImpl(
    _$PlayerLoadingImpl _value,
    $Res Function(_$PlayerLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PlayerLoadingImpl implements PlayerLoading {
  const _$PlayerLoadingImpl();

  @override
  String toString() {
    return 'PlayerState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PlayerLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AudioEntity audio) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AudioEntity audio)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AudioEntity audio)? loaded,
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
    required TResult Function(PlayerInitial value) initial,
    required TResult Function(PlayerLoading value) loading,
    required TResult Function(PlayerLoaded value) loaded,
    required TResult Function(PlayerError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlayerInitial value)? initial,
    TResult? Function(PlayerLoading value)? loading,
    TResult? Function(PlayerLoaded value)? loaded,
    TResult? Function(PlayerError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayerInitial value)? initial,
    TResult Function(PlayerLoading value)? loading,
    TResult Function(PlayerLoaded value)? loaded,
    TResult Function(PlayerError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PlayerLoading implements PlayerState {
  const factory PlayerLoading() = _$PlayerLoadingImpl;
}

/// @nodoc
abstract class _$$PlayerLoadedImplCopyWith<$Res> {
  factory _$$PlayerLoadedImplCopyWith(
    _$PlayerLoadedImpl value,
    $Res Function(_$PlayerLoadedImpl) then,
  ) = __$$PlayerLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AudioEntity audio});

  $AudioEntityCopyWith<$Res> get audio;
}

/// @nodoc
class __$$PlayerLoadedImplCopyWithImpl<$Res>
    extends _$PlayerStateCopyWithImpl<$Res, _$PlayerLoadedImpl>
    implements _$$PlayerLoadedImplCopyWith<$Res> {
  __$$PlayerLoadedImplCopyWithImpl(
    _$PlayerLoadedImpl _value,
    $Res Function(_$PlayerLoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? audio = null}) {
    return _then(
      _$PlayerLoadedImpl(
        audio: null == audio
            ? _value.audio
            : audio // ignore: cast_nullable_to_non_nullable
                  as AudioEntity,
      ),
    );
  }

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AudioEntityCopyWith<$Res> get audio {
    return $AudioEntityCopyWith<$Res>(_value.audio, (value) {
      return _then(_value.copyWith(audio: value));
    });
  }
}

/// @nodoc

class _$PlayerLoadedImpl implements PlayerLoaded {
  const _$PlayerLoadedImpl({required this.audio});

  @override
  final AudioEntity audio;

  @override
  String toString() {
    return 'PlayerState.loaded(audio: $audio)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerLoadedImpl &&
            (identical(other.audio, audio) || other.audio == audio));
  }

  @override
  int get hashCode => Object.hash(runtimeType, audio);

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerLoadedImplCopyWith<_$PlayerLoadedImpl> get copyWith =>
      __$$PlayerLoadedImplCopyWithImpl<_$PlayerLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AudioEntity audio) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(audio);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AudioEntity audio)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(audio);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AudioEntity audio)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(audio);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayerInitial value) initial,
    required TResult Function(PlayerLoading value) loading,
    required TResult Function(PlayerLoaded value) loaded,
    required TResult Function(PlayerError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlayerInitial value)? initial,
    TResult? Function(PlayerLoading value)? loading,
    TResult? Function(PlayerLoaded value)? loaded,
    TResult? Function(PlayerError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayerInitial value)? initial,
    TResult Function(PlayerLoading value)? loading,
    TResult Function(PlayerLoaded value)? loaded,
    TResult Function(PlayerError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class PlayerLoaded implements PlayerState {
  const factory PlayerLoaded({required final AudioEntity audio}) =
      _$PlayerLoadedImpl;

  AudioEntity get audio;

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayerLoadedImplCopyWith<_$PlayerLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlayerErrorImplCopyWith<$Res> {
  factory _$$PlayerErrorImplCopyWith(
    _$PlayerErrorImpl value,
    $Res Function(_$PlayerErrorImpl) then,
  ) = __$$PlayerErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$PlayerErrorImplCopyWithImpl<$Res>
    extends _$PlayerStateCopyWithImpl<$Res, _$PlayerErrorImpl>
    implements _$$PlayerErrorImplCopyWith<$Res> {
  __$$PlayerErrorImplCopyWithImpl(
    _$PlayerErrorImpl _value,
    $Res Function(_$PlayerErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$PlayerErrorImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$PlayerErrorImpl implements PlayerError {
  const _$PlayerErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'PlayerState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerErrorImplCopyWith<_$PlayerErrorImpl> get copyWith =>
      __$$PlayerErrorImplCopyWithImpl<_$PlayerErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AudioEntity audio) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AudioEntity audio)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AudioEntity audio)? loaded,
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
    required TResult Function(PlayerInitial value) initial,
    required TResult Function(PlayerLoading value) loading,
    required TResult Function(PlayerLoaded value) loaded,
    required TResult Function(PlayerError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlayerInitial value)? initial,
    TResult? Function(PlayerLoading value)? loading,
    TResult? Function(PlayerLoaded value)? loaded,
    TResult? Function(PlayerError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayerInitial value)? initial,
    TResult Function(PlayerLoading value)? loading,
    TResult Function(PlayerLoaded value)? loaded,
    TResult Function(PlayerError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class PlayerError implements PlayerState {
  const factory PlayerError({required final String message}) =
      _$PlayerErrorImpl;

  String get message;

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayerErrorImplCopyWith<_$PlayerErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
