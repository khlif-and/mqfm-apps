// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stats_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$StatsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(StatsRecapEntity recap) recapLoaded,
    required TResult Function(String message) recorded,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(StatsRecapEntity recap)? recapLoaded,
    TResult? Function(String message)? recorded,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(StatsRecapEntity recap)? recapLoaded,
    TResult Function(String message)? recorded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatsInitial value) initial,
    required TResult Function(StatsLoading value) loading,
    required TResult Function(StatsRecapLoaded value) recapLoaded,
    required TResult Function(StatsRecorded value) recorded,
    required TResult Function(StatsError value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatsInitial value)? initial,
    TResult? Function(StatsLoading value)? loading,
    TResult? Function(StatsRecapLoaded value)? recapLoaded,
    TResult? Function(StatsRecorded value)? recorded,
    TResult? Function(StatsError value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatsInitial value)? initial,
    TResult Function(StatsLoading value)? loading,
    TResult Function(StatsRecapLoaded value)? recapLoaded,
    TResult Function(StatsRecorded value)? recorded,
    TResult Function(StatsError value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatsStateCopyWith<$Res> {
  factory $StatsStateCopyWith(
    StatsState value,
    $Res Function(StatsState) then,
  ) = _$StatsStateCopyWithImpl<$Res, StatsState>;
}

/// @nodoc
class _$StatsStateCopyWithImpl<$Res, $Val extends StatsState>
    implements $StatsStateCopyWith<$Res> {
  _$StatsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StatsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StatsInitialImplCopyWith<$Res> {
  factory _$$StatsInitialImplCopyWith(
    _$StatsInitialImpl value,
    $Res Function(_$StatsInitialImpl) then,
  ) = __$$StatsInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StatsInitialImplCopyWithImpl<$Res>
    extends _$StatsStateCopyWithImpl<$Res, _$StatsInitialImpl>
    implements _$$StatsInitialImplCopyWith<$Res> {
  __$$StatsInitialImplCopyWithImpl(
    _$StatsInitialImpl _value,
    $Res Function(_$StatsInitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StatsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StatsInitialImpl implements StatsInitial {
  const _$StatsInitialImpl();

  @override
  String toString() {
    return 'StatsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StatsInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(StatsRecapEntity recap) recapLoaded,
    required TResult Function(String message) recorded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(StatsRecapEntity recap)? recapLoaded,
    TResult? Function(String message)? recorded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(StatsRecapEntity recap)? recapLoaded,
    TResult Function(String message)? recorded,
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
    required TResult Function(StatsInitial value) initial,
    required TResult Function(StatsLoading value) loading,
    required TResult Function(StatsRecapLoaded value) recapLoaded,
    required TResult Function(StatsRecorded value) recorded,
    required TResult Function(StatsError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatsInitial value)? initial,
    TResult? Function(StatsLoading value)? loading,
    TResult? Function(StatsRecapLoaded value)? recapLoaded,
    TResult? Function(StatsRecorded value)? recorded,
    TResult? Function(StatsError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatsInitial value)? initial,
    TResult Function(StatsLoading value)? loading,
    TResult Function(StatsRecapLoaded value)? recapLoaded,
    TResult Function(StatsRecorded value)? recorded,
    TResult Function(StatsError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class StatsInitial implements StatsState {
  const factory StatsInitial() = _$StatsInitialImpl;
}

/// @nodoc
abstract class _$$StatsLoadingImplCopyWith<$Res> {
  factory _$$StatsLoadingImplCopyWith(
    _$StatsLoadingImpl value,
    $Res Function(_$StatsLoadingImpl) then,
  ) = __$$StatsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StatsLoadingImplCopyWithImpl<$Res>
    extends _$StatsStateCopyWithImpl<$Res, _$StatsLoadingImpl>
    implements _$$StatsLoadingImplCopyWith<$Res> {
  __$$StatsLoadingImplCopyWithImpl(
    _$StatsLoadingImpl _value,
    $Res Function(_$StatsLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StatsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StatsLoadingImpl implements StatsLoading {
  const _$StatsLoadingImpl();

  @override
  String toString() {
    return 'StatsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StatsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(StatsRecapEntity recap) recapLoaded,
    required TResult Function(String message) recorded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(StatsRecapEntity recap)? recapLoaded,
    TResult? Function(String message)? recorded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(StatsRecapEntity recap)? recapLoaded,
    TResult Function(String message)? recorded,
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
    required TResult Function(StatsInitial value) initial,
    required TResult Function(StatsLoading value) loading,
    required TResult Function(StatsRecapLoaded value) recapLoaded,
    required TResult Function(StatsRecorded value) recorded,
    required TResult Function(StatsError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatsInitial value)? initial,
    TResult? Function(StatsLoading value)? loading,
    TResult? Function(StatsRecapLoaded value)? recapLoaded,
    TResult? Function(StatsRecorded value)? recorded,
    TResult? Function(StatsError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatsInitial value)? initial,
    TResult Function(StatsLoading value)? loading,
    TResult Function(StatsRecapLoaded value)? recapLoaded,
    TResult Function(StatsRecorded value)? recorded,
    TResult Function(StatsError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class StatsLoading implements StatsState {
  const factory StatsLoading() = _$StatsLoadingImpl;
}

/// @nodoc
abstract class _$$StatsRecapLoadedImplCopyWith<$Res> {
  factory _$$StatsRecapLoadedImplCopyWith(
    _$StatsRecapLoadedImpl value,
    $Res Function(_$StatsRecapLoadedImpl) then,
  ) = __$$StatsRecapLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({StatsRecapEntity recap});

  $StatsRecapEntityCopyWith<$Res> get recap;
}

/// @nodoc
class __$$StatsRecapLoadedImplCopyWithImpl<$Res>
    extends _$StatsStateCopyWithImpl<$Res, _$StatsRecapLoadedImpl>
    implements _$$StatsRecapLoadedImplCopyWith<$Res> {
  __$$StatsRecapLoadedImplCopyWithImpl(
    _$StatsRecapLoadedImpl _value,
    $Res Function(_$StatsRecapLoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StatsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? recap = null}) {
    return _then(
      _$StatsRecapLoadedImpl(
        recap: null == recap
            ? _value.recap
            : recap // ignore: cast_nullable_to_non_nullable
                  as StatsRecapEntity,
      ),
    );
  }

  /// Create a copy of StatsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatsRecapEntityCopyWith<$Res> get recap {
    return $StatsRecapEntityCopyWith<$Res>(_value.recap, (value) {
      return _then(_value.copyWith(recap: value));
    });
  }
}

/// @nodoc

class _$StatsRecapLoadedImpl implements StatsRecapLoaded {
  const _$StatsRecapLoadedImpl({required this.recap});

  @override
  final StatsRecapEntity recap;

  @override
  String toString() {
    return 'StatsState.recapLoaded(recap: $recap)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatsRecapLoadedImpl &&
            (identical(other.recap, recap) || other.recap == recap));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recap);

  /// Create a copy of StatsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatsRecapLoadedImplCopyWith<_$StatsRecapLoadedImpl> get copyWith =>
      __$$StatsRecapLoadedImplCopyWithImpl<_$StatsRecapLoadedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(StatsRecapEntity recap) recapLoaded,
    required TResult Function(String message) recorded,
    required TResult Function(String message) error,
  }) {
    return recapLoaded(recap);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(StatsRecapEntity recap)? recapLoaded,
    TResult? Function(String message)? recorded,
    TResult? Function(String message)? error,
  }) {
    return recapLoaded?.call(recap);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(StatsRecapEntity recap)? recapLoaded,
    TResult Function(String message)? recorded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (recapLoaded != null) {
      return recapLoaded(recap);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatsInitial value) initial,
    required TResult Function(StatsLoading value) loading,
    required TResult Function(StatsRecapLoaded value) recapLoaded,
    required TResult Function(StatsRecorded value) recorded,
    required TResult Function(StatsError value) error,
  }) {
    return recapLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatsInitial value)? initial,
    TResult? Function(StatsLoading value)? loading,
    TResult? Function(StatsRecapLoaded value)? recapLoaded,
    TResult? Function(StatsRecorded value)? recorded,
    TResult? Function(StatsError value)? error,
  }) {
    return recapLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatsInitial value)? initial,
    TResult Function(StatsLoading value)? loading,
    TResult Function(StatsRecapLoaded value)? recapLoaded,
    TResult Function(StatsRecorded value)? recorded,
    TResult Function(StatsError value)? error,
    required TResult orElse(),
  }) {
    if (recapLoaded != null) {
      return recapLoaded(this);
    }
    return orElse();
  }
}

abstract class StatsRecapLoaded implements StatsState {
  const factory StatsRecapLoaded({required final StatsRecapEntity recap}) =
      _$StatsRecapLoadedImpl;

  StatsRecapEntity get recap;

  /// Create a copy of StatsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatsRecapLoadedImplCopyWith<_$StatsRecapLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatsRecordedImplCopyWith<$Res> {
  factory _$$StatsRecordedImplCopyWith(
    _$StatsRecordedImpl value,
    $Res Function(_$StatsRecordedImpl) then,
  ) = __$$StatsRecordedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$StatsRecordedImplCopyWithImpl<$Res>
    extends _$StatsStateCopyWithImpl<$Res, _$StatsRecordedImpl>
    implements _$$StatsRecordedImplCopyWith<$Res> {
  __$$StatsRecordedImplCopyWithImpl(
    _$StatsRecordedImpl _value,
    $Res Function(_$StatsRecordedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StatsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$StatsRecordedImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$StatsRecordedImpl implements StatsRecorded {
  const _$StatsRecordedImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'StatsState.recorded(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatsRecordedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of StatsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatsRecordedImplCopyWith<_$StatsRecordedImpl> get copyWith =>
      __$$StatsRecordedImplCopyWithImpl<_$StatsRecordedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(StatsRecapEntity recap) recapLoaded,
    required TResult Function(String message) recorded,
    required TResult Function(String message) error,
  }) {
    return recorded(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(StatsRecapEntity recap)? recapLoaded,
    TResult? Function(String message)? recorded,
    TResult? Function(String message)? error,
  }) {
    return recorded?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(StatsRecapEntity recap)? recapLoaded,
    TResult Function(String message)? recorded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (recorded != null) {
      return recorded(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatsInitial value) initial,
    required TResult Function(StatsLoading value) loading,
    required TResult Function(StatsRecapLoaded value) recapLoaded,
    required TResult Function(StatsRecorded value) recorded,
    required TResult Function(StatsError value) error,
  }) {
    return recorded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatsInitial value)? initial,
    TResult? Function(StatsLoading value)? loading,
    TResult? Function(StatsRecapLoaded value)? recapLoaded,
    TResult? Function(StatsRecorded value)? recorded,
    TResult? Function(StatsError value)? error,
  }) {
    return recorded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatsInitial value)? initial,
    TResult Function(StatsLoading value)? loading,
    TResult Function(StatsRecapLoaded value)? recapLoaded,
    TResult Function(StatsRecorded value)? recorded,
    TResult Function(StatsError value)? error,
    required TResult orElse(),
  }) {
    if (recorded != null) {
      return recorded(this);
    }
    return orElse();
  }
}

abstract class StatsRecorded implements StatsState {
  const factory StatsRecorded({required final String message}) =
      _$StatsRecordedImpl;

  String get message;

  /// Create a copy of StatsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatsRecordedImplCopyWith<_$StatsRecordedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatsErrorImplCopyWith<$Res> {
  factory _$$StatsErrorImplCopyWith(
    _$StatsErrorImpl value,
    $Res Function(_$StatsErrorImpl) then,
  ) = __$$StatsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$StatsErrorImplCopyWithImpl<$Res>
    extends _$StatsStateCopyWithImpl<$Res, _$StatsErrorImpl>
    implements _$$StatsErrorImplCopyWith<$Res> {
  __$$StatsErrorImplCopyWithImpl(
    _$StatsErrorImpl _value,
    $Res Function(_$StatsErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StatsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$StatsErrorImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$StatsErrorImpl implements StatsError {
  const _$StatsErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'StatsState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatsErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of StatsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatsErrorImplCopyWith<_$StatsErrorImpl> get copyWith =>
      __$$StatsErrorImplCopyWithImpl<_$StatsErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(StatsRecapEntity recap) recapLoaded,
    required TResult Function(String message) recorded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(StatsRecapEntity recap)? recapLoaded,
    TResult? Function(String message)? recorded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(StatsRecapEntity recap)? recapLoaded,
    TResult Function(String message)? recorded,
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
    required TResult Function(StatsInitial value) initial,
    required TResult Function(StatsLoading value) loading,
    required TResult Function(StatsRecapLoaded value) recapLoaded,
    required TResult Function(StatsRecorded value) recorded,
    required TResult Function(StatsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatsInitial value)? initial,
    TResult? Function(StatsLoading value)? loading,
    TResult? Function(StatsRecapLoaded value)? recapLoaded,
    TResult? Function(StatsRecorded value)? recorded,
    TResult? Function(StatsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatsInitial value)? initial,
    TResult Function(StatsLoading value)? loading,
    TResult Function(StatsRecapLoaded value)? recapLoaded,
    TResult Function(StatsRecorded value)? recorded,
    TResult Function(StatsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class StatsError implements StatsState {
  const factory StatsError({required final String message}) = _$StatsErrorImpl;

  String get message;

  /// Create a copy of StatsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatsErrorImplCopyWith<_$StatsErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
