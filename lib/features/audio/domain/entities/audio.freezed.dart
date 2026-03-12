// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audio.dart';

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
  String get artist => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get filePath => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  String get durationFmt => throw _privateConstructorUsedError;
  int get fileSize => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  int get categoryId => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;
  String get dominantColor => throw _privateConstructorUsedError;
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
    String artist,
    String description,
    String filePath,
    int duration,
    String durationFmt,
    int fileSize,
    String status,
    int categoryId,
    String thumbnail,
    String dominantColor,
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
    Object? artist = null,
    Object? description = null,
    Object? filePath = null,
    Object? duration = null,
    Object? durationFmt = null,
    Object? fileSize = null,
    Object? status = null,
    Object? categoryId = null,
    Object? thumbnail = null,
    Object? dominantColor = null,
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
            artist: null == artist
                ? _value.artist
                : artist // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            filePath: null == filePath
                ? _value.filePath
                : filePath // ignore: cast_nullable_to_non_nullable
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
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            categoryId: null == categoryId
                ? _value.categoryId
                : categoryId // ignore: cast_nullable_to_non_nullable
                      as int,
            thumbnail: null == thumbnail
                ? _value.thumbnail
                : thumbnail // ignore: cast_nullable_to_non_nullable
                      as String,
            dominantColor: null == dominantColor
                ? _value.dominantColor
                : dominantColor // ignore: cast_nullable_to_non_nullable
                      as String,
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
    String artist,
    String description,
    String filePath,
    int duration,
    String durationFmt,
    int fileSize,
    String status,
    int categoryId,
    String thumbnail,
    String dominantColor,
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
    Object? artist = null,
    Object? description = null,
    Object? filePath = null,
    Object? duration = null,
    Object? durationFmt = null,
    Object? fileSize = null,
    Object? status = null,
    Object? categoryId = null,
    Object? thumbnail = null,
    Object? dominantColor = null,
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
        artist: null == artist
            ? _value.artist
            : artist // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        filePath: null == filePath
            ? _value.filePath
            : filePath // ignore: cast_nullable_to_non_nullable
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
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        categoryId: null == categoryId
            ? _value.categoryId
            : categoryId // ignore: cast_nullable_to_non_nullable
                  as int,
        thumbnail: null == thumbnail
            ? _value.thumbnail
            : thumbnail // ignore: cast_nullable_to_non_nullable
                  as String,
        dominantColor: null == dominantColor
            ? _value.dominantColor
            : dominantColor // ignore: cast_nullable_to_non_nullable
                  as String,
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
    this.artist = '',
    this.description = '',
    this.filePath = '',
    this.duration = 0,
    this.durationFmt = '',
    this.fileSize = 0,
    this.status = 'active',
    this.categoryId = 0,
    this.thumbnail = '',
    this.dominantColor = '',
    this.createdAt = '',
    this.updatedAt = '',
  });

  factory _$AudioEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AudioEntityImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  @JsonKey()
  final String artist;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String filePath;
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
  final String status;
  @override
  @JsonKey()
  final int categoryId;
  @override
  @JsonKey()
  final String thumbnail;
  @override
  @JsonKey()
  final String dominantColor;
  @override
  @JsonKey()
  final String createdAt;
  @override
  @JsonKey()
  final String updatedAt;

  @override
  String toString() {
    return 'AudioEntity(id: $id, title: $title, artist: $artist, description: $description, filePath: $filePath, duration: $duration, durationFmt: $durationFmt, fileSize: $fileSize, status: $status, categoryId: $categoryId, thumbnail: $thumbnail, dominantColor: $dominantColor, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudioEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.artist, artist) || other.artist == artist) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.durationFmt, durationFmt) ||
                other.durationFmt == durationFmt) &&
            (identical(other.fileSize, fileSize) ||
                other.fileSize == fileSize) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.dominantColor, dominantColor) ||
                other.dominantColor == dominantColor) &&
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
    artist,
    description,
    filePath,
    duration,
    durationFmt,
    fileSize,
    status,
    categoryId,
    thumbnail,
    dominantColor,
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
    final String artist,
    final String description,
    final String filePath,
    final int duration,
    final String durationFmt,
    final int fileSize,
    final String status,
    final int categoryId,
    final String thumbnail,
    final String dominantColor,
    final String createdAt,
    final String updatedAt,
  }) = _$AudioEntityImpl;

  factory _AudioEntity.fromJson(Map<String, dynamic> json) =
      _$AudioEntityImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get artist;
  @override
  String get description;
  @override
  String get filePath;
  @override
  int get duration;
  @override
  String get durationFmt;
  @override
  int get fileSize;
  @override
  String get status;
  @override
  int get categoryId;
  @override
  String get thumbnail;
  @override
  String get dominantColor;
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
