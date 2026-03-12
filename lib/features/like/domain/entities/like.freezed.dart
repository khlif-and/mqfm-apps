// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'like.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

LikeEntity _$LikeEntityFromJson(Map<String, dynamic> json) {
  return _LikeEntity.fromJson(json);
}

/// @nodoc
mixin _$LikeEntity {
  int get id => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  String get targetType => throw _privateConstructorUsedError;
  int get targetId => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  AudioEntity? get audio => throw _privateConstructorUsedError;

  /// Serializes this LikeEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

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
  $Res call({
    int id,
    int userId,
    String targetType,
    int targetId,
    String createdAt,
    AudioEntity? audio,
  });

  $AudioEntityCopyWith<$Res>? get audio;
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
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? targetType = null,
    Object? targetId = null,
    Object? createdAt = null,
    Object? audio = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as int,
            targetType: null == targetType
                ? _value.targetType
                : targetType // ignore: cast_nullable_to_non_nullable
                      as String,
            targetId: null == targetId
                ? _value.targetId
                : targetId // ignore: cast_nullable_to_non_nullable
                      as int,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String,
            audio: freezed == audio
                ? _value.audio
                : audio // ignore: cast_nullable_to_non_nullable
                      as AudioEntity?,
          )
          as $Val,
    );
  }

  /// Create a copy of LikeEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AudioEntityCopyWith<$Res>? get audio {
    if (_value.audio == null) {
      return null;
    }

    return $AudioEntityCopyWith<$Res>(_value.audio!, (value) {
      return _then(_value.copyWith(audio: value) as $Val);
    });
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
  $Res call({
    int id,
    int userId,
    String targetType,
    int targetId,
    String createdAt,
    AudioEntity? audio,
  });

  @override
  $AudioEntityCopyWith<$Res>? get audio;
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
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? targetType = null,
    Object? targetId = null,
    Object? createdAt = null,
    Object? audio = freezed,
  }) {
    return _then(
      _$LikeEntityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as int,
        targetType: null == targetType
            ? _value.targetType
            : targetType // ignore: cast_nullable_to_non_nullable
                  as String,
        targetId: null == targetId
            ? _value.targetId
            : targetId // ignore: cast_nullable_to_non_nullable
                  as int,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String,
        audio: freezed == audio
            ? _value.audio
            : audio // ignore: cast_nullable_to_non_nullable
                  as AudioEntity?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LikeEntityImpl implements _LikeEntity {
  const _$LikeEntityImpl({
    this.id = 0,
    this.userId = 0,
    this.targetType = 'audio',
    this.targetId = 0,
    this.createdAt = '',
    this.audio,
  });

  factory _$LikeEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$LikeEntityImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final int userId;
  @override
  @JsonKey()
  final String targetType;
  @override
  @JsonKey()
  final int targetId;
  @override
  @JsonKey()
  final String createdAt;
  @override
  final AudioEntity? audio;

  @override
  String toString() {
    return 'LikeEntity(id: $id, userId: $userId, targetType: $targetType, targetId: $targetId, createdAt: $createdAt, audio: $audio)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikeEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.targetType, targetType) ||
                other.targetType == targetType) &&
            (identical(other.targetId, targetId) ||
                other.targetId == targetId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.audio, audio) || other.audio == audio));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    userId,
    targetType,
    targetId,
    createdAt,
    audio,
  );

  /// Create a copy of LikeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LikeEntityImplCopyWith<_$LikeEntityImpl> get copyWith =>
      __$$LikeEntityImplCopyWithImpl<_$LikeEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LikeEntityImplToJson(this);
  }
}

abstract class _LikeEntity implements LikeEntity {
  const factory _LikeEntity({
    final int id,
    final int userId,
    final String targetType,
    final int targetId,
    final String createdAt,
    final AudioEntity? audio,
  }) = _$LikeEntityImpl;

  factory _LikeEntity.fromJson(Map<String, dynamic> json) =
      _$LikeEntityImpl.fromJson;

  @override
  int get id;
  @override
  int get userId;
  @override
  String get targetType;
  @override
  int get targetId;
  @override
  String get createdAt;
  @override
  AudioEntity? get audio;

  /// Create a copy of LikeEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LikeEntityImplCopyWith<_$LikeEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
