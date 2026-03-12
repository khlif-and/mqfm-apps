// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'playlist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PlaylistEntity _$PlaylistEntityFromJson(Map<String, dynamic> json) {
  return _PlaylistEntity.fromJson(json);
}

/// @nodoc
mixin _$PlaylistEntity {
  int get id => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  String get creatorRole => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get dominantColor => throw _privateConstructorUsedError;
  String get shareToken => throw _privateConstructorUsedError;
  bool get isPublic => throw _privateConstructorUsedError;
  String get timeSince => throw _privateConstructorUsedError;
  int get audioCount => throw _privateConstructorUsedError;
  List<AudioEntity> get audios => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this PlaylistEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlaylistEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlaylistEntityCopyWith<PlaylistEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistEntityCopyWith<$Res> {
  factory $PlaylistEntityCopyWith(
    PlaylistEntity value,
    $Res Function(PlaylistEntity) then,
  ) = _$PlaylistEntityCopyWithImpl<$Res, PlaylistEntity>;
  @useResult
  $Res call({
    int id,
    int userId,
    String creatorRole,
    String name,
    String imageUrl,
    String dominantColor,
    String shareToken,
    bool isPublic,
    String timeSince,
    int audioCount,
    List<AudioEntity> audios,
    String createdAt,
    String updatedAt,
  });
}

/// @nodoc
class _$PlaylistEntityCopyWithImpl<$Res, $Val extends PlaylistEntity>
    implements $PlaylistEntityCopyWith<$Res> {
  _$PlaylistEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlaylistEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? creatorRole = null,
    Object? name = null,
    Object? imageUrl = null,
    Object? dominantColor = null,
    Object? shareToken = null,
    Object? isPublic = null,
    Object? timeSince = null,
    Object? audioCount = null,
    Object? audios = null,
    Object? createdAt = null,
    Object? updatedAt = null,
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
            creatorRole: null == creatorRole
                ? _value.creatorRole
                : creatorRole // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            imageUrl: null == imageUrl
                ? _value.imageUrl
                : imageUrl // ignore: cast_nullable_to_non_nullable
                      as String,
            dominantColor: null == dominantColor
                ? _value.dominantColor
                : dominantColor // ignore: cast_nullable_to_non_nullable
                      as String,
            shareToken: null == shareToken
                ? _value.shareToken
                : shareToken // ignore: cast_nullable_to_non_nullable
                      as String,
            isPublic: null == isPublic
                ? _value.isPublic
                : isPublic // ignore: cast_nullable_to_non_nullable
                      as bool,
            timeSince: null == timeSince
                ? _value.timeSince
                : timeSince // ignore: cast_nullable_to_non_nullable
                      as String,
            audioCount: null == audioCount
                ? _value.audioCount
                : audioCount // ignore: cast_nullable_to_non_nullable
                      as int,
            audios: null == audios
                ? _value.audios
                : audios // ignore: cast_nullable_to_non_nullable
                      as List<AudioEntity>,
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
abstract class _$$PlaylistEntityImplCopyWith<$Res>
    implements $PlaylistEntityCopyWith<$Res> {
  factory _$$PlaylistEntityImplCopyWith(
    _$PlaylistEntityImpl value,
    $Res Function(_$PlaylistEntityImpl) then,
  ) = __$$PlaylistEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    int userId,
    String creatorRole,
    String name,
    String imageUrl,
    String dominantColor,
    String shareToken,
    bool isPublic,
    String timeSince,
    int audioCount,
    List<AudioEntity> audios,
    String createdAt,
    String updatedAt,
  });
}

/// @nodoc
class __$$PlaylistEntityImplCopyWithImpl<$Res>
    extends _$PlaylistEntityCopyWithImpl<$Res, _$PlaylistEntityImpl>
    implements _$$PlaylistEntityImplCopyWith<$Res> {
  __$$PlaylistEntityImplCopyWithImpl(
    _$PlaylistEntityImpl _value,
    $Res Function(_$PlaylistEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlaylistEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? creatorRole = null,
    Object? name = null,
    Object? imageUrl = null,
    Object? dominantColor = null,
    Object? shareToken = null,
    Object? isPublic = null,
    Object? timeSince = null,
    Object? audioCount = null,
    Object? audios = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _$PlaylistEntityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as int,
        creatorRole: null == creatorRole
            ? _value.creatorRole
            : creatorRole // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        imageUrl: null == imageUrl
            ? _value.imageUrl
            : imageUrl // ignore: cast_nullable_to_non_nullable
                  as String,
        dominantColor: null == dominantColor
            ? _value.dominantColor
            : dominantColor // ignore: cast_nullable_to_non_nullable
                  as String,
        shareToken: null == shareToken
            ? _value.shareToken
            : shareToken // ignore: cast_nullable_to_non_nullable
                  as String,
        isPublic: null == isPublic
            ? _value.isPublic
            : isPublic // ignore: cast_nullable_to_non_nullable
                  as bool,
        timeSince: null == timeSince
            ? _value.timeSince
            : timeSince // ignore: cast_nullable_to_non_nullable
                  as String,
        audioCount: null == audioCount
            ? _value.audioCount
            : audioCount // ignore: cast_nullable_to_non_nullable
                  as int,
        audios: null == audios
            ? _value._audios
            : audios // ignore: cast_nullable_to_non_nullable
                  as List<AudioEntity>,
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
class _$PlaylistEntityImpl implements _PlaylistEntity {
  const _$PlaylistEntityImpl({
    required this.id,
    this.userId = 0,
    this.creatorRole = 'user',
    this.name = '',
    this.imageUrl = '',
    this.dominantColor = '',
    this.shareToken = '',
    this.isPublic = false,
    this.timeSince = '',
    this.audioCount = 0,
    final List<AudioEntity> audios = const [],
    this.createdAt = '',
    this.updatedAt = '',
  }) : _audios = audios;

  factory _$PlaylistEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaylistEntityImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final int userId;
  @override
  @JsonKey()
  final String creatorRole;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String imageUrl;
  @override
  @JsonKey()
  final String dominantColor;
  @override
  @JsonKey()
  final String shareToken;
  @override
  @JsonKey()
  final bool isPublic;
  @override
  @JsonKey()
  final String timeSince;
  @override
  @JsonKey()
  final int audioCount;
  final List<AudioEntity> _audios;
  @override
  @JsonKey()
  List<AudioEntity> get audios {
    if (_audios is EqualUnmodifiableListView) return _audios;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_audios);
  }

  @override
  @JsonKey()
  final String createdAt;
  @override
  @JsonKey()
  final String updatedAt;

  @override
  String toString() {
    return 'PlaylistEntity(id: $id, userId: $userId, creatorRole: $creatorRole, name: $name, imageUrl: $imageUrl, dominantColor: $dominantColor, shareToken: $shareToken, isPublic: $isPublic, timeSince: $timeSince, audioCount: $audioCount, audios: $audios, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaylistEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.creatorRole, creatorRole) ||
                other.creatorRole == creatorRole) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.dominantColor, dominantColor) ||
                other.dominantColor == dominantColor) &&
            (identical(other.shareToken, shareToken) ||
                other.shareToken == shareToken) &&
            (identical(other.isPublic, isPublic) ||
                other.isPublic == isPublic) &&
            (identical(other.timeSince, timeSince) ||
                other.timeSince == timeSince) &&
            (identical(other.audioCount, audioCount) ||
                other.audioCount == audioCount) &&
            const DeepCollectionEquality().equals(other._audios, _audios) &&
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
    userId,
    creatorRole,
    name,
    imageUrl,
    dominantColor,
    shareToken,
    isPublic,
    timeSince,
    audioCount,
    const DeepCollectionEquality().hash(_audios),
    createdAt,
    updatedAt,
  );

  /// Create a copy of PlaylistEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaylistEntityImplCopyWith<_$PlaylistEntityImpl> get copyWith =>
      __$$PlaylistEntityImplCopyWithImpl<_$PlaylistEntityImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaylistEntityImplToJson(this);
  }
}

abstract class _PlaylistEntity implements PlaylistEntity {
  const factory _PlaylistEntity({
    required final int id,
    final int userId,
    final String creatorRole,
    final String name,
    final String imageUrl,
    final String dominantColor,
    final String shareToken,
    final bool isPublic,
    final String timeSince,
    final int audioCount,
    final List<AudioEntity> audios,
    final String createdAt,
    final String updatedAt,
  }) = _$PlaylistEntityImpl;

  factory _PlaylistEntity.fromJson(Map<String, dynamic> json) =
      _$PlaylistEntityImpl.fromJson;

  @override
  int get id;
  @override
  int get userId;
  @override
  String get creatorRole;
  @override
  String get name;
  @override
  String get imageUrl;
  @override
  String get dominantColor;
  @override
  String get shareToken;
  @override
  bool get isPublic;
  @override
  String get timeSince;
  @override
  int get audioCount;
  @override
  List<AudioEntity> get audios;
  @override
  String get createdAt;
  @override
  String get updatedAt;

  /// Create a copy of PlaylistEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlaylistEntityImplCopyWith<_$PlaylistEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
