// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audio_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AudioEntity _$AudioEntityFromJson(Map<String, dynamic> json) {
  return _AudioEntity.fromJson(json);
}

/// @nodoc
mixin _$AudioEntity {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get audioUrl => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;
  int get categoryId => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this AudioEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AudioEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AudioEntityCopyWith<AudioEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioEntityCopyWith<$Res> {
  factory $AudioEntityCopyWith(
    AudioEntity value,
    $Res Function(AudioEntity) then,
  ) = _$AudioEntityCopyWithImpl<$Res, AudioEntity>;
  @useResult
  $Res call({
    int id,
    String title,
    String description,
    String audioUrl,
    String thumbnail,
    int categoryId,
    String createdAt,
    String updatedAt,
  });
}

/// @nodoc
class _$AudioEntityCopyWithImpl<$Res, $Val extends AudioEntity>
    implements $AudioEntityCopyWith<$Res> {
  _$AudioEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AudioEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? audioUrl = null,
    Object? thumbnail = null,
    Object? categoryId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            audioUrl: null == audioUrl
                ? _value.audioUrl
                : audioUrl // ignore: cast_nullable_to_non_nullable
                      as String,
            thumbnail: null == thumbnail
                ? _value.thumbnail
                : thumbnail // ignore: cast_nullable_to_non_nullable
                      as String,
            categoryId: null == categoryId
                ? _value.categoryId
                : categoryId // ignore: cast_nullable_to_non_nullable
                      as int,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String,
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
abstract class _$$AudioEntityImplCopyWith<$Res>
    implements $AudioEntityCopyWith<$Res> {
  factory _$$AudioEntityImplCopyWith(
    _$AudioEntityImpl value,
    $Res Function(_$AudioEntityImpl) then,
  ) = __$$AudioEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String title,
    String description,
    String audioUrl,
    String thumbnail,
    int categoryId,
    String createdAt,
    String updatedAt,
  });
}

/// @nodoc
class __$$AudioEntityImplCopyWithImpl<$Res>
    extends _$AudioEntityCopyWithImpl<$Res, _$AudioEntityImpl>
    implements _$$AudioEntityImplCopyWith<$Res> {
  __$$AudioEntityImplCopyWithImpl(
    _$AudioEntityImpl _value,
    $Res Function(_$AudioEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AudioEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? audioUrl = null,
    Object? thumbnail = null,
    Object? categoryId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _$AudioEntityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        audioUrl: null == audioUrl
            ? _value.audioUrl
            : audioUrl // ignore: cast_nullable_to_non_nullable
                  as String,
        thumbnail: null == thumbnail
            ? _value.thumbnail
            : thumbnail // ignore: cast_nullable_to_non_nullable
                  as String,
        categoryId: null == categoryId
            ? _value.categoryId
            : categoryId // ignore: cast_nullable_to_non_nullable
                  as int,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String,
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
class _$AudioEntityImpl implements _AudioEntity {
  const _$AudioEntityImpl({
    required this.id,
    required this.title,
    required this.description,
    required this.audioUrl,
    required this.thumbnail,
    required this.categoryId,
    required this.createdAt,
    required this.updatedAt,
  });

  factory _$AudioEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AudioEntityImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String audioUrl;
  @override
  final String thumbnail;
  @override
  final int categoryId;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  @override
  String toString() {
    return 'AudioEntity(id: $id, title: $title, description: $description, audioUrl: $audioUrl, thumbnail: $thumbnail, categoryId: $categoryId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudioEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.audioUrl, audioUrl) ||
                other.audioUrl == audioUrl) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    title,
    description,
    audioUrl,
    thumbnail,
    categoryId,
    createdAt,
    updatedAt,
  );

  /// Create a copy of AudioEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AudioEntityImplCopyWith<_$AudioEntityImpl> get copyWith =>
      __$$AudioEntityImplCopyWithImpl<_$AudioEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AudioEntityImplToJson(this);
  }
}

abstract class _AudioEntity implements AudioEntity {
  const factory _AudioEntity({
    required final int id,
    required final String title,
    required final String description,
    required final String audioUrl,
    required final String thumbnail,
    required final int categoryId,
    required final String createdAt,
    required final String updatedAt,
  }) = _$AudioEntityImpl;

  factory _AudioEntity.fromJson(Map<String, dynamic> json) =
      _$AudioEntityImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get audioUrl;
  @override
  String get thumbnail;
  @override
  int get categoryId;
  @override
  String get createdAt;
  @override
  String get updatedAt;

  /// Create a copy of AudioEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AudioEntityImplCopyWith<_$AudioEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PlayHistoryEntity _$PlayHistoryEntityFromJson(Map<String, dynamic> json) {
  return _PlayHistoryEntity.fromJson(json);
}

/// @nodoc
mixin _$PlayHistoryEntity {
  int get id => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  int get audioId => throw _privateConstructorUsedError;
  int get playCount => throw _privateConstructorUsedError;
  String get playedAt => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;

  /// Serializes this PlayHistoryEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlayHistoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlayHistoryEntityCopyWith<PlayHistoryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayHistoryEntityCopyWith<$Res> {
  factory $PlayHistoryEntityCopyWith(
    PlayHistoryEntity value,
    $Res Function(PlayHistoryEntity) then,
  ) = _$PlayHistoryEntityCopyWithImpl<$Res, PlayHistoryEntity>;
  @useResult
  $Res call({
    int id,
    int userId,
    int audioId,
    int playCount,
    String playedAt,
    String createdAt,
  });
}

/// @nodoc
class _$PlayHistoryEntityCopyWithImpl<$Res, $Val extends PlayHistoryEntity>
    implements $PlayHistoryEntityCopyWith<$Res> {
  _$PlayHistoryEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlayHistoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? audioId = null,
    Object? playCount = null,
    Object? playedAt = null,
    Object? createdAt = null,
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
            audioId: null == audioId
                ? _value.audioId
                : audioId // ignore: cast_nullable_to_non_nullable
                      as int,
            playCount: null == playCount
                ? _value.playCount
                : playCount // ignore: cast_nullable_to_non_nullable
                      as int,
            playedAt: null == playedAt
                ? _value.playedAt
                : playedAt // ignore: cast_nullable_to_non_nullable
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
abstract class _$$PlayHistoryEntityImplCopyWith<$Res>
    implements $PlayHistoryEntityCopyWith<$Res> {
  factory _$$PlayHistoryEntityImplCopyWith(
    _$PlayHistoryEntityImpl value,
    $Res Function(_$PlayHistoryEntityImpl) then,
  ) = __$$PlayHistoryEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    int userId,
    int audioId,
    int playCount,
    String playedAt,
    String createdAt,
  });
}

/// @nodoc
class __$$PlayHistoryEntityImplCopyWithImpl<$Res>
    extends _$PlayHistoryEntityCopyWithImpl<$Res, _$PlayHistoryEntityImpl>
    implements _$$PlayHistoryEntityImplCopyWith<$Res> {
  __$$PlayHistoryEntityImplCopyWithImpl(
    _$PlayHistoryEntityImpl _value,
    $Res Function(_$PlayHistoryEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlayHistoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? audioId = null,
    Object? playCount = null,
    Object? playedAt = null,
    Object? createdAt = null,
  }) {
    return _then(
      _$PlayHistoryEntityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as int,
        audioId: null == audioId
            ? _value.audioId
            : audioId // ignore: cast_nullable_to_non_nullable
                  as int,
        playCount: null == playCount
            ? _value.playCount
            : playCount // ignore: cast_nullable_to_non_nullable
                  as int,
        playedAt: null == playedAt
            ? _value.playedAt
            : playedAt // ignore: cast_nullable_to_non_nullable
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
class _$PlayHistoryEntityImpl implements _PlayHistoryEntity {
  const _$PlayHistoryEntityImpl({
    required this.id,
    required this.userId,
    required this.audioId,
    required this.playCount,
    required this.playedAt,
    required this.createdAt,
  });

  factory _$PlayHistoryEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlayHistoryEntityImplFromJson(json);

  @override
  final int id;
  @override
  final int userId;
  @override
  final int audioId;
  @override
  final int playCount;
  @override
  final String playedAt;
  @override
  final String createdAt;

  @override
  String toString() {
    return 'PlayHistoryEntity(id: $id, userId: $userId, audioId: $audioId, playCount: $playCount, playedAt: $playedAt, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayHistoryEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.audioId, audioId) || other.audioId == audioId) &&
            (identical(other.playCount, playCount) ||
                other.playCount == playCount) &&
            (identical(other.playedAt, playedAt) ||
                other.playedAt == playedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    userId,
    audioId,
    playCount,
    playedAt,
    createdAt,
  );

  /// Create a copy of PlayHistoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayHistoryEntityImplCopyWith<_$PlayHistoryEntityImpl> get copyWith =>
      __$$PlayHistoryEntityImplCopyWithImpl<_$PlayHistoryEntityImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayHistoryEntityImplToJson(this);
  }
}

abstract class _PlayHistoryEntity implements PlayHistoryEntity {
  const factory _PlayHistoryEntity({
    required final int id,
    required final int userId,
    required final int audioId,
    required final int playCount,
    required final String playedAt,
    required final String createdAt,
  }) = _$PlayHistoryEntityImpl;

  factory _PlayHistoryEntity.fromJson(Map<String, dynamic> json) =
      _$PlayHistoryEntityImpl.fromJson;

  @override
  int get id;
  @override
  int get userId;
  @override
  int get audioId;
  @override
  int get playCount;
  @override
  String get playedAt;
  @override
  String get createdAt;

  /// Create a copy of PlayHistoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayHistoryEntityImplCopyWith<_$PlayHistoryEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
