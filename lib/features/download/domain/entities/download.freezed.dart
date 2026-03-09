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
  int get audioId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get artist => throw _privateConstructorUsedError;
  String get filePath => throw _privateConstructorUsedError;
  int get fileSize => throw _privateConstructorUsedError;
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
    int audioId,
    String title,
    String artist,
    String filePath,
    int fileSize,
    String createdAt,
  });
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
    Object? audioId = null,
    Object? title = null,
    Object? artist = null,
    Object? filePath = null,
    Object? fileSize = null,
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
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            artist: null == artist
                ? _value.artist
                : artist // ignore: cast_nullable_to_non_nullable
                      as String,
            filePath: null == filePath
                ? _value.filePath
                : filePath // ignore: cast_nullable_to_non_nullable
                      as String,
            fileSize: null == fileSize
                ? _value.fileSize
                : fileSize // ignore: cast_nullable_to_non_nullable
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
    int audioId,
    String title,
    String artist,
    String filePath,
    int fileSize,
    String createdAt,
  });
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
    Object? audioId = null,
    Object? title = null,
    Object? artist = null,
    Object? filePath = null,
    Object? fileSize = null,
    Object? createdAt = null,
  }) {
    return _then(
      _$DownloadEntityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
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
        filePath: null == filePath
            ? _value.filePath
            : filePath // ignore: cast_nullable_to_non_nullable
                  as String,
        fileSize: null == fileSize
            ? _value.fileSize
            : fileSize // ignore: cast_nullable_to_non_nullable
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
    this.audioId = 0,
    this.title = '',
    this.artist = '',
    this.filePath = '',
    this.fileSize = 0,
    this.createdAt = '',
  });

  factory _$DownloadEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$DownloadEntityImplFromJson(json);

  @override
  final int id;
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
  final String filePath;
  @override
  @JsonKey()
  final int fileSize;
  @override
  @JsonKey()
  final String createdAt;

  @override
  String toString() {
    return 'DownloadEntity(id: $id, audioId: $audioId, title: $title, artist: $artist, filePath: $filePath, fileSize: $fileSize, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.audioId, audioId) || other.audioId == audioId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.artist, artist) || other.artist == artist) &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath) &&
            (identical(other.fileSize, fileSize) ||
                other.fileSize == fileSize) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    audioId,
    title,
    artist,
    filePath,
    fileSize,
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
    final int audioId,
    final String title,
    final String artist,
    final String filePath,
    final int fileSize,
    final String createdAt,
  }) = _$DownloadEntityImpl;

  factory _DownloadEntity.fromJson(Map<String, dynamic> json) =
      _$DownloadEntityImpl.fromJson;

  @override
  int get id;
  @override
  int get audioId;
  @override
  String get title;
  @override
  String get artist;
  @override
  String get filePath;
  @override
  int get fileSize;
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
  int get totalFiles => throw _privateConstructorUsedError;
  int get totalSizeBytes => throw _privateConstructorUsedError;
  String get formattedSize => throw _privateConstructorUsedError;

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
  $Res call({int totalFiles, int totalSizeBytes, String formattedSize});
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
  $Res call({
    Object? totalFiles = null,
    Object? totalSizeBytes = null,
    Object? formattedSize = null,
  }) {
    return _then(
      _value.copyWith(
            totalFiles: null == totalFiles
                ? _value.totalFiles
                : totalFiles // ignore: cast_nullable_to_non_nullable
                      as int,
            totalSizeBytes: null == totalSizeBytes
                ? _value.totalSizeBytes
                : totalSizeBytes // ignore: cast_nullable_to_non_nullable
                      as int,
            formattedSize: null == formattedSize
                ? _value.formattedSize
                : formattedSize // ignore: cast_nullable_to_non_nullable
                      as String,
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
  $Res call({int totalFiles, int totalSizeBytes, String formattedSize});
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
  $Res call({
    Object? totalFiles = null,
    Object? totalSizeBytes = null,
    Object? formattedSize = null,
  }) {
    return _then(
      _$DownloadStorageEntityImpl(
        totalFiles: null == totalFiles
            ? _value.totalFiles
            : totalFiles // ignore: cast_nullable_to_non_nullable
                  as int,
        totalSizeBytes: null == totalSizeBytes
            ? _value.totalSizeBytes
            : totalSizeBytes // ignore: cast_nullable_to_non_nullable
                  as int,
        formattedSize: null == formattedSize
            ? _value.formattedSize
            : formattedSize // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DownloadStorageEntityImpl implements _DownloadStorageEntity {
  const _$DownloadStorageEntityImpl({
    this.totalFiles = 0,
    this.totalSizeBytes = 0,
    this.formattedSize = '',
  });

  factory _$DownloadStorageEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$DownloadStorageEntityImplFromJson(json);

  @override
  @JsonKey()
  final int totalFiles;
  @override
  @JsonKey()
  final int totalSizeBytes;
  @override
  @JsonKey()
  final String formattedSize;

  @override
  String toString() {
    return 'DownloadStorageEntity(totalFiles: $totalFiles, totalSizeBytes: $totalSizeBytes, formattedSize: $formattedSize)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadStorageEntityImpl &&
            (identical(other.totalFiles, totalFiles) ||
                other.totalFiles == totalFiles) &&
            (identical(other.totalSizeBytes, totalSizeBytes) ||
                other.totalSizeBytes == totalSizeBytes) &&
            (identical(other.formattedSize, formattedSize) ||
                other.formattedSize == formattedSize));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, totalFiles, totalSizeBytes, formattedSize);

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
    final int totalFiles,
    final int totalSizeBytes,
    final String formattedSize,
  }) = _$DownloadStorageEntityImpl;

  factory _DownloadStorageEntity.fromJson(Map<String, dynamic> json) =
      _$DownloadStorageEntityImpl.fromJson;

  @override
  int get totalFiles;
  @override
  int get totalSizeBytes;
  @override
  String get formattedSize;

  /// Create a copy of DownloadStorageEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DownloadStorageEntityImplCopyWith<_$DownloadStorageEntityImpl>
  get copyWith => throw _privateConstructorUsedError;
}
