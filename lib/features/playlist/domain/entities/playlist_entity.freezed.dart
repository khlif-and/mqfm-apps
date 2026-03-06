// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'playlist_entity.dart';

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
  String get name => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
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
    String name,
    String imageUrl,
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
    Object? name = null,
    Object? imageUrl = null,
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
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            imageUrl: null == imageUrl
                ? _value.imageUrl
                : imageUrl // ignore: cast_nullable_to_non_nullable
                      as String,
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
    String name,
    String imageUrl,
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
    Object? name = null,
    Object? imageUrl = null,
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
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        imageUrl: null == imageUrl
            ? _value.imageUrl
            : imageUrl // ignore: cast_nullable_to_non_nullable
                  as String,
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
    required this.userId,
    required this.name,
    required this.imageUrl,
    required final List<AudioEntity> audios,
    required this.createdAt,
    required this.updatedAt,
  }) : _audios = audios;

  factory _$PlaylistEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaylistEntityImplFromJson(json);

  @override
  final int id;
  @override
  final int userId;
  @override
  final String name;
  @override
  final String imageUrl;
  final List<AudioEntity> _audios;
  @override
  List<AudioEntity> get audios {
    if (_audios is EqualUnmodifiableListView) return _audios;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_audios);
  }

  @override
  final String createdAt;
  @override
  final String updatedAt;

  @override
  String toString() {
    return 'PlaylistEntity(id: $id, userId: $userId, name: $name, imageUrl: $imageUrl, audios: $audios, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaylistEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
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
    name,
    imageUrl,
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
    required final int userId,
    required final String name,
    required final String imageUrl,
    required final List<AudioEntity> audios,
    required final String createdAt,
    required final String updatedAt,
  }) = _$PlaylistEntityImpl;

  factory _PlaylistEntity.fromJson(Map<String, dynamic> json) =
      _$PlaylistEntityImpl.fromJson;

  @override
  int get id;
  @override
  int get userId;
  @override
  String get name;
  @override
  String get imageUrl;
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
