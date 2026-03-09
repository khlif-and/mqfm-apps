// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'progress_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ProgressState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProgressEntity> progressList) loaded,
    required TResult Function(ProgressEntity progress) single,
    required TResult Function(String message) saved,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProgressEntity> progressList)? loaded,
    TResult? Function(ProgressEntity progress)? single,
    TResult? Function(String message)? saved,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProgressEntity> progressList)? loaded,
    TResult Function(ProgressEntity progress)? single,
    TResult Function(String message)? saved,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProgressInitial value) initial,
    required TResult Function(ProgressLoading value) loading,
    required TResult Function(ProgressLoaded value) loaded,
    required TResult Function(ProgressSingle value) single,
    required TResult Function(ProgressSaved value) saved,
    required TResult Function(ProgressError value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgressInitial value)? initial,
    TResult? Function(ProgressLoading value)? loading,
    TResult? Function(ProgressLoaded value)? loaded,
    TResult? Function(ProgressSingle value)? single,
    TResult? Function(ProgressSaved value)? saved,
    TResult? Function(ProgressError value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgressInitial value)? initial,
    TResult Function(ProgressLoading value)? loading,
    TResult Function(ProgressLoaded value)? loaded,
    TResult Function(ProgressSingle value)? single,
    TResult Function(ProgressSaved value)? saved,
    TResult Function(ProgressError value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgressStateCopyWith<$Res> {
  factory $ProgressStateCopyWith(
    ProgressState value,
    $Res Function(ProgressState) then,
  ) = _$ProgressStateCopyWithImpl<$Res, ProgressState>;
}

/// @nodoc
class _$ProgressStateCopyWithImpl<$Res, $Val extends ProgressState>
    implements $ProgressStateCopyWith<$Res> {
  _$ProgressStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProgressState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ProgressInitialImplCopyWith<$Res> {
  factory _$$ProgressInitialImplCopyWith(
    _$ProgressInitialImpl value,
    $Res Function(_$ProgressInitialImpl) then,
  ) = __$$ProgressInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProgressInitialImplCopyWithImpl<$Res>
    extends _$ProgressStateCopyWithImpl<$Res, _$ProgressInitialImpl>
    implements _$$ProgressInitialImplCopyWith<$Res> {
  __$$ProgressInitialImplCopyWithImpl(
    _$ProgressInitialImpl _value,
    $Res Function(_$ProgressInitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProgressState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProgressInitialImpl implements ProgressInitial {
  const _$ProgressInitialImpl();

  @override
  String toString() {
    return 'ProgressState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProgressInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProgressEntity> progressList) loaded,
    required TResult Function(ProgressEntity progress) single,
    required TResult Function(String message) saved,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProgressEntity> progressList)? loaded,
    TResult? Function(ProgressEntity progress)? single,
    TResult? Function(String message)? saved,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProgressEntity> progressList)? loaded,
    TResult Function(ProgressEntity progress)? single,
    TResult Function(String message)? saved,
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
    required TResult Function(ProgressInitial value) initial,
    required TResult Function(ProgressLoading value) loading,
    required TResult Function(ProgressLoaded value) loaded,
    required TResult Function(ProgressSingle value) single,
    required TResult Function(ProgressSaved value) saved,
    required TResult Function(ProgressError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgressInitial value)? initial,
    TResult? Function(ProgressLoading value)? loading,
    TResult? Function(ProgressLoaded value)? loaded,
    TResult? Function(ProgressSingle value)? single,
    TResult? Function(ProgressSaved value)? saved,
    TResult? Function(ProgressError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgressInitial value)? initial,
    TResult Function(ProgressLoading value)? loading,
    TResult Function(ProgressLoaded value)? loaded,
    TResult Function(ProgressSingle value)? single,
    TResult Function(ProgressSaved value)? saved,
    TResult Function(ProgressError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ProgressInitial implements ProgressState {
  const factory ProgressInitial() = _$ProgressInitialImpl;
}

/// @nodoc
abstract class _$$ProgressLoadingImplCopyWith<$Res> {
  factory _$$ProgressLoadingImplCopyWith(
    _$ProgressLoadingImpl value,
    $Res Function(_$ProgressLoadingImpl) then,
  ) = __$$ProgressLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProgressLoadingImplCopyWithImpl<$Res>
    extends _$ProgressStateCopyWithImpl<$Res, _$ProgressLoadingImpl>
    implements _$$ProgressLoadingImplCopyWith<$Res> {
  __$$ProgressLoadingImplCopyWithImpl(
    _$ProgressLoadingImpl _value,
    $Res Function(_$ProgressLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProgressState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProgressLoadingImpl implements ProgressLoading {
  const _$ProgressLoadingImpl();

  @override
  String toString() {
    return 'ProgressState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProgressLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProgressEntity> progressList) loaded,
    required TResult Function(ProgressEntity progress) single,
    required TResult Function(String message) saved,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProgressEntity> progressList)? loaded,
    TResult? Function(ProgressEntity progress)? single,
    TResult? Function(String message)? saved,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProgressEntity> progressList)? loaded,
    TResult Function(ProgressEntity progress)? single,
    TResult Function(String message)? saved,
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
    required TResult Function(ProgressInitial value) initial,
    required TResult Function(ProgressLoading value) loading,
    required TResult Function(ProgressLoaded value) loaded,
    required TResult Function(ProgressSingle value) single,
    required TResult Function(ProgressSaved value) saved,
    required TResult Function(ProgressError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgressInitial value)? initial,
    TResult? Function(ProgressLoading value)? loading,
    TResult? Function(ProgressLoaded value)? loaded,
    TResult? Function(ProgressSingle value)? single,
    TResult? Function(ProgressSaved value)? saved,
    TResult? Function(ProgressError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgressInitial value)? initial,
    TResult Function(ProgressLoading value)? loading,
    TResult Function(ProgressLoaded value)? loaded,
    TResult Function(ProgressSingle value)? single,
    TResult Function(ProgressSaved value)? saved,
    TResult Function(ProgressError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProgressLoading implements ProgressState {
  const factory ProgressLoading() = _$ProgressLoadingImpl;
}

/// @nodoc
abstract class _$$ProgressLoadedImplCopyWith<$Res> {
  factory _$$ProgressLoadedImplCopyWith(
    _$ProgressLoadedImpl value,
    $Res Function(_$ProgressLoadedImpl) then,
  ) = __$$ProgressLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProgressEntity> progressList});
}

/// @nodoc
class __$$ProgressLoadedImplCopyWithImpl<$Res>
    extends _$ProgressStateCopyWithImpl<$Res, _$ProgressLoadedImpl>
    implements _$$ProgressLoadedImplCopyWith<$Res> {
  __$$ProgressLoadedImplCopyWithImpl(
    _$ProgressLoadedImpl _value,
    $Res Function(_$ProgressLoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProgressState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? progressList = null}) {
    return _then(
      _$ProgressLoadedImpl(
        progressList: null == progressList
            ? _value._progressList
            : progressList // ignore: cast_nullable_to_non_nullable
                  as List<ProgressEntity>,
      ),
    );
  }
}

/// @nodoc

class _$ProgressLoadedImpl implements ProgressLoaded {
  const _$ProgressLoadedImpl({required final List<ProgressEntity> progressList})
    : _progressList = progressList;

  final List<ProgressEntity> _progressList;
  @override
  List<ProgressEntity> get progressList {
    if (_progressList is EqualUnmodifiableListView) return _progressList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_progressList);
  }

  @override
  String toString() {
    return 'ProgressState.loaded(progressList: $progressList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgressLoadedImpl &&
            const DeepCollectionEquality().equals(
              other._progressList,
              _progressList,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_progressList),
  );

  /// Create a copy of ProgressState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgressLoadedImplCopyWith<_$ProgressLoadedImpl> get copyWith =>
      __$$ProgressLoadedImplCopyWithImpl<_$ProgressLoadedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProgressEntity> progressList) loaded,
    required TResult Function(ProgressEntity progress) single,
    required TResult Function(String message) saved,
    required TResult Function(String message) error,
  }) {
    return loaded(progressList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProgressEntity> progressList)? loaded,
    TResult? Function(ProgressEntity progress)? single,
    TResult? Function(String message)? saved,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(progressList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProgressEntity> progressList)? loaded,
    TResult Function(ProgressEntity progress)? single,
    TResult Function(String message)? saved,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(progressList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProgressInitial value) initial,
    required TResult Function(ProgressLoading value) loading,
    required TResult Function(ProgressLoaded value) loaded,
    required TResult Function(ProgressSingle value) single,
    required TResult Function(ProgressSaved value) saved,
    required TResult Function(ProgressError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgressInitial value)? initial,
    TResult? Function(ProgressLoading value)? loading,
    TResult? Function(ProgressLoaded value)? loaded,
    TResult? Function(ProgressSingle value)? single,
    TResult? Function(ProgressSaved value)? saved,
    TResult? Function(ProgressError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgressInitial value)? initial,
    TResult Function(ProgressLoading value)? loading,
    TResult Function(ProgressLoaded value)? loaded,
    TResult Function(ProgressSingle value)? single,
    TResult Function(ProgressSaved value)? saved,
    TResult Function(ProgressError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ProgressLoaded implements ProgressState {
  const factory ProgressLoaded({
    required final List<ProgressEntity> progressList,
  }) = _$ProgressLoadedImpl;

  List<ProgressEntity> get progressList;

  /// Create a copy of ProgressState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProgressLoadedImplCopyWith<_$ProgressLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProgressSingleImplCopyWith<$Res> {
  factory _$$ProgressSingleImplCopyWith(
    _$ProgressSingleImpl value,
    $Res Function(_$ProgressSingleImpl) then,
  ) = __$$ProgressSingleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProgressEntity progress});

  $ProgressEntityCopyWith<$Res> get progress;
}

/// @nodoc
class __$$ProgressSingleImplCopyWithImpl<$Res>
    extends _$ProgressStateCopyWithImpl<$Res, _$ProgressSingleImpl>
    implements _$$ProgressSingleImplCopyWith<$Res> {
  __$$ProgressSingleImplCopyWithImpl(
    _$ProgressSingleImpl _value,
    $Res Function(_$ProgressSingleImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProgressState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? progress = null}) {
    return _then(
      _$ProgressSingleImpl(
        progress: null == progress
            ? _value.progress
            : progress // ignore: cast_nullable_to_non_nullable
                  as ProgressEntity,
      ),
    );
  }

  /// Create a copy of ProgressState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProgressEntityCopyWith<$Res> get progress {
    return $ProgressEntityCopyWith<$Res>(_value.progress, (value) {
      return _then(_value.copyWith(progress: value));
    });
  }
}

/// @nodoc

class _$ProgressSingleImpl implements ProgressSingle {
  const _$ProgressSingleImpl({required this.progress});

  @override
  final ProgressEntity progress;

  @override
  String toString() {
    return 'ProgressState.single(progress: $progress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgressSingleImpl &&
            (identical(other.progress, progress) ||
                other.progress == progress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, progress);

  /// Create a copy of ProgressState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgressSingleImplCopyWith<_$ProgressSingleImpl> get copyWith =>
      __$$ProgressSingleImplCopyWithImpl<_$ProgressSingleImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProgressEntity> progressList) loaded,
    required TResult Function(ProgressEntity progress) single,
    required TResult Function(String message) saved,
    required TResult Function(String message) error,
  }) {
    return single(progress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProgressEntity> progressList)? loaded,
    TResult? Function(ProgressEntity progress)? single,
    TResult? Function(String message)? saved,
    TResult? Function(String message)? error,
  }) {
    return single?.call(progress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProgressEntity> progressList)? loaded,
    TResult Function(ProgressEntity progress)? single,
    TResult Function(String message)? saved,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (single != null) {
      return single(progress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProgressInitial value) initial,
    required TResult Function(ProgressLoading value) loading,
    required TResult Function(ProgressLoaded value) loaded,
    required TResult Function(ProgressSingle value) single,
    required TResult Function(ProgressSaved value) saved,
    required TResult Function(ProgressError value) error,
  }) {
    return single(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgressInitial value)? initial,
    TResult? Function(ProgressLoading value)? loading,
    TResult? Function(ProgressLoaded value)? loaded,
    TResult? Function(ProgressSingle value)? single,
    TResult? Function(ProgressSaved value)? saved,
    TResult? Function(ProgressError value)? error,
  }) {
    return single?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgressInitial value)? initial,
    TResult Function(ProgressLoading value)? loading,
    TResult Function(ProgressLoaded value)? loaded,
    TResult Function(ProgressSingle value)? single,
    TResult Function(ProgressSaved value)? saved,
    TResult Function(ProgressError value)? error,
    required TResult orElse(),
  }) {
    if (single != null) {
      return single(this);
    }
    return orElse();
  }
}

abstract class ProgressSingle implements ProgressState {
  const factory ProgressSingle({required final ProgressEntity progress}) =
      _$ProgressSingleImpl;

  ProgressEntity get progress;

  /// Create a copy of ProgressState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProgressSingleImplCopyWith<_$ProgressSingleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProgressSavedImplCopyWith<$Res> {
  factory _$$ProgressSavedImplCopyWith(
    _$ProgressSavedImpl value,
    $Res Function(_$ProgressSavedImpl) then,
  ) = __$$ProgressSavedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ProgressSavedImplCopyWithImpl<$Res>
    extends _$ProgressStateCopyWithImpl<$Res, _$ProgressSavedImpl>
    implements _$$ProgressSavedImplCopyWith<$Res> {
  __$$ProgressSavedImplCopyWithImpl(
    _$ProgressSavedImpl _value,
    $Res Function(_$ProgressSavedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProgressState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$ProgressSavedImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ProgressSavedImpl implements ProgressSaved {
  const _$ProgressSavedImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ProgressState.saved(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgressSavedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ProgressState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgressSavedImplCopyWith<_$ProgressSavedImpl> get copyWith =>
      __$$ProgressSavedImplCopyWithImpl<_$ProgressSavedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProgressEntity> progressList) loaded,
    required TResult Function(ProgressEntity progress) single,
    required TResult Function(String message) saved,
    required TResult Function(String message) error,
  }) {
    return saved(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProgressEntity> progressList)? loaded,
    TResult? Function(ProgressEntity progress)? single,
    TResult? Function(String message)? saved,
    TResult? Function(String message)? error,
  }) {
    return saved?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProgressEntity> progressList)? loaded,
    TResult Function(ProgressEntity progress)? single,
    TResult Function(String message)? saved,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProgressInitial value) initial,
    required TResult Function(ProgressLoading value) loading,
    required TResult Function(ProgressLoaded value) loaded,
    required TResult Function(ProgressSingle value) single,
    required TResult Function(ProgressSaved value) saved,
    required TResult Function(ProgressError value) error,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgressInitial value)? initial,
    TResult? Function(ProgressLoading value)? loading,
    TResult? Function(ProgressLoaded value)? loaded,
    TResult? Function(ProgressSingle value)? single,
    TResult? Function(ProgressSaved value)? saved,
    TResult? Function(ProgressError value)? error,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgressInitial value)? initial,
    TResult Function(ProgressLoading value)? loading,
    TResult Function(ProgressLoaded value)? loaded,
    TResult Function(ProgressSingle value)? single,
    TResult Function(ProgressSaved value)? saved,
    TResult Function(ProgressError value)? error,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class ProgressSaved implements ProgressState {
  const factory ProgressSaved({required final String message}) =
      _$ProgressSavedImpl;

  String get message;

  /// Create a copy of ProgressState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProgressSavedImplCopyWith<_$ProgressSavedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProgressErrorImplCopyWith<$Res> {
  factory _$$ProgressErrorImplCopyWith(
    _$ProgressErrorImpl value,
    $Res Function(_$ProgressErrorImpl) then,
  ) = __$$ProgressErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ProgressErrorImplCopyWithImpl<$Res>
    extends _$ProgressStateCopyWithImpl<$Res, _$ProgressErrorImpl>
    implements _$$ProgressErrorImplCopyWith<$Res> {
  __$$ProgressErrorImplCopyWithImpl(
    _$ProgressErrorImpl _value,
    $Res Function(_$ProgressErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProgressState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$ProgressErrorImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ProgressErrorImpl implements ProgressError {
  const _$ProgressErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ProgressState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgressErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ProgressState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgressErrorImplCopyWith<_$ProgressErrorImpl> get copyWith =>
      __$$ProgressErrorImplCopyWithImpl<_$ProgressErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProgressEntity> progressList) loaded,
    required TResult Function(ProgressEntity progress) single,
    required TResult Function(String message) saved,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProgressEntity> progressList)? loaded,
    TResult? Function(ProgressEntity progress)? single,
    TResult? Function(String message)? saved,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProgressEntity> progressList)? loaded,
    TResult Function(ProgressEntity progress)? single,
    TResult Function(String message)? saved,
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
    required TResult Function(ProgressInitial value) initial,
    required TResult Function(ProgressLoading value) loading,
    required TResult Function(ProgressLoaded value) loaded,
    required TResult Function(ProgressSingle value) single,
    required TResult Function(ProgressSaved value) saved,
    required TResult Function(ProgressError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgressInitial value)? initial,
    TResult? Function(ProgressLoading value)? loading,
    TResult? Function(ProgressLoaded value)? loaded,
    TResult? Function(ProgressSingle value)? single,
    TResult? Function(ProgressSaved value)? saved,
    TResult? Function(ProgressError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgressInitial value)? initial,
    TResult Function(ProgressLoading value)? loading,
    TResult Function(ProgressLoaded value)? loaded,
    TResult Function(ProgressSingle value)? single,
    TResult Function(ProgressSaved value)? saved,
    TResult Function(ProgressError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ProgressError implements ProgressState {
  const factory ProgressError({required final String message}) =
      _$ProgressErrorImpl;

  String get message;

  /// Create a copy of ProgressState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProgressErrorImplCopyWith<_$ProgressErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
