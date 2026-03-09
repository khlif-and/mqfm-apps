// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vote.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

VoteEntity _$VoteEntityFromJson(Map<String, dynamic> json) {
  return _VoteEntity.fromJson(json);
}

/// @nodoc
mixin _$VoteEntity {
  int get id => throw _privateConstructorUsedError;
  int get audioId => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;

  /// Serializes this VoteEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VoteEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VoteEntityCopyWith<VoteEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoteEntityCopyWith<$Res> {
  factory $VoteEntityCopyWith(
    VoteEntity value,
    $Res Function(VoteEntity) then,
  ) = _$VoteEntityCopyWithImpl<$Res, VoteEntity>;
  @useResult
  $Res call({int id, int audioId, String createdAt});
}

/// @nodoc
class _$VoteEntityCopyWithImpl<$Res, $Val extends VoteEntity>
    implements $VoteEntityCopyWith<$Res> {
  _$VoteEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VoteEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? audioId = null,
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
abstract class _$$VoteEntityImplCopyWith<$Res>
    implements $VoteEntityCopyWith<$Res> {
  factory _$$VoteEntityImplCopyWith(
    _$VoteEntityImpl value,
    $Res Function(_$VoteEntityImpl) then,
  ) = __$$VoteEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int audioId, String createdAt});
}

/// @nodoc
class __$$VoteEntityImplCopyWithImpl<$Res>
    extends _$VoteEntityCopyWithImpl<$Res, _$VoteEntityImpl>
    implements _$$VoteEntityImplCopyWith<$Res> {
  __$$VoteEntityImplCopyWithImpl(
    _$VoteEntityImpl _value,
    $Res Function(_$VoteEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VoteEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? audioId = null,
    Object? createdAt = null,
  }) {
    return _then(
      _$VoteEntityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        audioId: null == audioId
            ? _value.audioId
            : audioId // ignore: cast_nullable_to_non_nullable
                  as int,
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
class _$VoteEntityImpl implements _VoteEntity {
  const _$VoteEntityImpl({
    required this.id,
    this.audioId = 0,
    this.createdAt = '',
  });

  factory _$VoteEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$VoteEntityImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final int audioId;
  @override
  @JsonKey()
  final String createdAt;

  @override
  String toString() {
    return 'VoteEntity(id: $id, audioId: $audioId, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VoteEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.audioId, audioId) || other.audioId == audioId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, audioId, createdAt);

  /// Create a copy of VoteEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VoteEntityImplCopyWith<_$VoteEntityImpl> get copyWith =>
      __$$VoteEntityImplCopyWithImpl<_$VoteEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VoteEntityImplToJson(this);
  }
}

abstract class _VoteEntity implements VoteEntity {
  const factory _VoteEntity({
    required final int id,
    final int audioId,
    final String createdAt,
  }) = _$VoteEntityImpl;

  factory _VoteEntity.fromJson(Map<String, dynamic> json) =
      _$VoteEntityImpl.fromJson;

  @override
  int get id;
  @override
  int get audioId;
  @override
  String get createdAt;

  /// Create a copy of VoteEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VoteEntityImplCopyWith<_$VoteEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VoteRankingEntity _$VoteRankingEntityFromJson(Map<String, dynamic> json) {
  return _VoteRankingEntity.fromJson(json);
}

/// @nodoc
mixin _$VoteRankingEntity {
  int get audioId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get artist => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;
  int get voteCount => throw _privateConstructorUsedError;
  int get rank => throw _privateConstructorUsedError;

  /// Serializes this VoteRankingEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VoteRankingEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VoteRankingEntityCopyWith<VoteRankingEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoteRankingEntityCopyWith<$Res> {
  factory $VoteRankingEntityCopyWith(
    VoteRankingEntity value,
    $Res Function(VoteRankingEntity) then,
  ) = _$VoteRankingEntityCopyWithImpl<$Res, VoteRankingEntity>;
  @useResult
  $Res call({
    int audioId,
    String title,
    String artist,
    String thumbnail,
    int voteCount,
    int rank,
  });
}

/// @nodoc
class _$VoteRankingEntityCopyWithImpl<$Res, $Val extends VoteRankingEntity>
    implements $VoteRankingEntityCopyWith<$Res> {
  _$VoteRankingEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VoteRankingEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audioId = null,
    Object? title = null,
    Object? artist = null,
    Object? thumbnail = null,
    Object? voteCount = null,
    Object? rank = null,
  }) {
    return _then(
      _value.copyWith(
            audioId: null == audioId
                ? _value.audioId
                : audioId // ignore: cast_nullable_to_non_nullable
                      as int,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            artist: null == artist
                ? _value.artist
                : artist // ignore: cast_nullable_to_non_nullable
                      as String,
            thumbnail: null == thumbnail
                ? _value.thumbnail
                : thumbnail // ignore: cast_nullable_to_non_nullable
                      as String,
            voteCount: null == voteCount
                ? _value.voteCount
                : voteCount // ignore: cast_nullable_to_non_nullable
                      as int,
            rank: null == rank
                ? _value.rank
                : rank // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$VoteRankingEntityImplCopyWith<$Res>
    implements $VoteRankingEntityCopyWith<$Res> {
  factory _$$VoteRankingEntityImplCopyWith(
    _$VoteRankingEntityImpl value,
    $Res Function(_$VoteRankingEntityImpl) then,
  ) = __$$VoteRankingEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int audioId,
    String title,
    String artist,
    String thumbnail,
    int voteCount,
    int rank,
  });
}

/// @nodoc
class __$$VoteRankingEntityImplCopyWithImpl<$Res>
    extends _$VoteRankingEntityCopyWithImpl<$Res, _$VoteRankingEntityImpl>
    implements _$$VoteRankingEntityImplCopyWith<$Res> {
  __$$VoteRankingEntityImplCopyWithImpl(
    _$VoteRankingEntityImpl _value,
    $Res Function(_$VoteRankingEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VoteRankingEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audioId = null,
    Object? title = null,
    Object? artist = null,
    Object? thumbnail = null,
    Object? voteCount = null,
    Object? rank = null,
  }) {
    return _then(
      _$VoteRankingEntityImpl(
        audioId: null == audioId
            ? _value.audioId
            : audioId // ignore: cast_nullable_to_non_nullable
                  as int,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        artist: null == artist
            ? _value.artist
            : artist // ignore: cast_nullable_to_non_nullable
                  as String,
        thumbnail: null == thumbnail
            ? _value.thumbnail
            : thumbnail // ignore: cast_nullable_to_non_nullable
                  as String,
        voteCount: null == voteCount
            ? _value.voteCount
            : voteCount // ignore: cast_nullable_to_non_nullable
                  as int,
        rank: null == rank
            ? _value.rank
            : rank // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$VoteRankingEntityImpl implements _VoteRankingEntity {
  const _$VoteRankingEntityImpl({
    this.audioId = 0,
    this.title = '',
    this.artist = '',
    this.thumbnail = '',
    this.voteCount = 0,
    this.rank = 0,
  });

  factory _$VoteRankingEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$VoteRankingEntityImplFromJson(json);

  @override
  @JsonKey()
  final int audioId;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String artist;
  @override
  @JsonKey()
  final String thumbnail;
  @override
  @JsonKey()
  final int voteCount;
  @override
  @JsonKey()
  final int rank;

  @override
  String toString() {
    return 'VoteRankingEntity(audioId: $audioId, title: $title, artist: $artist, thumbnail: $thumbnail, voteCount: $voteCount, rank: $rank)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VoteRankingEntityImpl &&
            (identical(other.audioId, audioId) || other.audioId == audioId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.artist, artist) || other.artist == artist) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.voteCount, voteCount) ||
                other.voteCount == voteCount) &&
            (identical(other.rank, rank) || other.rank == rank));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    audioId,
    title,
    artist,
    thumbnail,
    voteCount,
    rank,
  );

  /// Create a copy of VoteRankingEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VoteRankingEntityImplCopyWith<_$VoteRankingEntityImpl> get copyWith =>
      __$$VoteRankingEntityImplCopyWithImpl<_$VoteRankingEntityImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$VoteRankingEntityImplToJson(this);
  }
}

abstract class _VoteRankingEntity implements VoteRankingEntity {
  const factory _VoteRankingEntity({
    final int audioId,
    final String title,
    final String artist,
    final String thumbnail,
    final int voteCount,
    final int rank,
  }) = _$VoteRankingEntityImpl;

  factory _VoteRankingEntity.fromJson(Map<String, dynamic> json) =
      _$VoteRankingEntityImpl.fromJson;

  @override
  int get audioId;
  @override
  String get title;
  @override
  String get artist;
  @override
  String get thumbnail;
  @override
  int get voteCount;
  @override
  int get rank;

  /// Create a copy of VoteRankingEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VoteRankingEntityImplCopyWith<_$VoteRankingEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
