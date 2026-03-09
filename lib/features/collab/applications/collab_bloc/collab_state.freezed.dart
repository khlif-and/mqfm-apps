// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collab_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$CollabState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CollaboratorEntity> collaborators) loaded,
    required TResult Function(String message) actionSuccess,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CollaboratorEntity> collaborators)? loaded,
    TResult? Function(String message)? actionSuccess,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CollaboratorEntity> collaborators)? loaded,
    TResult Function(String message)? actionSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CollabInitial value) initial,
    required TResult Function(CollabLoading value) loading,
    required TResult Function(CollabLoaded value) loaded,
    required TResult Function(CollabActionSuccess value) actionSuccess,
    required TResult Function(CollabError value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CollabInitial value)? initial,
    TResult? Function(CollabLoading value)? loading,
    TResult? Function(CollabLoaded value)? loaded,
    TResult? Function(CollabActionSuccess value)? actionSuccess,
    TResult? Function(CollabError value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CollabInitial value)? initial,
    TResult Function(CollabLoading value)? loading,
    TResult Function(CollabLoaded value)? loaded,
    TResult Function(CollabActionSuccess value)? actionSuccess,
    TResult Function(CollabError value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollabStateCopyWith<$Res> {
  factory $CollabStateCopyWith(
    CollabState value,
    $Res Function(CollabState) then,
  ) = _$CollabStateCopyWithImpl<$Res, CollabState>;
}

/// @nodoc
class _$CollabStateCopyWithImpl<$Res, $Val extends CollabState>
    implements $CollabStateCopyWith<$Res> {
  _$CollabStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CollabState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CollabInitialImplCopyWith<$Res> {
  factory _$$CollabInitialImplCopyWith(
    _$CollabInitialImpl value,
    $Res Function(_$CollabInitialImpl) then,
  ) = __$$CollabInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CollabInitialImplCopyWithImpl<$Res>
    extends _$CollabStateCopyWithImpl<$Res, _$CollabInitialImpl>
    implements _$$CollabInitialImplCopyWith<$Res> {
  __$$CollabInitialImplCopyWithImpl(
    _$CollabInitialImpl _value,
    $Res Function(_$CollabInitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CollabState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CollabInitialImpl implements CollabInitial {
  const _$CollabInitialImpl();

  @override
  String toString() {
    return 'CollabState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CollabInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CollaboratorEntity> collaborators) loaded,
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
    TResult? Function(List<CollaboratorEntity> collaborators)? loaded,
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
    TResult Function(List<CollaboratorEntity> collaborators)? loaded,
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
    required TResult Function(CollabInitial value) initial,
    required TResult Function(CollabLoading value) loading,
    required TResult Function(CollabLoaded value) loaded,
    required TResult Function(CollabActionSuccess value) actionSuccess,
    required TResult Function(CollabError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CollabInitial value)? initial,
    TResult? Function(CollabLoading value)? loading,
    TResult? Function(CollabLoaded value)? loaded,
    TResult? Function(CollabActionSuccess value)? actionSuccess,
    TResult? Function(CollabError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CollabInitial value)? initial,
    TResult Function(CollabLoading value)? loading,
    TResult Function(CollabLoaded value)? loaded,
    TResult Function(CollabActionSuccess value)? actionSuccess,
    TResult Function(CollabError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CollabInitial implements CollabState {
  const factory CollabInitial() = _$CollabInitialImpl;
}

/// @nodoc
abstract class _$$CollabLoadingImplCopyWith<$Res> {
  factory _$$CollabLoadingImplCopyWith(
    _$CollabLoadingImpl value,
    $Res Function(_$CollabLoadingImpl) then,
  ) = __$$CollabLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CollabLoadingImplCopyWithImpl<$Res>
    extends _$CollabStateCopyWithImpl<$Res, _$CollabLoadingImpl>
    implements _$$CollabLoadingImplCopyWith<$Res> {
  __$$CollabLoadingImplCopyWithImpl(
    _$CollabLoadingImpl _value,
    $Res Function(_$CollabLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CollabState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CollabLoadingImpl implements CollabLoading {
  const _$CollabLoadingImpl();

  @override
  String toString() {
    return 'CollabState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CollabLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CollaboratorEntity> collaborators) loaded,
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
    TResult? Function(List<CollaboratorEntity> collaborators)? loaded,
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
    TResult Function(List<CollaboratorEntity> collaborators)? loaded,
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
    required TResult Function(CollabInitial value) initial,
    required TResult Function(CollabLoading value) loading,
    required TResult Function(CollabLoaded value) loaded,
    required TResult Function(CollabActionSuccess value) actionSuccess,
    required TResult Function(CollabError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CollabInitial value)? initial,
    TResult? Function(CollabLoading value)? loading,
    TResult? Function(CollabLoaded value)? loaded,
    TResult? Function(CollabActionSuccess value)? actionSuccess,
    TResult? Function(CollabError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CollabInitial value)? initial,
    TResult Function(CollabLoading value)? loading,
    TResult Function(CollabLoaded value)? loaded,
    TResult Function(CollabActionSuccess value)? actionSuccess,
    TResult Function(CollabError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CollabLoading implements CollabState {
  const factory CollabLoading() = _$CollabLoadingImpl;
}

/// @nodoc
abstract class _$$CollabLoadedImplCopyWith<$Res> {
  factory _$$CollabLoadedImplCopyWith(
    _$CollabLoadedImpl value,
    $Res Function(_$CollabLoadedImpl) then,
  ) = __$$CollabLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CollaboratorEntity> collaborators});
}

/// @nodoc
class __$$CollabLoadedImplCopyWithImpl<$Res>
    extends _$CollabStateCopyWithImpl<$Res, _$CollabLoadedImpl>
    implements _$$CollabLoadedImplCopyWith<$Res> {
  __$$CollabLoadedImplCopyWithImpl(
    _$CollabLoadedImpl _value,
    $Res Function(_$CollabLoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CollabState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? collaborators = null}) {
    return _then(
      _$CollabLoadedImpl(
        collaborators: null == collaborators
            ? _value._collaborators
            : collaborators // ignore: cast_nullable_to_non_nullable
                  as List<CollaboratorEntity>,
      ),
    );
  }
}

/// @nodoc

class _$CollabLoadedImpl implements CollabLoaded {
  const _$CollabLoadedImpl({
    required final List<CollaboratorEntity> collaborators,
  }) : _collaborators = collaborators;

  final List<CollaboratorEntity> _collaborators;
  @override
  List<CollaboratorEntity> get collaborators {
    if (_collaborators is EqualUnmodifiableListView) return _collaborators;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_collaborators);
  }

  @override
  String toString() {
    return 'CollabState.loaded(collaborators: $collaborators)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollabLoadedImpl &&
            const DeepCollectionEquality().equals(
              other._collaborators,
              _collaborators,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_collaborators),
  );

  /// Create a copy of CollabState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CollabLoadedImplCopyWith<_$CollabLoadedImpl> get copyWith =>
      __$$CollabLoadedImplCopyWithImpl<_$CollabLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CollaboratorEntity> collaborators) loaded,
    required TResult Function(String message) actionSuccess,
    required TResult Function(String message) error,
  }) {
    return loaded(collaborators);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CollaboratorEntity> collaborators)? loaded,
    TResult? Function(String message)? actionSuccess,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(collaborators);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CollaboratorEntity> collaborators)? loaded,
    TResult Function(String message)? actionSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(collaborators);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CollabInitial value) initial,
    required TResult Function(CollabLoading value) loading,
    required TResult Function(CollabLoaded value) loaded,
    required TResult Function(CollabActionSuccess value) actionSuccess,
    required TResult Function(CollabError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CollabInitial value)? initial,
    TResult? Function(CollabLoading value)? loading,
    TResult? Function(CollabLoaded value)? loaded,
    TResult? Function(CollabActionSuccess value)? actionSuccess,
    TResult? Function(CollabError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CollabInitial value)? initial,
    TResult Function(CollabLoading value)? loading,
    TResult Function(CollabLoaded value)? loaded,
    TResult Function(CollabActionSuccess value)? actionSuccess,
    TResult Function(CollabError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CollabLoaded implements CollabState {
  const factory CollabLoaded({
    required final List<CollaboratorEntity> collaborators,
  }) = _$CollabLoadedImpl;

  List<CollaboratorEntity> get collaborators;

  /// Create a copy of CollabState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CollabLoadedImplCopyWith<_$CollabLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CollabActionSuccessImplCopyWith<$Res> {
  factory _$$CollabActionSuccessImplCopyWith(
    _$CollabActionSuccessImpl value,
    $Res Function(_$CollabActionSuccessImpl) then,
  ) = __$$CollabActionSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CollabActionSuccessImplCopyWithImpl<$Res>
    extends _$CollabStateCopyWithImpl<$Res, _$CollabActionSuccessImpl>
    implements _$$CollabActionSuccessImplCopyWith<$Res> {
  __$$CollabActionSuccessImplCopyWithImpl(
    _$CollabActionSuccessImpl _value,
    $Res Function(_$CollabActionSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CollabState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$CollabActionSuccessImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$CollabActionSuccessImpl implements CollabActionSuccess {
  const _$CollabActionSuccessImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'CollabState.actionSuccess(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollabActionSuccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of CollabState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CollabActionSuccessImplCopyWith<_$CollabActionSuccessImpl> get copyWith =>
      __$$CollabActionSuccessImplCopyWithImpl<_$CollabActionSuccessImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CollaboratorEntity> collaborators) loaded,
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
    TResult? Function(List<CollaboratorEntity> collaborators)? loaded,
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
    TResult Function(List<CollaboratorEntity> collaborators)? loaded,
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
    required TResult Function(CollabInitial value) initial,
    required TResult Function(CollabLoading value) loading,
    required TResult Function(CollabLoaded value) loaded,
    required TResult Function(CollabActionSuccess value) actionSuccess,
    required TResult Function(CollabError value) error,
  }) {
    return actionSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CollabInitial value)? initial,
    TResult? Function(CollabLoading value)? loading,
    TResult? Function(CollabLoaded value)? loaded,
    TResult? Function(CollabActionSuccess value)? actionSuccess,
    TResult? Function(CollabError value)? error,
  }) {
    return actionSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CollabInitial value)? initial,
    TResult Function(CollabLoading value)? loading,
    TResult Function(CollabLoaded value)? loaded,
    TResult Function(CollabActionSuccess value)? actionSuccess,
    TResult Function(CollabError value)? error,
    required TResult orElse(),
  }) {
    if (actionSuccess != null) {
      return actionSuccess(this);
    }
    return orElse();
  }
}

abstract class CollabActionSuccess implements CollabState {
  const factory CollabActionSuccess({required final String message}) =
      _$CollabActionSuccessImpl;

  String get message;

  /// Create a copy of CollabState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CollabActionSuccessImplCopyWith<_$CollabActionSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CollabErrorImplCopyWith<$Res> {
  factory _$$CollabErrorImplCopyWith(
    _$CollabErrorImpl value,
    $Res Function(_$CollabErrorImpl) then,
  ) = __$$CollabErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CollabErrorImplCopyWithImpl<$Res>
    extends _$CollabStateCopyWithImpl<$Res, _$CollabErrorImpl>
    implements _$$CollabErrorImplCopyWith<$Res> {
  __$$CollabErrorImplCopyWithImpl(
    _$CollabErrorImpl _value,
    $Res Function(_$CollabErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CollabState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$CollabErrorImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$CollabErrorImpl implements CollabError {
  const _$CollabErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'CollabState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollabErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of CollabState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CollabErrorImplCopyWith<_$CollabErrorImpl> get copyWith =>
      __$$CollabErrorImplCopyWithImpl<_$CollabErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CollaboratorEntity> collaborators) loaded,
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
    TResult? Function(List<CollaboratorEntity> collaborators)? loaded,
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
    TResult Function(List<CollaboratorEntity> collaborators)? loaded,
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
    required TResult Function(CollabInitial value) initial,
    required TResult Function(CollabLoading value) loading,
    required TResult Function(CollabLoaded value) loaded,
    required TResult Function(CollabActionSuccess value) actionSuccess,
    required TResult Function(CollabError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CollabInitial value)? initial,
    TResult? Function(CollabLoading value)? loading,
    TResult? Function(CollabLoaded value)? loaded,
    TResult? Function(CollabActionSuccess value)? actionSuccess,
    TResult? Function(CollabError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CollabInitial value)? initial,
    TResult Function(CollabLoading value)? loading,
    TResult Function(CollabLoaded value)? loaded,
    TResult Function(CollabActionSuccess value)? actionSuccess,
    TResult Function(CollabError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CollabError implements CollabState {
  const factory CollabError({required final String message}) =
      _$CollabErrorImpl;

  String get message;

  /// Create a copy of CollabState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CollabErrorImplCopyWith<_$CollabErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
