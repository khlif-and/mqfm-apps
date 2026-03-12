// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'download.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DownloadEntity _$DownloadEntityFromJson(Map<String, dynamic> json) {
  return _DownloadEntity.fromJson(json);
}

/// @nodoc
mixin _$DownloadEntity {
  int get id => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  int get audioId => throw _privateConstructorUsedError;
  int? get playlistId => throw _privateConstructorUsedError;
  AudioEntity? get audio => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get artist => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;
  String get dominantColor => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  String get durationFmt => throw _privateConstructorUsedError;
  int get fileSize => throw _privateConstructorUsedError;
  String get expiresAt => throw _privateConstructorUsedError;
  int get daysRemaining => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;

  /// Serializes this DownloadEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DownloadEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DownloadEntityCopyWith<DownloadEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadEntityCopyWith<$Res> {
  factory $DownloadEntityCopyWith(
    DownloadEntity value,
    $Res Function(DownloadEntity) then,
  ) = _$DownloadEntityCopyWithImpl<$Res, DownloadEntity>;
  @useResult
  $Res call({
    int id,
    int userId,
    int audioId,
    int? playlistId,
    AudioEntity? audio,
    String title,
    String artist,
    String thumbnail,
    String dominantColor,
    int duration,
    String durationFmt,
    int fileSize,
    String expiresAt,
    int daysRemaining,
    String createdAt,
  });

  $AudioEntityCopyWith<$Res>? get audio;
}

/// @nodoc
class _$DownloadEntityCopyWithImpl<$Res, $Val extends DownloadEntity>
    implements $DownloadEntityCopyWith<$Res> {
  _$DownloadEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DownloadEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? audioId = null,
    Object? playlistId = freezed,
    Object? audio = freezed,
    Object? title = null,
    Object? artist = null,
    Object? thumbnail = null,
    Object? dominantColor = null,
    Object? duration = null,
    Object? durationFmt = null,
    Object? fileSize = null,
    Object? expiresAt = null,
    Object? daysRemaining = null,
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
            playlistId: freezed == playlistId
                ? _value.playlistId
                : playlistId // ignore: cast_nullable_to_non_nullable
                      as int?,
            audio: freezed == audio
                ? _value.audio
                : audio // ignore: cast_nullable_to_non_nullable
                      as AudioEntity?,
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
            dominantColor: null == dominantColor
                ? _value.dominantColor
                : dominantColor // ignore: cast_nullable_to_non_nullable
                      as String,
            duration: null == duration
                ? _value.duration
                : duration // ignore: cast_nullable_to_non_nullable
                      as int,
            durationFmt: null == durationFmt
                ? _value.durationFmt
                : durationFmt // ignore: cast_nullable_to_non_nullable
                      as String,
            fileSize: null == fileSize
                ? _value.fileSize
                : fileSize // ignore: cast_nullable_to_non_nullable
                      as int,
            expiresAt: null == expiresAt
                ? _value.expiresAt
                : expiresAt // ignore: cast_nullable_to_non_nullable
                      as String,
            daysRemaining: null == daysRemaining
                ? _value.daysRemaining
                : daysRemaining // ignore: cast_nullable_to_non_nullable
                      as int,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }

  /// Create a copy of DownloadEntity
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
abstract class _$$DownloadEntityImplCopyWith<$Res>
    implements $DownloadEntityCopyWith<$Res> {
  factory _$$DownloadEntityImplCopyWith(
    _$DownloadEntityImpl value,
    $Res Function(_$DownloadEntityImpl) then,
  ) = __$$DownloadEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    int userId,
    int audioId,
    int? playlistId,
    AudioEntity? audio,
    String title,
    String artist,
    String thumbnail,
    String dominantColor,
    int duration,
    String durationFmt,
    int fileSize,
    String expiresAt,
    int daysRemaining,
    String createdAt,
  });

  @override
  $AudioEntityCopyWith<$Res>? get audio;
}

/// @nodoc
class __$$DownloadEntityImplCopyWithImpl<$Res>
    extends _$DownloadEntityCopyWithImpl<$Res, _$DownloadEntityImpl>
    implements _$$DownloadEntityImplCopyWith<$Res> {
  __$$DownloadEntityImplCopyWithImpl(
    _$DownloadEntityImpl _value,
    $Res Function(_$DownloadEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DownloadEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? audioId = null,
    Object? playlistId = freezed,
    Object? audio = freezed,
    Object? title = null,
    Object? artist = null,
    Object? thumbnail = null,
    Object? dominantColor = null,
    Object? duration = null,
    Object? durationFmt = null,
    Object? fileSize = null,
    Object? expiresAt = null,
    Object? daysRemaining = null,
    Object? createdAt = null,
  }) {
    return _then(
      _$DownloadEntityImpl(
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
        playlistId: freezed == playlistId
            ? _value.playlistId
            : playlistId // ignore: cast_nullable_to_non_nullable
                  as int?,
        audio: freezed == audio
            ? _value.audio
            : audio // ignore: cast_nullable_to_non_nullable
                  as AudioEntity?,
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
        dominantColor: null == dominantColor
            ? _value.dominantColor
            : dominantColor // ignore: cast_nullable_to_non_nullable
                  as String,
        duration: null == duration
            ? _value.duration
            : duration // ignore: cast_nullable_to_non_nullable
                  as int,
        durationFmt: null == durationFmt
            ? _value.durationFmt
            : durationFmt // ignore: cast_nullable_to_non_nullable
                  as String,
        fileSize: null == fileSize
            ? _value.fileSize
            : fileSize // ignore: cast_nullable_to_non_nullable
                  as int,
        expiresAt: null == expiresAt
            ? _value.expiresAt
            : expiresAt // ignore: cast_nullable_to_non_nullable
                  as String,
        daysRemaining: null == daysRemaining
            ? _value.daysRemaining
            : daysRemaining // ignore: cast_nullable_to_non_nullable
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
class _$DownloadEntityImpl implements _DownloadEntity {
  const _$DownloadEntityImpl({
    required this.id,
    this.userId = 0,
    this.audioId = 0,
    this.playlistId,
    this.audio,
    this.title = '',
    this.artist = '',
    this.thumbnail = '',
    this.dominantColor = '',
    this.duration = 0,
    this.durationFmt = '',
    this.fileSize = 0,
    this.expiresAt = '',
    this.daysRemaining = 0,
    this.createdAt = '',
  });

  factory _$DownloadEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$DownloadEntityImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final int userId;
  @override
  @JsonKey()
  final int audioId;
  @override
  final int? playlistId;
  @override
  final AudioEntity? audio;
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
  final String dominantColor;
  @override
  @JsonKey()
  final int duration;
  @override
  @JsonKey()
  final String durationFmt;
  @override
  @JsonKey()
  final int fileSize;
  @override
  @JsonKey()
  final String expiresAt;
  @override
  @JsonKey()
  final int daysRemaining;
  @override
  @JsonKey()
  final String createdAt;

  @override
  String toString() {
    return 'DownloadEntity(id: $id, userId: $userId, audioId: $audioId, playlistId: $playlistId, audio: $audio, title: $title, artist: $artist, thumbnail: $thumbnail, dominantColor: $dominantColor, duration: $duration, durationFmt: $durationFmt, fileSize: $fileSize, expiresAt: $expiresAt, daysRemaining: $daysRemaining, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.audioId, audioId) || other.audioId == audioId) &&
            (identical(other.playlistId, playlistId) ||
                other.playlistId == playlistId) &&
            (identical(other.audio, audio) || other.audio == audio) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.artist, artist) || other.artist == artist) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.dominantColor, dominantColor) ||
                other.dominantColor == dominantColor) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.durationFmt, durationFmt) ||
                other.durationFmt == durationFmt) &&
            (identical(other.fileSize, fileSize) ||
                other.fileSize == fileSize) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.daysRemaining, daysRemaining) ||
                other.daysRemaining == daysRemaining) &&
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
    playlistId,
    audio,
    title,
    artist,
    thumbnail,
    dominantColor,
    duration,
    durationFmt,
    fileSize,
    expiresAt,
    daysRemaining,
    createdAt,
  );

  /// Create a copy of DownloadEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadEntityImplCopyWith<_$DownloadEntityImpl> get copyWith =>
      __$$DownloadEntityImplCopyWithImpl<_$DownloadEntityImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DownloadEntityImplToJson(this);
  }
}

abstract class _DownloadEntity implements DownloadEntity {
  const factory _DownloadEntity({
    required final int id,
    final int userId,
    final int audioId,
    final int? playlistId,
    final AudioEntity? audio,
    final String title,
    final String artist,
    final String thumbnail,
    final String dominantColor,
    final int duration,
    final String durationFmt,
    final int fileSize,
    final String expiresAt,
    final int daysRemaining,
    final String createdAt,
  }) = _$DownloadEntityImpl;

  factory _DownloadEntity.fromJson(Map<String, dynamic> json) =
      _$DownloadEntityImpl.fromJson;

  @override
  int get id;
  @override
  int get userId;
  @override
  int get audioId;
  @override
  int? get playlistId;
  @override
  AudioEntity? get audio;
  @override
  String get title;
  @override
  String get artist;
  @override
  String get thumbnail;
  @override
  String get dominantColor;
  @override
  int get duration;
  @override
  String get durationFmt;
  @override
  int get fileSize;
  @override
  String get expiresAt;
  @override
  int get daysRemaining;
  @override
  String get createdAt;

  /// Create a copy of DownloadEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DownloadEntityImplCopyWith<_$DownloadEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DownloadStorageEntity _$DownloadStorageEntityFromJson(
  Map<String, dynamic> json,
) {
  return _DownloadStorageEntity.fromJson(json);
}

/// @nodoc
mixin _$DownloadStorageEntity {
  int get totalBytes => throw _privateConstructorUsedError;
  int get totalMb => throw _privateConstructorUsedError;

  /// Serializes this DownloadStorageEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DownloadStorageEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DownloadStorageEntityCopyWith<DownloadStorageEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadStorageEntityCopyWith<$Res> {
  factory $DownloadStorageEntityCopyWith(
    DownloadStorageEntity value,
    $Res Function(DownloadStorageEntity) then,
  ) = _$DownloadStorageEntityCopyWithImpl<$Res, DownloadStorageEntity>;
  @useResult
  $Res call({int totalBytes, int totalMb});
}

/// @nodoc
class _$DownloadStorageEntityCopyWithImpl<
  $Res,
  $Val extends DownloadStorageEntity
>
    implements $DownloadStorageEntityCopyWith<$Res> {
  _$DownloadStorageEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DownloadStorageEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? totalBytes = null, Object? totalMb = null}) {
    return _then(
      _value.copyWith(
            totalBytes: null == totalBytes
                ? _value.totalBytes
                : totalBytes // ignore: cast_nullable_to_non_nullable
                      as int,
            totalMb: null == totalMb
                ? _value.totalMb
                : totalMb // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DownloadStorageEntityImplCopyWith<$Res>
    implements $DownloadStorageEntityCopyWith<$Res> {
  factory _$$DownloadStorageEntityImplCopyWith(
    _$DownloadStorageEntityImpl value,
    $Res Function(_$DownloadStorageEntityImpl) then,
  ) = __$$DownloadStorageEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int totalBytes, int totalMb});
}

/// @nodoc
class __$$DownloadStorageEntityImplCopyWithImpl<$Res>
    extends
        _$DownloadStorageEntityCopyWithImpl<$Res, _$DownloadStorageEntityImpl>
    implements _$$DownloadStorageEntityImplCopyWith<$Res> {
  __$$DownloadStorageEntityImplCopyWithImpl(
    _$DownloadStorageEntityImpl _value,
    $Res Function(_$DownloadStorageEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DownloadStorageEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? totalBytes = null, Object? totalMb = null}) {
    return _then(
      _$DownloadStorageEntityImpl(
        totalBytes: null == totalBytes
            ? _value.totalBytes
            : totalBytes // ignore: cast_nullable_to_non_nullable
                  as int,
        totalMb: null == totalMb
            ? _value.totalMb
            : totalMb // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DownloadStorageEntityImpl implements _DownloadStorageEntity {
  const _$DownloadStorageEntityImpl({this.totalBytes = 0, this.totalMb = 0});

  factory _$DownloadStorageEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$DownloadStorageEntityImplFromJson(json);

  @override
  @JsonKey()
  final int totalBytes;
  @override
  @JsonKey()
  final int totalMb;

  @override
  String toString() {
    return 'DownloadStorageEntity(totalBytes: $totalBytes, totalMb: $totalMb)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadStorageEntityImpl &&
            (identical(other.totalBytes, totalBytes) ||
                other.totalBytes == totalBytes) &&
            (identical(other.totalMb, totalMb) || other.totalMb == totalMb));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, totalBytes, totalMb);

  /// Create a copy of DownloadStorageEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadStorageEntityImplCopyWith<_$DownloadStorageEntityImpl>
  get copyWith =>
      __$$DownloadStorageEntityImplCopyWithImpl<_$DownloadStorageEntityImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DownloadStorageEntityImplToJson(this);
  }
}

abstract class _DownloadStorageEntity implements DownloadStorageEntity {
  const factory _DownloadStorageEntity({
    final int totalBytes,
    final int totalMb,
  }) = _$DownloadStorageEntityImpl;

  factory _DownloadStorageEntity.fromJson(Map<String, dynamic> json) =
      _$DownloadStorageEntityImpl.fromJson;

  @override
  int get totalBytes;
  @override
  int get totalMb;

  /// Create a copy of DownloadStorageEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DownloadStorageEntityImplCopyWith<_$DownloadStorageEntityImpl>
  get copyWith => throw _privateConstructorUsedError;
}
