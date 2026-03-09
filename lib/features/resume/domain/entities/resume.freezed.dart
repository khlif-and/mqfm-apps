// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resume.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ResumeEntity _$ResumeEntityFromJson(Map<String, dynamic> json) {
  return _ResumeEntity.fromJson(json);
}

/// @nodoc
mixin _$ResumeEntity {
  int get audioId => throw _privateConstructorUsedError;
  int get positionSeconds => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ResumeEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResumeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResumeEntityCopyWith<ResumeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResumeEntityCopyWith<$Res> {
  factory $ResumeEntityCopyWith(
    ResumeEntity value,
    $Res Function(ResumeEntity) then,
  ) = _$ResumeEntityCopyWithImpl<$Res, ResumeEntity>;
  @useResult
  $Res call({int audioId, int positionSeconds, String updatedAt});
}

/// @nodoc
class _$ResumeEntityCopyWithImpl<$Res, $Val extends ResumeEntity>
    implements $ResumeEntityCopyWith<$Res> {
  _$ResumeEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResumeEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audioId = null,
    Object? positionSeconds = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _value.copyWith(
            audioId: null == audioId
                ? _value.audioId
                : audioId // ignore: cast_nullable_to_non_nullable
                      as int,
            positionSeconds: null == positionSeconds
                ? _value.positionSeconds
                : positionSeconds // ignore: cast_nullable_to_non_nullable
                      as int,
            updatedAt: null == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ResumeEntityImplCopyWith<$Res>
    implements $ResumeEntityCopyWith<$Res> {
  factory _$$ResumeEntityImplCopyWith(
    _$ResumeEntityImpl value,
    $Res Function(_$ResumeEntityImpl) then,
  ) = __$$ResumeEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int audioId, int positionSeconds, String updatedAt});
}

/// @nodoc
class __$$ResumeEntityImplCopyWithImpl<$Res>
    extends _$ResumeEntityCopyWithImpl<$Res, _$ResumeEntityImpl>
    implements _$$ResumeEntityImplCopyWith<$Res> {
  __$$ResumeEntityImplCopyWithImpl(
    _$ResumeEntityImpl _value,
    $Res Function(_$ResumeEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ResumeEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audioId = null,
    Object? positionSeconds = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _$ResumeEntityImpl(
        audioId: null == audioId
            ? _value.audioId
            : audioId // ignore: cast_nullable_to_non_nullable
                  as int,
        positionSeconds: null == positionSeconds
            ? _value.positionSeconds
            : positionSeconds // ignore: cast_nullable_to_non_nullable
                  as int,
        updatedAt: null == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ResumeEntityImpl implements _ResumeEntity {
  const _$ResumeEntityImpl({
    this.audioId = 0,
    this.positionSeconds = 0,
    this.updatedAt = '',
  });

  factory _$ResumeEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResumeEntityImplFromJson(json);

  @override
  @JsonKey()
  final int audioId;
  @override
  @JsonKey()
  final int positionSeconds;
  @override
  @JsonKey()
  final String updatedAt;

  @override
  String toString() {
    return 'ResumeEntity(audioId: $audioId, positionSeconds: $positionSeconds, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResumeEntityImpl &&
            (identical(other.audioId, audioId) || other.audioId == audioId) &&
            (identical(other.positionSeconds, positionSeconds) ||
                other.positionSeconds == positionSeconds) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, audioId, positionSeconds, updatedAt);

  /// Create a copy of ResumeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResumeEntityImplCopyWith<_$ResumeEntityImpl> get copyWith =>
      __$$ResumeEntityImplCopyWithImpl<_$ResumeEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResumeEntityImplToJson(this);
  }
}

abstract class _ResumeEntity implements ResumeEntity {
  const factory _ResumeEntity({
    final int audioId,
    final int positionSeconds,
    final String updatedAt,
  }) = _$ResumeEntityImpl;

  factory _ResumeEntity.fromJson(Map<String, dynamic> json) =
      _$ResumeEntityImpl.fromJson;

  @override
  int get audioId;
  @override
  int get positionSeconds;
  @override
  String get updatedAt;

  /// Create a copy of ResumeEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResumeEntityImplCopyWith<_$ResumeEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
