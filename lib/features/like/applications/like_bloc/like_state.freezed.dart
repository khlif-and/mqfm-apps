// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'like_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$LikeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AudioEntity> audios) loaded,
    required TResult Function(String message) toggled,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AudioEntity> audios)? loaded,
    TResult? Function(String message)? toggled,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AudioEntity> audios)? loaded,
    TResult Function(String message)? toggled,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LikeInitial value) initial,
    required TResult Function(LikeLoading value) loading,
    required TResult Function(LikeLoaded value) loaded,
    required TResult Function(LikeToggled value) toggled,
    required TResult Function(LikeError value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LikeInitial value)? initial,
    TResult? Function(LikeLoading value)? loading,
    TResult? Function(LikeLoaded value)? loaded,
    TResult? Function(LikeToggled value)? toggled,
    TResult? Function(LikeError value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LikeInitial value)? initial,
    TResult Function(LikeLoading value)? loading,
    TResult Function(LikeLoaded value)? loaded,
    TResult Function(LikeToggled value)? toggled,
    TResult Function(LikeError value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikeStateCopyWith<$Res> {
  factory $LikeStateCopyWith(LikeState value, $Res Function(LikeState) then) =
      _$LikeStateCopyWithImpl<$Res, LikeState>;
}

/// @nodoc
class _$LikeStateCopyWithImpl<$Res, $Val extends LikeState>
    implements $LikeStateCopyWith<$Res> {
  _$LikeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LikeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LikeInitialImplCopyWith<$Res> {
  factory _$$LikeInitialImplCopyWith(
    _$LikeInitialImpl value,
    $Res Function(_$LikeInitialImpl) then,
  ) = __$$LikeInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LikeInitialImplCopyWithImpl<$Res>
    extends _$LikeStateCopyWithImpl<$Res, _$LikeInitialImpl>
    implements _$$LikeInitialImplCopyWith<$Res> {
  __$$LikeInitialImplCopyWithImpl(
    _$LikeInitialImpl _value,
    $Res Function(_$LikeInitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LikeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LikeInitialImpl implements LikeInitial {
  const _$LikeInitialImpl();

  @override
  String toString() {
    return 'LikeState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LikeInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AudioEntity> audios) loaded,
    required TResult Function(String message) toggled,
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
    TResult? Function(String message)? toggled,
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
    TResult Function(String message)? toggled,
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
    required TResult Function(LikeInitial value) initial,
    required TResult Function(LikeLoading value) loading,
    required TResult Function(LikeLoaded value) loaded,
    required TResult Function(LikeToggled value) toggled,
    required TResult Function(LikeError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LikeInitial value)? initial,
    TResult? Function(LikeLoading value)? loading,
    TResult? Function(LikeLoaded value)? loaded,
    TResult? Function(LikeToggled value)? toggled,
    TResult? Function(LikeError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LikeInitial value)? initial,
    TResult Function(LikeLoading value)? loading,
    TResult Function(LikeLoaded value)? loaded,
    TResult Function(LikeToggled value)? toggled,
    TResult Function(LikeError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class LikeInitial implements LikeState {
  const factory LikeInitial() = _$LikeInitialImpl;
}

/// @nodoc
abstract class _$$LikeLoadingImplCopyWith<$Res> {
  factory _$$LikeLoadingImplCopyWith(
    _$LikeLoadingImpl value,
    $Res Function(_$LikeLoadingImpl) then,
  ) = __$$LikeLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LikeLoadingImplCopyWithImpl<$Res>
    extends _$LikeStateCopyWithImpl<$Res, _$LikeLoadingImpl>
    implements _$$LikeLoadingImplCopyWith<$Res> {
  __$$LikeLoadingImplCopyWithImpl(
    _$LikeLoadingImpl _value,
    $Res Function(_$LikeLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LikeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LikeLoadingImpl implements LikeLoading {
  const _$LikeLoadingImpl();

  @override
  String toString() {
    return 'LikeState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LikeLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AudioEntity> audios) loaded,
    required TResult Function(String message) toggled,
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
    TResult? Function(String message)? toggled,
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
    TResult Function(String message)? toggled,
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
    required TResult Function(LikeInitial value) initial,
    required TResult Function(LikeLoading value) loading,
    required TResult Function(LikeLoaded value) loaded,
    required TResult Function(LikeToggled value) toggled,
    required TResult Function(LikeError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LikeInitial value)? initial,
    TResult? Function(LikeLoading value)? loading,
    TResult? Function(LikeLoaded value)? loaded,
    TResult? Function(LikeToggled value)? toggled,
    TResult? Function(LikeError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LikeInitial value)? initial,
    TResult Function(LikeLoading value)? loading,
    TResult Function(LikeLoaded value)? loaded,
    TResult Function(LikeToggled value)? toggled,
    TResult Function(LikeError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LikeLoading implements LikeState {
  const factory LikeLoading() = _$LikeLoadingImpl;
}

/// @nodoc
abstract class _$$LikeLoadedImplCopyWith<$Res> {
  factory _$$LikeLoadedImplCopyWith(
    _$LikeLoadedImpl value,
    $Res Function(_$LikeLoadedImpl) then,
  ) = __$$LikeLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AudioEntity> audios});
}

/// @nodoc
class __$$LikeLoadedImplCopyWithImpl<$Res>
    extends _$LikeStateCopyWithImpl<$Res, _$LikeLoadedImpl>
    implements _$$LikeLoadedImplCopyWith<$Res> {
  __$$LikeLoadedImplCopyWithImpl(
    _$LikeLoadedImpl _value,
    $Res Function(_$LikeLoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LikeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? audios = null}) {
    return _then(
      _$LikeLoadedImpl(
        audios: null == audios
            ? _value._audios
            : audios // ignore: cast_nullable_to_non_nullable
                  as List<AudioEntity>,
      ),
    );
  }
}

/// @nodoc

class _$LikeLoadedImpl implements LikeLoaded {
  const _$LikeLoadedImpl({required final List<AudioEntity> audios})
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
    return 'LikeState.loaded(audios: $audios)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikeLoadedImpl &&
            const DeepCollectionEquality().equals(other._audios, _audios));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_audios));

  /// Create a copy of LikeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LikeLoadedImplCopyWith<_$LikeLoadedImpl> get copyWith =>
      __$$LikeLoadedImplCopyWithImpl<_$LikeLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AudioEntity> audios) loaded,
    required TResult Function(String message) toggled,
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
    TResult? Function(String message)? toggled,
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
    TResult Function(String message)? toggled,
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
    required TResult Function(LikeInitial value) initial,
    required TResult Function(LikeLoading value) loading,
    required TResult Function(LikeLoaded value) loaded,
    required TResult Function(LikeToggled value) toggled,
    required TResult Function(LikeError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LikeInitial value)? initial,
    TResult? Function(LikeLoading value)? loading,
    TResult? Function(LikeLoaded value)? loaded,
    TResult? Function(LikeToggled value)? toggled,
    TResult? Function(LikeError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LikeInitial value)? initial,
    TResult Function(LikeLoading value)? loading,
    TResult Function(LikeLoaded value)? loaded,
    TResult Function(LikeToggled value)? toggled,
    TResult Function(LikeError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LikeLoaded implements LikeState {
  const factory LikeLoaded({required final List<AudioEntity> audios}) =
      _$LikeLoadedImpl;

  List<AudioEntity> get audios;

  /// Create a copy of LikeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LikeLoadedImplCopyWith<_$LikeLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LikeToggledImplCopyWith<$Res> {
  factory _$$LikeToggledImplCopyWith(
    _$LikeToggledImpl value,
    $Res Function(_$LikeToggledImpl) then,
  ) = __$$LikeToggledImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$LikeToggledImplCopyWithImpl<$Res>
    extends _$LikeStateCopyWithImpl<$Res, _$LikeToggledImpl>
    implements _$$LikeToggledImplCopyWith<$Res> {
  __$$LikeToggledImplCopyWithImpl(
    _$LikeToggledImpl _value,
    $Res Function(_$LikeToggledImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LikeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$LikeToggledImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$LikeToggledImpl implements LikeToggled {
  const _$LikeToggledImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'LikeState.toggled(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikeToggledImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of LikeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LikeToggledImplCopyWith<_$LikeToggledImpl> get copyWith =>
      __$$LikeToggledImplCopyWithImpl<_$LikeToggledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AudioEntity> audios) loaded,
    required TResult Function(String message) toggled,
    required TResult Function(String message) error,
  }) {
    return toggled(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AudioEntity> audios)? loaded,
    TResult? Function(String message)? toggled,
    TResult? Function(String message)? error,
  }) {
    return toggled?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AudioEntity> audios)? loaded,
    TResult Function(String message)? toggled,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (toggled != null) {
      return toggled(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LikeInitial value) initial,
    required TResult Function(LikeLoading value) loading,
    required TResult Function(LikeLoaded value) loaded,
    required TResult Function(LikeToggled value) toggled,
    required TResult Function(LikeError value) error,
  }) {
    return toggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LikeInitial value)? initial,
    TResult? Function(LikeLoading value)? loading,
    TResult? Function(LikeLoaded value)? loaded,
    TResult? Function(LikeToggled value)? toggled,
    TResult? Function(LikeError value)? error,
  }) {
    return toggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LikeInitial value)? initial,
    TResult Function(LikeLoading value)? loading,
    TResult Function(LikeLoaded value)? loaded,
    TResult Function(LikeToggled value)? toggled,
    TResult Function(LikeError value)? error,
    required TResult orElse(),
  }) {
    if (toggled != null) {
      return toggled(this);
    }
    return orElse();
  }
}

abstract class LikeToggled implements LikeState {
  const factory LikeToggled({required final String message}) =
      _$LikeToggledImpl;

  String get message;

  /// Create a copy of LikeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LikeToggledImplCopyWith<_$LikeToggledImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LikeErrorImplCopyWith<$Res> {
  factory _$$LikeErrorImplCopyWith(
    _$LikeErrorImpl value,
    $Res Function(_$LikeErrorImpl) then,
  ) = __$$LikeErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$LikeErrorImplCopyWithImpl<$Res>
    extends _$LikeStateCopyWithImpl<$Res, _$LikeErrorImpl>
    implements _$$LikeErrorImplCopyWith<$Res> {
  __$$LikeErrorImplCopyWithImpl(
    _$LikeErrorImpl _value,
    $Res Function(_$LikeErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LikeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$LikeErrorImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$LikeErrorImpl implements LikeError {
  const _$LikeErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'LikeState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikeErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of LikeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LikeErrorImplCopyWith<_$LikeErrorImpl> get copyWith =>
      __$$LikeErrorImplCopyWithImpl<_$LikeErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AudioEntity> audios) loaded,
    required TResult Function(String message) toggled,
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
    TResult? Function(String message)? toggled,
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
    TResult Function(String message)? toggled,
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
    required TResult Function(LikeInitial value) initial,
    required TResult Function(LikeLoading value) loading,
    required TResult Function(LikeLoaded value) loaded,
    required TResult Function(LikeToggled value) toggled,
    required TResult Function(LikeError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LikeInitial value)? initial,
    TResult? Function(LikeLoading value)? loading,
    TResult? Function(LikeLoaded value)? loaded,
    TResult? Function(LikeToggled value)? toggled,
    TResult? Function(LikeError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LikeInitial value)? initial,
    TResult Function(LikeLoading value)? loading,
    TResult Function(LikeLoaded value)? loaded,
    TResult Function(LikeToggled value)? toggled,
    TResult Function(LikeError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LikeError implements LikeState {
  const factory LikeError({required final String message}) = _$LikeErrorImpl;

  String get message;

  /// Create a copy of LikeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LikeErrorImplCopyWith<_$LikeErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
