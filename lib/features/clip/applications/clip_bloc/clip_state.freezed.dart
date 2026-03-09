// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clip_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ClipState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ClipEntity> clips) loaded,
    required TResult Function(String message) actionSuccess,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ClipEntity> clips)? loaded,
    TResult? Function(String message)? actionSuccess,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ClipEntity> clips)? loaded,
    TResult Function(String message)? actionSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClipInitial value) initial,
    required TResult Function(ClipLoading value) loading,
    required TResult Function(ClipLoaded value) loaded,
    required TResult Function(ClipActionSuccess value) actionSuccess,
    required TResult Function(ClipError value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClipInitial value)? initial,
    TResult? Function(ClipLoading value)? loading,
    TResult? Function(ClipLoaded value)? loaded,
    TResult? Function(ClipActionSuccess value)? actionSuccess,
    TResult? Function(ClipError value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClipInitial value)? initial,
    TResult Function(ClipLoading value)? loading,
    TResult Function(ClipLoaded value)? loaded,
    TResult Function(ClipActionSuccess value)? actionSuccess,
    TResult Function(ClipError value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClipStateCopyWith<$Res> {
  factory $ClipStateCopyWith(ClipState value, $Res Function(ClipState) then) =
      _$ClipStateCopyWithImpl<$Res, ClipState>;
}

/// @nodoc
class _$ClipStateCopyWithImpl<$Res, $Val extends ClipState>
    implements $ClipStateCopyWith<$Res> {
  _$ClipStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClipState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ClipInitialImplCopyWith<$Res> {
  factory _$$ClipInitialImplCopyWith(
    _$ClipInitialImpl value,
    $Res Function(_$ClipInitialImpl) then,
  ) = __$$ClipInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClipInitialImplCopyWithImpl<$Res>
    extends _$ClipStateCopyWithImpl<$Res, _$ClipInitialImpl>
    implements _$$ClipInitialImplCopyWith<$Res> {
  __$$ClipInitialImplCopyWithImpl(
    _$ClipInitialImpl _value,
    $Res Function(_$ClipInitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ClipState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClipInitialImpl implements ClipInitial {
  const _$ClipInitialImpl();

  @override
  String toString() {
    return 'ClipState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClipInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ClipEntity> clips) loaded,
    required TResult Function(String message) actionSuccess,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ClipEntity> clips)? loaded,
    TResult? Function(String message)? actionSuccess,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ClipEntity> clips)? loaded,
    TResult Function(String message)? actionSuccess,
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
    required TResult Function(ClipInitial value) initial,
    required TResult Function(ClipLoading value) loading,
    required TResult Function(ClipLoaded value) loaded,
    required TResult Function(ClipActionSuccess value) actionSuccess,
    required TResult Function(ClipError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClipInitial value)? initial,
    TResult? Function(ClipLoading value)? loading,
    TResult? Function(ClipLoaded value)? loaded,
    TResult? Function(ClipActionSuccess value)? actionSuccess,
    TResult? Function(ClipError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClipInitial value)? initial,
    TResult Function(ClipLoading value)? loading,
    TResult Function(ClipLoaded value)? loaded,
    TResult Function(ClipActionSuccess value)? actionSuccess,
    TResult Function(ClipError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ClipInitial implements ClipState {
  const factory ClipInitial() = _$ClipInitialImpl;
}

/// @nodoc
abstract class _$$ClipLoadingImplCopyWith<$Res> {
  factory _$$ClipLoadingImplCopyWith(
    _$ClipLoadingImpl value,
    $Res Function(_$ClipLoadingImpl) then,
  ) = __$$ClipLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClipLoadingImplCopyWithImpl<$Res>
    extends _$ClipStateCopyWithImpl<$Res, _$ClipLoadingImpl>
    implements _$$ClipLoadingImplCopyWith<$Res> {
  __$$ClipLoadingImplCopyWithImpl(
    _$ClipLoadingImpl _value,
    $Res Function(_$ClipLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ClipState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClipLoadingImpl implements ClipLoading {
  const _$ClipLoadingImpl();

  @override
  String toString() {
    return 'ClipState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClipLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ClipEntity> clips) loaded,
    required TResult Function(String message) actionSuccess,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ClipEntity> clips)? loaded,
    TResult? Function(String message)? actionSuccess,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ClipEntity> clips)? loaded,
    TResult Function(String message)? actionSuccess,
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
    required TResult Function(ClipInitial value) initial,
    required TResult Function(ClipLoading value) loading,
    required TResult Function(ClipLoaded value) loaded,
    required TResult Function(ClipActionSuccess value) actionSuccess,
    required TResult Function(ClipError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClipInitial value)? initial,
    TResult? Function(ClipLoading value)? loading,
    TResult? Function(ClipLoaded value)? loaded,
    TResult? Function(ClipActionSuccess value)? actionSuccess,
    TResult? Function(ClipError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClipInitial value)? initial,
    TResult Function(ClipLoading value)? loading,
    TResult Function(ClipLoaded value)? loaded,
    TResult Function(ClipActionSuccess value)? actionSuccess,
    TResult Function(ClipError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ClipLoading implements ClipState {
  const factory ClipLoading() = _$ClipLoadingImpl;
}

/// @nodoc
abstract class _$$ClipLoadedImplCopyWith<$Res> {
  factory _$$ClipLoadedImplCopyWith(
    _$ClipLoadedImpl value,
    $Res Function(_$ClipLoadedImpl) then,
  ) = __$$ClipLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ClipEntity> clips});
}

/// @nodoc
class __$$ClipLoadedImplCopyWithImpl<$Res>
    extends _$ClipStateCopyWithImpl<$Res, _$ClipLoadedImpl>
    implements _$$ClipLoadedImplCopyWith<$Res> {
  __$$ClipLoadedImplCopyWithImpl(
    _$ClipLoadedImpl _value,
    $Res Function(_$ClipLoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ClipState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? clips = null}) {
    return _then(
      _$ClipLoadedImpl(
        clips: null == clips
            ? _value._clips
            : clips // ignore: cast_nullable_to_non_nullable
                  as List<ClipEntity>,
      ),
    );
  }
}

/// @nodoc

class _$ClipLoadedImpl implements ClipLoaded {
  const _$ClipLoadedImpl({required final List<ClipEntity> clips})
    : _clips = clips;

  final List<ClipEntity> _clips;
  @override
  List<ClipEntity> get clips {
    if (_clips is EqualUnmodifiableListView) return _clips;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_clips);
  }

  @override
  String toString() {
    return 'ClipState.loaded(clips: $clips)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClipLoadedImpl &&
            const DeepCollectionEquality().equals(other._clips, _clips));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_clips));

  /// Create a copy of ClipState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClipLoadedImplCopyWith<_$ClipLoadedImpl> get copyWith =>
      __$$ClipLoadedImplCopyWithImpl<_$ClipLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ClipEntity> clips) loaded,
    required TResult Function(String message) actionSuccess,
    required TResult Function(String message) error,
  }) {
    return loaded(clips);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ClipEntity> clips)? loaded,
    TResult? Function(String message)? actionSuccess,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(clips);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ClipEntity> clips)? loaded,
    TResult Function(String message)? actionSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(clips);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClipInitial value) initial,
    required TResult Function(ClipLoading value) loading,
    required TResult Function(ClipLoaded value) loaded,
    required TResult Function(ClipActionSuccess value) actionSuccess,
    required TResult Function(ClipError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClipInitial value)? initial,
    TResult? Function(ClipLoading value)? loading,
    TResult? Function(ClipLoaded value)? loaded,
    TResult? Function(ClipActionSuccess value)? actionSuccess,
    TResult? Function(ClipError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClipInitial value)? initial,
    TResult Function(ClipLoading value)? loading,
    TResult Function(ClipLoaded value)? loaded,
    TResult Function(ClipActionSuccess value)? actionSuccess,
    TResult Function(ClipError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ClipLoaded implements ClipState {
  const factory ClipLoaded({required final List<ClipEntity> clips}) =
      _$ClipLoadedImpl;

  List<ClipEntity> get clips;

  /// Create a copy of ClipState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClipLoadedImplCopyWith<_$ClipLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClipActionSuccessImplCopyWith<$Res> {
  factory _$$ClipActionSuccessImplCopyWith(
    _$ClipActionSuccessImpl value,
    $Res Function(_$ClipActionSuccessImpl) then,
  ) = __$$ClipActionSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ClipActionSuccessImplCopyWithImpl<$Res>
    extends _$ClipStateCopyWithImpl<$Res, _$ClipActionSuccessImpl>
    implements _$$ClipActionSuccessImplCopyWith<$Res> {
  __$$ClipActionSuccessImplCopyWithImpl(
    _$ClipActionSuccessImpl _value,
    $Res Function(_$ClipActionSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ClipState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$ClipActionSuccessImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ClipActionSuccessImpl implements ClipActionSuccess {
  const _$ClipActionSuccessImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ClipState.actionSuccess(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClipActionSuccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ClipState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClipActionSuccessImplCopyWith<_$ClipActionSuccessImpl> get copyWith =>
      __$$ClipActionSuccessImplCopyWithImpl<_$ClipActionSuccessImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ClipEntity> clips) loaded,
    required TResult Function(String message) actionSuccess,
    required TResult Function(String message) error,
  }) {
    return actionSuccess(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ClipEntity> clips)? loaded,
    TResult? Function(String message)? actionSuccess,
    TResult? Function(String message)? error,
  }) {
    return actionSuccess?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ClipEntity> clips)? loaded,
    TResult Function(String message)? actionSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (actionSuccess != null) {
      return actionSuccess(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClipInitial value) initial,
    required TResult Function(ClipLoading value) loading,
    required TResult Function(ClipLoaded value) loaded,
    required TResult Function(ClipActionSuccess value) actionSuccess,
    required TResult Function(ClipError value) error,
  }) {
    return actionSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClipInitial value)? initial,
    TResult? Function(ClipLoading value)? loading,
    TResult? Function(ClipLoaded value)? loaded,
    TResult? Function(ClipActionSuccess value)? actionSuccess,
    TResult? Function(ClipError value)? error,
  }) {
    return actionSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClipInitial value)? initial,
    TResult Function(ClipLoading value)? loading,
    TResult Function(ClipLoaded value)? loaded,
    TResult Function(ClipActionSuccess value)? actionSuccess,
    TResult Function(ClipError value)? error,
    required TResult orElse(),
  }) {
    if (actionSuccess != null) {
      return actionSuccess(this);
    }
    return orElse();
  }
}

abstract class ClipActionSuccess implements ClipState {
  const factory ClipActionSuccess({required final String message}) =
      _$ClipActionSuccessImpl;

  String get message;

  /// Create a copy of ClipState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClipActionSuccessImplCopyWith<_$ClipActionSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClipErrorImplCopyWith<$Res> {
  factory _$$ClipErrorImplCopyWith(
    _$ClipErrorImpl value,
    $Res Function(_$ClipErrorImpl) then,
  ) = __$$ClipErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ClipErrorImplCopyWithImpl<$Res>
    extends _$ClipStateCopyWithImpl<$Res, _$ClipErrorImpl>
    implements _$$ClipErrorImplCopyWith<$Res> {
  __$$ClipErrorImplCopyWithImpl(
    _$ClipErrorImpl _value,
    $Res Function(_$ClipErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ClipState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$ClipErrorImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ClipErrorImpl implements ClipError {
  const _$ClipErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ClipState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClipErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ClipState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClipErrorImplCopyWith<_$ClipErrorImpl> get copyWith =>
      __$$ClipErrorImplCopyWithImpl<_$ClipErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ClipEntity> clips) loaded,
    required TResult Function(String message) actionSuccess,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ClipEntity> clips)? loaded,
    TResult? Function(String message)? actionSuccess,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ClipEntity> clips)? loaded,
    TResult Function(String message)? actionSuccess,
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
    required TResult Function(ClipInitial value) initial,
    required TResult Function(ClipLoading value) loading,
    required TResult Function(ClipLoaded value) loaded,
    required TResult Function(ClipActionSuccess value) actionSuccess,
    required TResult Function(ClipError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClipInitial value)? initial,
    TResult? Function(ClipLoading value)? loading,
    TResult? Function(ClipLoaded value)? loaded,
    TResult? Function(ClipActionSuccess value)? actionSuccess,
    TResult? Function(ClipError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClipInitial value)? initial,
    TResult Function(ClipLoading value)? loading,
    TResult Function(ClipLoaded value)? loaded,
    TResult Function(ClipActionSuccess value)? actionSuccess,
    TResult Function(ClipError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ClipError implements ClipState {
  const factory ClipError({required final String message}) = _$ClipErrorImpl;

  String get message;

  /// Create a copy of ClipState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClipErrorImplCopyWith<_$ClipErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
