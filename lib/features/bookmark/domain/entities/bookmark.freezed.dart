// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bookmark.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

BookmarkEntity _$BookmarkEntityFromJson(Map<String, dynamic> json) {
  return _BookmarkEntity.fromJson(json);
}

/// @nodoc
mixin _$BookmarkEntity {
  int get id => throw _privateConstructorUsedError;
  int get audioId => throw _privateConstructorUsedError;
  int get positionSeconds => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;

  /// Serializes this BookmarkEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookmarkEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookmarkEntityCopyWith<BookmarkEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarkEntityCopyWith<$Res> {
  factory $BookmarkEntityCopyWith(
    BookmarkEntity value,
    $Res Function(BookmarkEntity) then,
  ) = _$BookmarkEntityCopyWithImpl<$Res, BookmarkEntity>;
  @useResult
  $Res call({
    int id,
    int audioId,
    int positionSeconds,
    String label,
    String createdAt,
  });
}

/// @nodoc
class _$BookmarkEntityCopyWithImpl<$Res, $Val extends BookmarkEntity>
    implements $BookmarkEntityCopyWith<$Res> {
  _$BookmarkEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookmarkEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? audioId = null,
    Object? positionSeconds = null,
    Object? label = null,
    Object? createdAt = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            audioId: null == audioId
                ? _value.audioId
                : audioId // ignore: cast_nullable_to_non_nullable
                      as int,
            positionSeconds: null == positionSeconds
                ? _value.positionSeconds
                : positionSeconds // ignore: cast_nullable_to_non_nullable
                      as int,
            label: null == label
                ? _value.label
                : label // ignore: cast_nullable_to_non_nullable
                      as String,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BookmarkEntityImplCopyWith<$Res>
    implements $BookmarkEntityCopyWith<$Res> {
  factory _$$BookmarkEntityImplCopyWith(
    _$BookmarkEntityImpl value,
    $Res Function(_$BookmarkEntityImpl) then,
  ) = __$$BookmarkEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    int audioId,
    int positionSeconds,
    String label,
    String createdAt,
  });
}

/// @nodoc
class __$$BookmarkEntityImplCopyWithImpl<$Res>
    extends _$BookmarkEntityCopyWithImpl<$Res, _$BookmarkEntityImpl>
    implements _$$BookmarkEntityImplCopyWith<$Res> {
  __$$BookmarkEntityImplCopyWithImpl(
    _$BookmarkEntityImpl _value,
    $Res Function(_$BookmarkEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BookmarkEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? audioId = null,
    Object? positionSeconds = null,
    Object? label = null,
    Object? createdAt = null,
  }) {
    return _then(
      _$BookmarkEntityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        audioId: null == audioId
            ? _value.audioId
            : audioId // ignore: cast_nullable_to_non_nullable
                  as int,
        positionSeconds: null == positionSeconds
            ? _value.positionSeconds
            : positionSeconds // ignore: cast_nullable_to_non_nullable
                  as int,
        label: null == label
            ? _value.label
            : label // ignore: cast_nullable_to_non_nullable
                  as String,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BookmarkEntityImpl implements _BookmarkEntity {
  const _$BookmarkEntityImpl({
    required this.id,
    this.audioId = 0,
    this.positionSeconds = 0,
    this.label = '',
    this.createdAt = '',
  });

  factory _$BookmarkEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookmarkEntityImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final int audioId;
  @override
  @JsonKey()
  final int positionSeconds;
  @override
  @JsonKey()
  final String label;
  @override
  @JsonKey()
  final String createdAt;

  @override
  String toString() {
    return 'BookmarkEntity(id: $id, audioId: $audioId, positionSeconds: $positionSeconds, label: $label, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookmarkEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.audioId, audioId) || other.audioId == audioId) &&
            (identical(other.positionSeconds, positionSeconds) ||
                other.positionSeconds == positionSeconds) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, audioId, positionSeconds, label, createdAt);

  /// Create a copy of BookmarkEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookmarkEntityImplCopyWith<_$BookmarkEntityImpl> get copyWith =>
      __$$BookmarkEntityImplCopyWithImpl<_$BookmarkEntityImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$BookmarkEntityImplToJson(this);
  }
}

abstract class _BookmarkEntity implements BookmarkEntity {
  const factory _BookmarkEntity({
    required final int id,
    final int audioId,
    final int positionSeconds,
    final String label,
    final String createdAt,
  }) = _$BookmarkEntityImpl;

  factory _BookmarkEntity.fromJson(Map<String, dynamic> json) =
      _$BookmarkEntityImpl.fromJson;

  @override
  int get id;
  @override
  int get audioId;
  @override
  int get positionSeconds;
  @override
  String get label;
  @override
  String get createdAt;

  /// Create a copy of BookmarkEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookmarkEntityImplCopyWith<_$BookmarkEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
