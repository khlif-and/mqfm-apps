// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audio_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AudioListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AudioEntity> audios) loaded,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AudioEntity> audios)? loaded,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AudioEntity> audios)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AudioListInitial value) initial,
    required TResult Function(AudioListLoading value) loading,
    required TResult Function(AudioListLoaded value) loaded,
    required TResult Function(AudioListError value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AudioListInitial value)? initial,
    TResult? Function(AudioListLoading value)? loading,
    TResult? Function(AudioListLoaded value)? loaded,
    TResult? Function(AudioListError value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AudioListInitial value)? initial,
    TResult Function(AudioListLoading value)? loading,
    TResult Function(AudioListLoaded value)? loaded,
    TResult Function(AudioListError value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioListStateCopyWith<$Res> {
  factory $AudioListStateCopyWith(
    AudioListState value,
    $Res Function(AudioListState) then,
  ) = _$AudioListStateCopyWithImpl<$Res, AudioListState>;
}

/// @nodoc
class _$AudioListStateCopyWithImpl<$Res, $Val extends AudioListState>
    implements $AudioListStateCopyWith<$Res> {
  _$AudioListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AudioListState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AudioListInitialImplCopyWith<$Res> {
  factory _$$AudioListInitialImplCopyWith(
    _$AudioListInitialImpl value,
    $Res Function(_$AudioListInitialImpl) then,
  ) = __$$AudioListInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AudioListInitialImplCopyWithImpl<$Res>
    extends _$AudioListStateCopyWithImpl<$Res, _$AudioListInitialImpl>
    implements _$$AudioListInitialImplCopyWith<$Res> {
  __$$AudioListInitialImplCopyWithImpl(
    _$AudioListInitialImpl _value,
    $Res Function(_$AudioListInitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AudioListState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AudioListInitialImpl implements AudioListInitial {
  const _$AudioListInitialImpl();

  @override
  String toString() {
    return 'AudioListState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AudioListInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AudioEntity> audios) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AudioEntity> audios)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AudioEntity> audios)? loaded,
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
    required TResult Function(AudioListInitial value) initial,
    required TResult Function(AudioListLoading value) loading,
    required TResult Function(AudioListLoaded value) loaded,
    required TResult Function(AudioListError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AudioListInitial value)? initial,
    TResult? Function(AudioListLoading value)? loading,
    TResult? Function(AudioListLoaded value)? loaded,
    TResult? Function(AudioListError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AudioListInitial value)? initial,
    TResult Function(AudioListLoading value)? loading,
    TResult Function(AudioListLoaded value)? loaded,
    TResult Function(AudioListError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AudioListInitial implements AudioListState {
  const factory AudioListInitial() = _$AudioListInitialImpl;
}

/// @nodoc
abstract class _$$AudioListLoadingImplCopyWith<$Res> {
  factory _$$AudioListLoadingImplCopyWith(
    _$AudioListLoadingImpl value,
    $Res Function(_$AudioListLoadingImpl) then,
  ) = __$$AudioListLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AudioListLoadingImplCopyWithImpl<$Res>
    extends _$AudioListStateCopyWithImpl<$Res, _$AudioListLoadingImpl>
    implements _$$AudioListLoadingImplCopyWith<$Res> {
  __$$AudioListLoadingImplCopyWithImpl(
    _$AudioListLoadingImpl _value,
    $Res Function(_$AudioListLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AudioListState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AudioListLoadingImpl implements AudioListLoading {
  const _$AudioListLoadingImpl();

  @override
  String toString() {
    return 'AudioListState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AudioListLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AudioEntity> audios) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AudioEntity> audios)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AudioEntity> audios)? loaded,
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
    required TResult Function(AudioListInitial value) initial,
    required TResult Function(AudioListLoading value) loading,
    required TResult Function(AudioListLoaded value) loaded,
    required TResult Function(AudioListError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AudioListInitial value)? initial,
    TResult? Function(AudioListLoading value)? loading,
    TResult? Function(AudioListLoaded value)? loaded,
    TResult? Function(AudioListError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AudioListInitial value)? initial,
    TResult Function(AudioListLoading value)? loading,
    TResult Function(AudioListLoaded value)? loaded,
    TResult Function(AudioListError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AudioListLoading implements AudioListState {
  const factory AudioListLoading() = _$AudioListLoadingImpl;
}

/// @nodoc
abstract class _$$AudioListLoadedImplCopyWith<$Res> {
  factory _$$AudioListLoadedImplCopyWith(
    _$AudioListLoadedImpl value,
    $Res Function(_$AudioListLoadedImpl) then,
  ) = __$$AudioListLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AudioEntity> audios});
}

/// @nodoc
class __$$AudioListLoadedImplCopyWithImpl<$Res>
    extends _$AudioListStateCopyWithImpl<$Res, _$AudioListLoadedImpl>
    implements _$$AudioListLoadedImplCopyWith<$Res> {
  __$$AudioListLoadedImplCopyWithImpl(
    _$AudioListLoadedImpl _value,
    $Res Function(_$AudioListLoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AudioListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? audios = null}) {
    return _then(
      _$AudioListLoadedImpl(
        audios: null == audios
            ? _value._audios
            : audios // ignore: cast_nullable_to_non_nullable
                  as List<AudioEntity>,
      ),
    );
  }
}

/// @nodoc

class _$AudioListLoadedImpl implements AudioListLoaded {
  const _$AudioListLoadedImpl({required final List<AudioEntity> audios})
    : _audios = audios;

  final List<AudioEntity> _audios;
  @override
  List<AudioEntity> get audios {
    if (_audios is EqualUnmodifiableListView) return _audios;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_audios);
  }

  @override
  String toString() {
    return 'AudioListState.loaded(audios: $audios)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudioListLoadedImpl &&
            const DeepCollectionEquality().equals(other._audios, _audios));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_audios));

  /// Create a copy of AudioListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AudioListLoadedImplCopyWith<_$AudioListLoadedImpl> get copyWith =>
      __$$AudioListLoadedImplCopyWithImpl<_$AudioListLoadedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AudioEntity> audios) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(audios);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AudioEntity> audios)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(audios);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AudioEntity> audios)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(audios);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AudioListInitial value) initial,
    required TResult Function(AudioListLoading value) loading,
    required TResult Function(AudioListLoaded value) loaded,
    required TResult Function(AudioListError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AudioListInitial value)? initial,
    TResult? Function(AudioListLoading value)? loading,
    TResult? Function(AudioListLoaded value)? loaded,
    TResult? Function(AudioListError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AudioListInitial value)? initial,
    TResult Function(AudioListLoading value)? loading,
    TResult Function(AudioListLoaded value)? loaded,
    TResult Function(AudioListError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class AudioListLoaded implements AudioListState {
  const factory AudioListLoaded({required final List<AudioEntity> audios}) =
      _$AudioListLoadedImpl;

  List<AudioEntity> get audios;

  /// Create a copy of AudioListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AudioListLoadedImplCopyWith<_$AudioListLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AudioListErrorImplCopyWith<$Res> {
  factory _$$AudioListErrorImplCopyWith(
    _$AudioListErrorImpl value,
    $Res Function(_$AudioListErrorImpl) then,
  ) = __$$AudioListErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$AudioListErrorImplCopyWithImpl<$Res>
    extends _$AudioListStateCopyWithImpl<$Res, _$AudioListErrorImpl>
    implements _$$AudioListErrorImplCopyWith<$Res> {
  __$$AudioListErrorImplCopyWithImpl(
    _$AudioListErrorImpl _value,
    $Res Function(_$AudioListErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AudioListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$AudioListErrorImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$AudioListErrorImpl implements AudioListError {
  const _$AudioListErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AudioListState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudioListErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AudioListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AudioListErrorImplCopyWith<_$AudioListErrorImpl> get copyWith =>
      __$$AudioListErrorImplCopyWithImpl<_$AudioListErrorImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AudioEntity> audios) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AudioEntity> audios)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AudioEntity> audios)? loaded,
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
    required TResult Function(AudioListInitial value) initial,
    required TResult Function(AudioListLoading value) loading,
    required TResult Function(AudioListLoaded value) loaded,
    required TResult Function(AudioListError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AudioListInitial value)? initial,
    TResult? Function(AudioListLoading value)? loading,
    TResult? Function(AudioListLoaded value)? loaded,
    TResult? Function(AudioListError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AudioListInitial value)? initial,
    TResult Function(AudioListLoading value)? loading,
    TResult Function(AudioListLoaded value)? loaded,
    TResult Function(AudioListError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AudioListError implements AudioListState {
  const factory AudioListError({required final String message}) =
      _$AudioListErrorImpl;

  String get message;

  /// Create a copy of AudioListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AudioListErrorImplCopyWith<_$AudioListErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
