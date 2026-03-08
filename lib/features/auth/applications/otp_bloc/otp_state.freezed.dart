// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$OtpState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) generated,
    required TResult Function(UserEntity user) verified,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? generated,
    TResult? Function(UserEntity user)? verified,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? generated,
    TResult Function(UserEntity user)? verified,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OtpInitial value) initial,
    required TResult Function(OtpLoading value) loading,
    required TResult Function(OtpGenerated value) generated,
    required TResult Function(OtpVerified value) verified,
    required TResult Function(OtpError value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OtpInitial value)? initial,
    TResult? Function(OtpLoading value)? loading,
    TResult? Function(OtpGenerated value)? generated,
    TResult? Function(OtpVerified value)? verified,
    TResult? Function(OtpError value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OtpInitial value)? initial,
    TResult Function(OtpLoading value)? loading,
    TResult Function(OtpGenerated value)? generated,
    TResult Function(OtpVerified value)? verified,
    TResult Function(OtpError value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpStateCopyWith<$Res> {
  factory $OtpStateCopyWith(OtpState value, $Res Function(OtpState) then) =
      _$OtpStateCopyWithImpl<$Res, OtpState>;
}

/// @nodoc
class _$OtpStateCopyWithImpl<$Res, $Val extends OtpState>
    implements $OtpStateCopyWith<$Res> {
  _$OtpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OtpState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$OtpInitialImplCopyWith<$Res> {
  factory _$$OtpInitialImplCopyWith(
    _$OtpInitialImpl value,
    $Res Function(_$OtpInitialImpl) then,
  ) = __$$OtpInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OtpInitialImplCopyWithImpl<$Res>
    extends _$OtpStateCopyWithImpl<$Res, _$OtpInitialImpl>
    implements _$$OtpInitialImplCopyWith<$Res> {
  __$$OtpInitialImplCopyWithImpl(
    _$OtpInitialImpl _value,
    $Res Function(_$OtpInitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OtpState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OtpInitialImpl implements OtpInitial {
  const _$OtpInitialImpl();

  @override
  String toString() {
    return 'OtpState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OtpInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) generated,
    required TResult Function(UserEntity user) verified,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? generated,
    TResult? Function(UserEntity user)? verified,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? generated,
    TResult Function(UserEntity user)? verified,
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
    required TResult Function(OtpInitial value) initial,
    required TResult Function(OtpLoading value) loading,
    required TResult Function(OtpGenerated value) generated,
    required TResult Function(OtpVerified value) verified,
    required TResult Function(OtpError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OtpInitial value)? initial,
    TResult? Function(OtpLoading value)? loading,
    TResult? Function(OtpGenerated value)? generated,
    TResult? Function(OtpVerified value)? verified,
    TResult? Function(OtpError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OtpInitial value)? initial,
    TResult Function(OtpLoading value)? loading,
    TResult Function(OtpGenerated value)? generated,
    TResult Function(OtpVerified value)? verified,
    TResult Function(OtpError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class OtpInitial implements OtpState {
  const factory OtpInitial() = _$OtpInitialImpl;
}

/// @nodoc
abstract class _$$OtpLoadingImplCopyWith<$Res> {
  factory _$$OtpLoadingImplCopyWith(
    _$OtpLoadingImpl value,
    $Res Function(_$OtpLoadingImpl) then,
  ) = __$$OtpLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OtpLoadingImplCopyWithImpl<$Res>
    extends _$OtpStateCopyWithImpl<$Res, _$OtpLoadingImpl>
    implements _$$OtpLoadingImplCopyWith<$Res> {
  __$$OtpLoadingImplCopyWithImpl(
    _$OtpLoadingImpl _value,
    $Res Function(_$OtpLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OtpState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OtpLoadingImpl implements OtpLoading {
  const _$OtpLoadingImpl();

  @override
  String toString() {
    return 'OtpState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OtpLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) generated,
    required TResult Function(UserEntity user) verified,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? generated,
    TResult? Function(UserEntity user)? verified,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? generated,
    TResult Function(UserEntity user)? verified,
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
    required TResult Function(OtpInitial value) initial,
    required TResult Function(OtpLoading value) loading,
    required TResult Function(OtpGenerated value) generated,
    required TResult Function(OtpVerified value) verified,
    required TResult Function(OtpError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OtpInitial value)? initial,
    TResult? Function(OtpLoading value)? loading,
    TResult? Function(OtpGenerated value)? generated,
    TResult? Function(OtpVerified value)? verified,
    TResult? Function(OtpError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OtpInitial value)? initial,
    TResult Function(OtpLoading value)? loading,
    TResult Function(OtpGenerated value)? generated,
    TResult Function(OtpVerified value)? verified,
    TResult Function(OtpError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class OtpLoading implements OtpState {
  const factory OtpLoading() = _$OtpLoadingImpl;
}

/// @nodoc
abstract class _$$OtpGeneratedImplCopyWith<$Res> {
  factory _$$OtpGeneratedImplCopyWith(
    _$OtpGeneratedImpl value,
    $Res Function(_$OtpGeneratedImpl) then,
  ) = __$$OtpGeneratedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$OtpGeneratedImplCopyWithImpl<$Res>
    extends _$OtpStateCopyWithImpl<$Res, _$OtpGeneratedImpl>
    implements _$$OtpGeneratedImplCopyWith<$Res> {
  __$$OtpGeneratedImplCopyWithImpl(
    _$OtpGeneratedImpl _value,
    $Res Function(_$OtpGeneratedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OtpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$OtpGeneratedImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$OtpGeneratedImpl implements OtpGenerated {
  const _$OtpGeneratedImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'OtpState.generated(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpGeneratedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of OtpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpGeneratedImplCopyWith<_$OtpGeneratedImpl> get copyWith =>
      __$$OtpGeneratedImplCopyWithImpl<_$OtpGeneratedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) generated,
    required TResult Function(UserEntity user) verified,
    required TResult Function(String message) error,
  }) {
    return generated(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? generated,
    TResult? Function(UserEntity user)? verified,
    TResult? Function(String message)? error,
  }) {
    return generated?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? generated,
    TResult Function(UserEntity user)? verified,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (generated != null) {
      return generated(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OtpInitial value) initial,
    required TResult Function(OtpLoading value) loading,
    required TResult Function(OtpGenerated value) generated,
    required TResult Function(OtpVerified value) verified,
    required TResult Function(OtpError value) error,
  }) {
    return generated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OtpInitial value)? initial,
    TResult? Function(OtpLoading value)? loading,
    TResult? Function(OtpGenerated value)? generated,
    TResult? Function(OtpVerified value)? verified,
    TResult? Function(OtpError value)? error,
  }) {
    return generated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OtpInitial value)? initial,
    TResult Function(OtpLoading value)? loading,
    TResult Function(OtpGenerated value)? generated,
    TResult Function(OtpVerified value)? verified,
    TResult Function(OtpError value)? error,
    required TResult orElse(),
  }) {
    if (generated != null) {
      return generated(this);
    }
    return orElse();
  }
}

abstract class OtpGenerated implements OtpState {
  const factory OtpGenerated({required final String message}) =
      _$OtpGeneratedImpl;

  String get message;

  /// Create a copy of OtpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtpGeneratedImplCopyWith<_$OtpGeneratedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OtpVerifiedImplCopyWith<$Res> {
  factory _$$OtpVerifiedImplCopyWith(
    _$OtpVerifiedImpl value,
    $Res Function(_$OtpVerifiedImpl) then,
  ) = __$$OtpVerifiedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserEntity user});

  $UserEntityCopyWith<$Res> get user;
}

/// @nodoc
class __$$OtpVerifiedImplCopyWithImpl<$Res>
    extends _$OtpStateCopyWithImpl<$Res, _$OtpVerifiedImpl>
    implements _$$OtpVerifiedImplCopyWith<$Res> {
  __$$OtpVerifiedImplCopyWithImpl(
    _$OtpVerifiedImpl _value,
    $Res Function(_$OtpVerifiedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OtpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? user = null}) {
    return _then(
      _$OtpVerifiedImpl(
        user: null == user
            ? _value.user
            : user // ignore: cast_nullable_to_non_nullable
                  as UserEntity,
      ),
    );
  }

  /// Create a copy of OtpState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res> get user {
    return $UserEntityCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$OtpVerifiedImpl implements OtpVerified {
  const _$OtpVerifiedImpl({required this.user});

  @override
  final UserEntity user;

  @override
  String toString() {
    return 'OtpState.verified(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpVerifiedImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of OtpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpVerifiedImplCopyWith<_$OtpVerifiedImpl> get copyWith =>
      __$$OtpVerifiedImplCopyWithImpl<_$OtpVerifiedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) generated,
    required TResult Function(UserEntity user) verified,
    required TResult Function(String message) error,
  }) {
    return verified(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? generated,
    TResult? Function(UserEntity user)? verified,
    TResult? Function(String message)? error,
  }) {
    return verified?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? generated,
    TResult Function(UserEntity user)? verified,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (verified != null) {
      return verified(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OtpInitial value) initial,
    required TResult Function(OtpLoading value) loading,
    required TResult Function(OtpGenerated value) generated,
    required TResult Function(OtpVerified value) verified,
    required TResult Function(OtpError value) error,
  }) {
    return verified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OtpInitial value)? initial,
    TResult? Function(OtpLoading value)? loading,
    TResult? Function(OtpGenerated value)? generated,
    TResult? Function(OtpVerified value)? verified,
    TResult? Function(OtpError value)? error,
  }) {
    return verified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OtpInitial value)? initial,
    TResult Function(OtpLoading value)? loading,
    TResult Function(OtpGenerated value)? generated,
    TResult Function(OtpVerified value)? verified,
    TResult Function(OtpError value)? error,
    required TResult orElse(),
  }) {
    if (verified != null) {
      return verified(this);
    }
    return orElse();
  }
}

abstract class OtpVerified implements OtpState {
  const factory OtpVerified({required final UserEntity user}) =
      _$OtpVerifiedImpl;

  UserEntity get user;

  /// Create a copy of OtpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtpVerifiedImplCopyWith<_$OtpVerifiedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OtpErrorImplCopyWith<$Res> {
  factory _$$OtpErrorImplCopyWith(
    _$OtpErrorImpl value,
    $Res Function(_$OtpErrorImpl) then,
  ) = __$$OtpErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$OtpErrorImplCopyWithImpl<$Res>
    extends _$OtpStateCopyWithImpl<$Res, _$OtpErrorImpl>
    implements _$$OtpErrorImplCopyWith<$Res> {
  __$$OtpErrorImplCopyWithImpl(
    _$OtpErrorImpl _value,
    $Res Function(_$OtpErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OtpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$OtpErrorImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$OtpErrorImpl implements OtpError {
  const _$OtpErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'OtpState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of OtpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpErrorImplCopyWith<_$OtpErrorImpl> get copyWith =>
      __$$OtpErrorImplCopyWithImpl<_$OtpErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) generated,
    required TResult Function(UserEntity user) verified,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? generated,
    TResult? Function(UserEntity user)? verified,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? generated,
    TResult Function(UserEntity user)? verified,
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
    required TResult Function(OtpInitial value) initial,
    required TResult Function(OtpLoading value) loading,
    required TResult Function(OtpGenerated value) generated,
    required TResult Function(OtpVerified value) verified,
    required TResult Function(OtpError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OtpInitial value)? initial,
    TResult? Function(OtpLoading value)? loading,
    TResult? Function(OtpGenerated value)? generated,
    TResult? Function(OtpVerified value)? verified,
    TResult? Function(OtpError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OtpInitial value)? initial,
    TResult Function(OtpLoading value)? loading,
    TResult Function(OtpGenerated value)? generated,
    TResult Function(OtpVerified value)? verified,
    TResult Function(OtpError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class OtpError implements OtpState {
  const factory OtpError({required final String message}) = _$OtpErrorImpl;

  String get message;

  /// Create a copy of OtpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtpErrorImplCopyWith<_$OtpErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
