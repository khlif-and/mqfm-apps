// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'like_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$LikeEntity {
  int get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  /// Create a copy of LikeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LikeEntityCopyWith<LikeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikeEntityCopyWith<$Res> {
  factory $LikeEntityCopyWith(
    LikeEntity value,
    $Res Function(LikeEntity) then,
  ) = _$LikeEntityCopyWithImpl<$Res, LikeEntity>;
  @useResult
  $Res call({int status, String message});
}

/// @nodoc
class _$LikeEntityCopyWithImpl<$Res, $Val extends LikeEntity>
    implements $LikeEntityCopyWith<$Res> {
  _$LikeEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LikeEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null, Object? message = null}) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as int,
            message: null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LikeEntityImplCopyWith<$Res>
    implements $LikeEntityCopyWith<$Res> {
  factory _$$LikeEntityImplCopyWith(
    _$LikeEntityImpl value,
    $Res Function(_$LikeEntityImpl) then,
  ) = __$$LikeEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, String message});
}

/// @nodoc
class __$$LikeEntityImplCopyWithImpl<$Res>
    extends _$LikeEntityCopyWithImpl<$Res, _$LikeEntityImpl>
    implements _$$LikeEntityImplCopyWith<$Res> {
  __$$LikeEntityImplCopyWithImpl(
    _$LikeEntityImpl _value,
    $Res Function(_$LikeEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LikeEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null, Object? message = null}) {
    return _then(
      _$LikeEntityImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as int,
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$LikeEntityImpl implements _LikeEntity {
  const _$LikeEntityImpl({required this.status, required this.message});

  @override
  final int status;
  @override
  final String message;

  @override
  String toString() {
    return 'LikeEntity(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikeEntityImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  /// Create a copy of LikeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LikeEntityImplCopyWith<_$LikeEntityImpl> get copyWith =>
      __$$LikeEntityImplCopyWithImpl<_$LikeEntityImpl>(this, _$identity);
}

abstract class _LikeEntity implements LikeEntity {
  const factory _LikeEntity({
    required final int status,
    required final String message,
  }) = _$LikeEntityImpl;

  @override
  int get status;
  @override
  String get message;

  /// Create a copy of LikeEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LikeEntityImplCopyWith<_$LikeEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
