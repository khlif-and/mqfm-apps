// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resume_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ResumeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ResumeEntity> resumes) loaded,
    required TResult Function(String message) saved,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ResumeEntity> resumes)? loaded,
    TResult? Function(String message)? saved,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ResumeEntity> resumes)? loaded,
    TResult Function(String message)? saved,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResumeInitial value) initial,
    required TResult Function(ResumeLoading value) loading,
    required TResult Function(ResumeLoaded value) loaded,
    required TResult Function(ResumeSaved value) saved,
    required TResult Function(ResumeError value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResumeInitial value)? initial,
    TResult? Function(ResumeLoading value)? loading,
    TResult? Function(ResumeLoaded value)? loaded,
    TResult? Function(ResumeSaved value)? saved,
    TResult? Function(ResumeError value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResumeInitial value)? initial,
    TResult Function(ResumeLoading value)? loading,
    TResult Function(ResumeLoaded value)? loaded,
    TResult Function(ResumeSaved value)? saved,
    TResult Function(ResumeError value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResumeStateCopyWith<$Res> {
  factory $ResumeStateCopyWith(
    ResumeState value,
    $Res Function(ResumeState) then,
  ) = _$ResumeStateCopyWithImpl<$Res, ResumeState>;
}

/// @nodoc
class _$ResumeStateCopyWithImpl<$Res, $Val extends ResumeState>
    implements $ResumeStateCopyWith<$Res> {
  _$ResumeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResumeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ResumeInitialImplCopyWith<$Res> {
  factory _$$ResumeInitialImplCopyWith(
    _$ResumeInitialImpl value,
    $Res Function(_$ResumeInitialImpl) then,
  ) = __$$ResumeInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResumeInitialImplCopyWithImpl<$Res>
    extends _$ResumeStateCopyWithImpl<$Res, _$ResumeInitialImpl>
    implements _$$ResumeInitialImplCopyWith<$Res> {
  __$$ResumeInitialImplCopyWithImpl(
    _$ResumeInitialImpl _value,
    $Res Function(_$ResumeInitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ResumeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResumeInitialImpl implements ResumeInitial {
  const _$ResumeInitialImpl();

  @override
  String toString() {
    return 'ResumeState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResumeInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ResumeEntity> resumes) loaded,
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
    TResult? Function(List<ResumeEntity> resumes)? loaded,
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
    TResult Function(List<ResumeEntity> resumes)? loaded,
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
    required TResult Function(ResumeInitial value) initial,
    required TResult Function(ResumeLoading value) loading,
    required TResult Function(ResumeLoaded value) loaded,
    required TResult Function(ResumeSaved value) saved,
    required TResult Function(ResumeError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResumeInitial value)? initial,
    TResult? Function(ResumeLoading value)? loading,
    TResult? Function(ResumeLoaded value)? loaded,
    TResult? Function(ResumeSaved value)? saved,
    TResult? Function(ResumeError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResumeInitial value)? initial,
    TResult Function(ResumeLoading value)? loading,
    TResult Function(ResumeLoaded value)? loaded,
    TResult Function(ResumeSaved value)? saved,
    TResult Function(ResumeError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ResumeInitial implements ResumeState {
  const factory ResumeInitial() = _$ResumeInitialImpl;
}

/// @nodoc
abstract class _$$ResumeLoadingImplCopyWith<$Res> {
  factory _$$ResumeLoadingImplCopyWith(
    _$ResumeLoadingImpl value,
    $Res Function(_$ResumeLoadingImpl) then,
  ) = __$$ResumeLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResumeLoadingImplCopyWithImpl<$Res>
    extends _$ResumeStateCopyWithImpl<$Res, _$ResumeLoadingImpl>
    implements _$$ResumeLoadingImplCopyWith<$Res> {
  __$$ResumeLoadingImplCopyWithImpl(
    _$ResumeLoadingImpl _value,
    $Res Function(_$ResumeLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ResumeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResumeLoadingImpl implements ResumeLoading {
  const _$ResumeLoadingImpl();

  @override
  String toString() {
    return 'ResumeState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResumeLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ResumeEntity> resumes) loaded,
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
    TResult? Function(List<ResumeEntity> resumes)? loaded,
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
    TResult Function(List<ResumeEntity> resumes)? loaded,
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
    required TResult Function(ResumeInitial value) initial,
    required TResult Function(ResumeLoading value) loading,
    required TResult Function(ResumeLoaded value) loaded,
    required TResult Function(ResumeSaved value) saved,
    required TResult Function(ResumeError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResumeInitial value)? initial,
    TResult? Function(ResumeLoading value)? loading,
    TResult? Function(ResumeLoaded value)? loaded,
    TResult? Function(ResumeSaved value)? saved,
    TResult? Function(ResumeError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResumeInitial value)? initial,
    TResult Function(ResumeLoading value)? loading,
    TResult Function(ResumeLoaded value)? loaded,
    TResult Function(ResumeSaved value)? saved,
    TResult Function(ResumeError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ResumeLoading implements ResumeState {
  const factory ResumeLoading() = _$ResumeLoadingImpl;
}

/// @nodoc
abstract class _$$ResumeLoadedImplCopyWith<$Res> {
  factory _$$ResumeLoadedImplCopyWith(
    _$ResumeLoadedImpl value,
    $Res Function(_$ResumeLoadedImpl) then,
  ) = __$$ResumeLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ResumeEntity> resumes});
}

/// @nodoc
class __$$ResumeLoadedImplCopyWithImpl<$Res>
    extends _$ResumeStateCopyWithImpl<$Res, _$ResumeLoadedImpl>
    implements _$$ResumeLoadedImplCopyWith<$Res> {
  __$$ResumeLoadedImplCopyWithImpl(
    _$ResumeLoadedImpl _value,
    $Res Function(_$ResumeLoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ResumeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? resumes = null}) {
    return _then(
      _$ResumeLoadedImpl(
        resumes: null == resumes
            ? _value._resumes
            : resumes // ignore: cast_nullable_to_non_nullable
                  as List<ResumeEntity>,
      ),
    );
  }
}

/// @nodoc

class _$ResumeLoadedImpl implements ResumeLoaded {
  const _$ResumeLoadedImpl({required final List<ResumeEntity> resumes})
    : _resumes = resumes;

  final List<ResumeEntity> _resumes;
  @override
  List<ResumeEntity> get resumes {
    if (_resumes is EqualUnmodifiableListView) return _resumes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_resumes);
  }

  @override
  String toString() {
    return 'ResumeState.loaded(resumes: $resumes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResumeLoadedImpl &&
            const DeepCollectionEquality().equals(other._resumes, _resumes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_resumes));

  /// Create a copy of ResumeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResumeLoadedImplCopyWith<_$ResumeLoadedImpl> get copyWith =>
      __$$ResumeLoadedImplCopyWithImpl<_$ResumeLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ResumeEntity> resumes) loaded,
    required TResult Function(String message) saved,
    required TResult Function(String message) error,
  }) {
    return loaded(resumes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ResumeEntity> resumes)? loaded,
    TResult? Function(String message)? saved,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(resumes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ResumeEntity> resumes)? loaded,
    TResult Function(String message)? saved,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(resumes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResumeInitial value) initial,
    required TResult Function(ResumeLoading value) loading,
    required TResult Function(ResumeLoaded value) loaded,
    required TResult Function(ResumeSaved value) saved,
    required TResult Function(ResumeError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResumeInitial value)? initial,
    TResult? Function(ResumeLoading value)? loading,
    TResult? Function(ResumeLoaded value)? loaded,
    TResult? Function(ResumeSaved value)? saved,
    TResult? Function(ResumeError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResumeInitial value)? initial,
    TResult Function(ResumeLoading value)? loading,
    TResult Function(ResumeLoaded value)? loaded,
    TResult Function(ResumeSaved value)? saved,
    TResult Function(ResumeError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ResumeLoaded implements ResumeState {
  const factory ResumeLoaded({required final List<ResumeEntity> resumes}) =
      _$ResumeLoadedImpl;

  List<ResumeEntity> get resumes;

  /// Create a copy of ResumeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResumeLoadedImplCopyWith<_$ResumeLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResumeSavedImplCopyWith<$Res> {
  factory _$$ResumeSavedImplCopyWith(
    _$ResumeSavedImpl value,
    $Res Function(_$ResumeSavedImpl) then,
  ) = __$$ResumeSavedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ResumeSavedImplCopyWithImpl<$Res>
    extends _$ResumeStateCopyWithImpl<$Res, _$ResumeSavedImpl>
    implements _$$ResumeSavedImplCopyWith<$Res> {
  __$$ResumeSavedImplCopyWithImpl(
    _$ResumeSavedImpl _value,
    $Res Function(_$ResumeSavedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ResumeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$ResumeSavedImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ResumeSavedImpl implements ResumeSaved {
  const _$ResumeSavedImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ResumeState.saved(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResumeSavedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ResumeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResumeSavedImplCopyWith<_$ResumeSavedImpl> get copyWith =>
      __$$ResumeSavedImplCopyWithImpl<_$ResumeSavedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ResumeEntity> resumes) loaded,
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
    TResult? Function(List<ResumeEntity> resumes)? loaded,
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
    TResult Function(List<ResumeEntity> resumes)? loaded,
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
    required TResult Function(ResumeInitial value) initial,
    required TResult Function(ResumeLoading value) loading,
    required TResult Function(ResumeLoaded value) loaded,
    required TResult Function(ResumeSaved value) saved,
    required TResult Function(ResumeError value) error,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResumeInitial value)? initial,
    TResult? Function(ResumeLoading value)? loading,
    TResult? Function(ResumeLoaded value)? loaded,
    TResult? Function(ResumeSaved value)? saved,
    TResult? Function(ResumeError value)? error,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResumeInitial value)? initial,
    TResult Function(ResumeLoading value)? loading,
    TResult Function(ResumeLoaded value)? loaded,
    TResult Function(ResumeSaved value)? saved,
    TResult Function(ResumeError value)? error,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class ResumeSaved implements ResumeState {
  const factory ResumeSaved({required final String message}) =
      _$ResumeSavedImpl;

  String get message;

  /// Create a copy of ResumeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResumeSavedImplCopyWith<_$ResumeSavedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResumeErrorImplCopyWith<$Res> {
  factory _$$ResumeErrorImplCopyWith(
    _$ResumeErrorImpl value,
    $Res Function(_$ResumeErrorImpl) then,
  ) = __$$ResumeErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ResumeErrorImplCopyWithImpl<$Res>
    extends _$ResumeStateCopyWithImpl<$Res, _$ResumeErrorImpl>
    implements _$$ResumeErrorImplCopyWith<$Res> {
  __$$ResumeErrorImplCopyWithImpl(
    _$ResumeErrorImpl _value,
    $Res Function(_$ResumeErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ResumeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$ResumeErrorImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ResumeErrorImpl implements ResumeError {
  const _$ResumeErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ResumeState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResumeErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ResumeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResumeErrorImplCopyWith<_$ResumeErrorImpl> get copyWith =>
      __$$ResumeErrorImplCopyWithImpl<_$ResumeErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ResumeEntity> resumes) loaded,
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
    TResult? Function(List<ResumeEntity> resumes)? loaded,
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
    TResult Function(List<ResumeEntity> resumes)? loaded,
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
    required TResult Function(ResumeInitial value) initial,
    required TResult Function(ResumeLoading value) loading,
    required TResult Function(ResumeLoaded value) loaded,
    required TResult Function(ResumeSaved value) saved,
    required TResult Function(ResumeError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResumeInitial value)? initial,
    TResult? Function(ResumeLoading value)? loading,
    TResult? Function(ResumeLoaded value)? loaded,
    TResult? Function(ResumeSaved value)? saved,
    TResult? Function(ResumeError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResumeInitial value)? initial,
    TResult Function(ResumeLoading value)? loading,
    TResult Function(ResumeLoaded value)? loaded,
    TResult Function(ResumeSaved value)? saved,
    TResult Function(ResumeError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ResumeError implements ResumeState {
  const factory ResumeError({required final String message}) =
      _$ResumeErrorImpl;

  String get message;

  /// Create a copy of ResumeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResumeErrorImplCopyWith<_$ResumeErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
