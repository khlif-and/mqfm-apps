// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$OtpEvent {
  String get email => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) generate,
    required TResult Function(String email, String code) verify,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? generate,
    TResult? Function(String email, String code)? verify,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? generate,
    TResult Function(String email, String code)? verify,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OtpGenerate value) generate,
    required TResult Function(OtpVerify value) verify,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OtpGenerate value)? generate,
    TResult? Function(OtpVerify value)? verify,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OtpGenerate value)? generate,
    TResult Function(OtpVerify value)? verify,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of OtpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OtpEventCopyWith<OtpEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpEventCopyWith<$Res> {
  factory $OtpEventCopyWith(OtpEvent value, $Res Function(OtpEvent) then) =
      _$OtpEventCopyWithImpl<$Res, OtpEvent>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$OtpEventCopyWithImpl<$Res, $Val extends OtpEvent>
    implements $OtpEventCopyWith<$Res> {
  _$OtpEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OtpEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? email = null}) {
    return _then(
      _value.copyWith(
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OtpGenerateImplCopyWith<$Res>
    implements $OtpEventCopyWith<$Res> {
  factory _$$OtpGenerateImplCopyWith(
    _$OtpGenerateImpl value,
    $Res Function(_$OtpGenerateImpl) then,
  ) = __$$OtpGenerateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$OtpGenerateImplCopyWithImpl<$Res>
    extends _$OtpEventCopyWithImpl<$Res, _$OtpGenerateImpl>
    implements _$$OtpGenerateImplCopyWith<$Res> {
  __$$OtpGenerateImplCopyWithImpl(
    _$OtpGenerateImpl _value,
    $Res Function(_$OtpGenerateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OtpEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? email = null}) {
    return _then(
      _$OtpGenerateImpl(
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$OtpGenerateImpl implements OtpGenerate {
  const _$OtpGenerateImpl({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'OtpEvent.generate(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpGenerateImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of OtpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpGenerateImplCopyWith<_$OtpGenerateImpl> get copyWith =>
      __$$OtpGenerateImplCopyWithImpl<_$OtpGenerateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) generate,
    required TResult Function(String email, String code) verify,
  }) {
    return generate(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? generate,
    TResult? Function(String email, String code)? verify,
  }) {
    return generate?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? generate,
    TResult Function(String email, String code)? verify,
    required TResult orElse(),
  }) {
    if (generate != null) {
      return generate(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OtpGenerate value) generate,
    required TResult Function(OtpVerify value) verify,
  }) {
    return generate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OtpGenerate value)? generate,
    TResult? Function(OtpVerify value)? verify,
  }) {
    return generate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OtpGenerate value)? generate,
    TResult Function(OtpVerify value)? verify,
    required TResult orElse(),
  }) {
    if (generate != null) {
      return generate(this);
    }
    return orElse();
  }
}

abstract class OtpGenerate implements OtpEvent {
  const factory OtpGenerate({required final String email}) = _$OtpGenerateImpl;

  @override
  String get email;

  /// Create a copy of OtpEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtpGenerateImplCopyWith<_$OtpGenerateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OtpVerifyImplCopyWith<$Res>
    implements $OtpEventCopyWith<$Res> {
  factory _$$OtpVerifyImplCopyWith(
    _$OtpVerifyImpl value,
    $Res Function(_$OtpVerifyImpl) then,
  ) = __$$OtpVerifyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String code});
}

/// @nodoc
class __$$OtpVerifyImplCopyWithImpl<$Res>
    extends _$OtpEventCopyWithImpl<$Res, _$OtpVerifyImpl>
    implements _$$OtpVerifyImplCopyWith<$Res> {
  __$$OtpVerifyImplCopyWithImpl(
    _$OtpVerifyImpl _value,
    $Res Function(_$OtpVerifyImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OtpEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? email = null, Object? code = null}) {
    return _then(
      _$OtpVerifyImpl(
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        code: null == code
            ? _value.code
            : code // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$OtpVerifyImpl implements OtpVerify {
  const _$OtpVerifyImpl({required this.email, required this.code});

  @override
  final String email;
  @override
  final String code;

  @override
  String toString() {
    return 'OtpEvent.verify(email: $email, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpVerifyImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, code);

  /// Create a copy of OtpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpVerifyImplCopyWith<_$OtpVerifyImpl> get copyWith =>
      __$$OtpVerifyImplCopyWithImpl<_$OtpVerifyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) generate,
    required TResult Function(String email, String code) verify,
  }) {
    return verify(email, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? generate,
    TResult? Function(String email, String code)? verify,
  }) {
    return verify?.call(email, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? generate,
    TResult Function(String email, String code)? verify,
    required TResult orElse(),
  }) {
    if (verify != null) {
      return verify(email, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OtpGenerate value) generate,
    required TResult Function(OtpVerify value) verify,
  }) {
    return verify(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OtpGenerate value)? generate,
    TResult? Function(OtpVerify value)? verify,
  }) {
    return verify?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OtpGenerate value)? generate,
    TResult Function(OtpVerify value)? verify,
    required TResult orElse(),
  }) {
    if (verify != null) {
      return verify(this);
    }
    return orElse();
  }
}

abstract class OtpVerify implements OtpEvent {
  const factory OtpVerify({
    required final String email,
    required final String code,
  }) = _$OtpVerifyImpl;

  @override
  String get email;
  String get code;

  /// Create a copy of OtpEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtpVerifyImplCopyWith<_$OtpVerifyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
