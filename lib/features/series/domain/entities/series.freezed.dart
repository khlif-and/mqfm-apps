// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'series.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SeriesEntity _$SeriesEntityFromJson(Map<String, dynamic> json) {
  return _SeriesEntity.fromJson(json);
}

/// @nodoc
mixin _$SeriesEntity {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get artist => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  List<AudioEntity> get items => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this SeriesEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SeriesEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SeriesEntityCopyWith<SeriesEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeriesEntityCopyWith<$Res> {
  factory $SeriesEntityCopyWith(
    SeriesEntity value,
    $Res Function(SeriesEntity) then,
  ) = _$SeriesEntityCopyWithImpl<$Res, SeriesEntity>;
  @useResult
  $Res call({
    int id,
    String title,
    String description,
    String artist,
    String imageUrl,
    List<AudioEntity> items,
    String createdAt,
    String updatedAt,
  });
}

/// @nodoc
class _$SeriesEntityCopyWithImpl<$Res, $Val extends SeriesEntity>
    implements $SeriesEntityCopyWith<$Res> {
  _$SeriesEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SeriesEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? artist = null,
    Object? imageUrl = null,
    Object? items = null,
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
            artist: null == artist
                ? _value.artist
                : artist // ignore: cast_nullable_to_non_nullable
                      as String,
            imageUrl: null == imageUrl
                ? _value.imageUrl
                : imageUrl // ignore: cast_nullable_to_non_nullable
                      as String,
            items: null == items
                ? _value.items
                : items // ignore: cast_nullable_to_non_nullable
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
abstract class _$$SeriesEntityImplCopyWith<$Res>
    implements $SeriesEntityCopyWith<$Res> {
  factory _$$SeriesEntityImplCopyWith(
    _$SeriesEntityImpl value,
    $Res Function(_$SeriesEntityImpl) then,
  ) = __$$SeriesEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String title,
    String description,
    String artist,
    String imageUrl,
    List<AudioEntity> items,
    String createdAt,
    String updatedAt,
  });
}

/// @nodoc
class __$$SeriesEntityImplCopyWithImpl<$Res>
    extends _$SeriesEntityCopyWithImpl<$Res, _$SeriesEntityImpl>
    implements _$$SeriesEntityImplCopyWith<$Res> {
  __$$SeriesEntityImplCopyWithImpl(
    _$SeriesEntityImpl _value,
    $Res Function(_$SeriesEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SeriesEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? artist = null,
    Object? imageUrl = null,
    Object? items = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _$SeriesEntityImpl(
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
        artist: null == artist
            ? _value.artist
            : artist // ignore: cast_nullable_to_non_nullable
                  as String,
        imageUrl: null == imageUrl
            ? _value.imageUrl
            : imageUrl // ignore: cast_nullable_to_non_nullable
                  as String,
        items: null == items
            ? _value._items
            : items // ignore: cast_nullable_to_non_nullable
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
class _$SeriesEntityImpl implements _SeriesEntity {
  const _$SeriesEntityImpl({
    required this.id,
    this.title = '',
    this.description = '',
    this.artist = '',
    this.imageUrl = '',
    final List<AudioEntity> items = const [],
    this.createdAt = '',
    this.updatedAt = '',
  }) : _items = items;

  factory _$SeriesEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$SeriesEntityImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String artist;
  @override
  @JsonKey()
  final String imageUrl;
  final List<AudioEntity> _items;
  @override
  @JsonKey()
  List<AudioEntity> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey()
  final String createdAt;
  @override
  @JsonKey()
  final String updatedAt;

  @override
  String toString() {
    return 'SeriesEntity(id: $id, title: $title, description: $description, artist: $artist, imageUrl: $imageUrl, items: $items, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeriesEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.artist, artist) || other.artist == artist) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
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
    artist,
    imageUrl,
    const DeepCollectionEquality().hash(_items),
    createdAt,
    updatedAt,
  );

  /// Create a copy of SeriesEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SeriesEntityImplCopyWith<_$SeriesEntityImpl> get copyWith =>
      __$$SeriesEntityImplCopyWithImpl<_$SeriesEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SeriesEntityImplToJson(this);
  }
}

abstract class _SeriesEntity implements SeriesEntity {
  const factory _SeriesEntity({
    required final int id,
    final String title,
    final String description,
    final String artist,
    final String imageUrl,
    final List<AudioEntity> items,
    final String createdAt,
    final String updatedAt,
  }) = _$SeriesEntityImpl;

  factory _SeriesEntity.fromJson(Map<String, dynamic> json) =
      _$SeriesEntityImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get artist;
  @override
  String get imageUrl;
  @override
  List<AudioEntity> get items;
  @override
  String get createdAt;
  @override
  String get updatedAt;

  /// Create a copy of SeriesEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SeriesEntityImplCopyWith<_$SeriesEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
