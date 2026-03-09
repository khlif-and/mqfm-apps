// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clip.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ClipEntity _$ClipEntityFromJson(Map<String, dynamic> json) {
  return _ClipEntity.fromJson(json);
}

/// @nodoc
mixin _$ClipEntity {
  int get id => throw _privateConstructorUsedError;
  int get audioId => throw _privateConstructorUsedError;
  int get startTime => throw _privateConstructorUsedError;
  int get endTime => throw _privateConstructorUsedError;
  String get clipUrl => throw _privateConstructorUsedError;
  String get shareToken => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;

  /// Serializes this ClipEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClipEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClipEntityCopyWith<ClipEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClipEntityCopyWith<$Res> {
  factory $ClipEntityCopyWith(
    ClipEntity value,
    $Res Function(ClipEntity) then,
  ) = _$ClipEntityCopyWithImpl<$Res, ClipEntity>;
  @useResult
  $Res call({
    int id,
    int audioId,
    int startTime,
    int endTime,
    String clipUrl,
    String shareToken,
    String createdAt,
  });
}

/// @nodoc
class _$ClipEntityCopyWithImpl<$Res, $Val extends ClipEntity>
    implements $ClipEntityCopyWith<$Res> {
  _$ClipEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClipEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? audioId = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? clipUrl = null,
    Object? shareToken = null,
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
            startTime: null == startTime
                ? _value.startTime
                : startTime // ignore: cast_nullable_to_non_nullable
                      as int,
            endTime: null == endTime
                ? _value.endTime
                : endTime // ignore: cast_nullable_to_non_nullable
                      as int,
            clipUrl: null == clipUrl
                ? _value.clipUrl
                : clipUrl // ignore: cast_nullable_to_non_nullable
                      as String,
            shareToken: null == shareToken
                ? _value.shareToken
                : shareToken // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ClipEntityImplCopyWith<$Res>
    implements $ClipEntityCopyWith<$Res> {
  factory _$$ClipEntityImplCopyWith(
    _$ClipEntityImpl value,
    $Res Function(_$ClipEntityImpl) then,
  ) = __$$ClipEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    int audioId,
    int startTime,
    int endTime,
    String clipUrl,
    String shareToken,
    String createdAt,
  });
}

/// @nodoc
class __$$ClipEntityImplCopyWithImpl<$Res>
    extends _$ClipEntityCopyWithImpl<$Res, _$ClipEntityImpl>
    implements _$$ClipEntityImplCopyWith<$Res> {
  __$$ClipEntityImplCopyWithImpl(
    _$ClipEntityImpl _value,
    $Res Function(_$ClipEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ClipEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? audioId = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? clipUrl = null,
    Object? shareToken = null,
    Object? createdAt = null,
  }) {
    return _then(
      _$ClipEntityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        audioId: null == audioId
            ? _value.audioId
            : audioId // ignore: cast_nullable_to_non_nullable
                  as int,
        startTime: null == startTime
            ? _value.startTime
            : startTime // ignore: cast_nullable_to_non_nullable
                  as int,
        endTime: null == endTime
            ? _value.endTime
            : endTime // ignore: cast_nullable_to_non_nullable
                  as int,
        clipUrl: null == clipUrl
            ? _value.clipUrl
            : clipUrl // ignore: cast_nullable_to_non_nullable
                  as String,
        shareToken: null == shareToken
            ? _value.shareToken
            : shareToken // ignore: cast_nullable_to_non_nullable
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
class _$ClipEntityImpl implements _ClipEntity {
  const _$ClipEntityImpl({
    required this.id,
    this.audioId = 0,
    this.startTime = 0,
    this.endTime = 0,
    this.clipUrl = '',
    this.shareToken = '',
    this.createdAt = '',
  });

  factory _$ClipEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClipEntityImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final int audioId;
  @override
  @JsonKey()
  final int startTime;
  @override
  @JsonKey()
  final int endTime;
  @override
  @JsonKey()
  final String clipUrl;
  @override
  @JsonKey()
  final String shareToken;
  @override
  @JsonKey()
  final String createdAt;

  @override
  String toString() {
    return 'ClipEntity(id: $id, audioId: $audioId, startTime: $startTime, endTime: $endTime, clipUrl: $clipUrl, shareToken: $shareToken, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClipEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.audioId, audioId) || other.audioId == audioId) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.clipUrl, clipUrl) || other.clipUrl == clipUrl) &&
            (identical(other.shareToken, shareToken) ||
                other.shareToken == shareToken) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    audioId,
    startTime,
    endTime,
    clipUrl,
    shareToken,
    createdAt,
  );

  /// Create a copy of ClipEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClipEntityImplCopyWith<_$ClipEntityImpl> get copyWith =>
      __$$ClipEntityImplCopyWithImpl<_$ClipEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClipEntityImplToJson(this);
  }
}

abstract class _ClipEntity implements ClipEntity {
  const factory _ClipEntity({
    required final int id,
    final int audioId,
    final int startTime,
    final int endTime,
    final String clipUrl,
    final String shareToken,
    final String createdAt,
  }) = _$ClipEntityImpl;

  factory _ClipEntity.fromJson(Map<String, dynamic> json) =
      _$ClipEntityImpl.fromJson;

  @override
  int get id;
  @override
  int get audioId;
  @override
  int get startTime;
  @override
  int get endTime;
  @override
  String get clipUrl;
  @override
  String get shareToken;
  @override
  String get createdAt;

  /// Create a copy of ClipEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClipEntityImplCopyWith<_$ClipEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
