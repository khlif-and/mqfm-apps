// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'artikel_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ArtikelEntity _$ArtikelEntityFromJson(Map<String, dynamic> json) {
  return _ArtikelEntity.fromJson(json);
}

/// @nodoc
mixin _$ArtikelEntity {
  String get title => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  /// Serializes this ArtikelEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ArtikelEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArtikelEntityCopyWith<ArtikelEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtikelEntityCopyWith<$Res> {
  factory $ArtikelEntityCopyWith(
    ArtikelEntity value,
    $Res Function(ArtikelEntity) then,
  ) = _$ArtikelEntityCopyWithImpl<$Res, ArtikelEntity>;
  @useResult
  $Res call({String title, String link, String image});
}

/// @nodoc
class _$ArtikelEntityCopyWithImpl<$Res, $Val extends ArtikelEntity>
    implements $ArtikelEntityCopyWith<$Res> {
  _$ArtikelEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArtikelEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? title = null, Object? link = null, Object? image = null}) {
    return _then(
      _value.copyWith(
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            link: null == link
                ? _value.link
                : link // ignore: cast_nullable_to_non_nullable
                      as String,
            image: null == image
                ? _value.image
                : image // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ArtikelEntityImplCopyWith<$Res>
    implements $ArtikelEntityCopyWith<$Res> {
  factory _$$ArtikelEntityImplCopyWith(
    _$ArtikelEntityImpl value,
    $Res Function(_$ArtikelEntityImpl) then,
  ) = __$$ArtikelEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String link, String image});
}

/// @nodoc
class __$$ArtikelEntityImplCopyWithImpl<$Res>
    extends _$ArtikelEntityCopyWithImpl<$Res, _$ArtikelEntityImpl>
    implements _$$ArtikelEntityImplCopyWith<$Res> {
  __$$ArtikelEntityImplCopyWithImpl(
    _$ArtikelEntityImpl _value,
    $Res Function(_$ArtikelEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ArtikelEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? title = null, Object? link = null, Object? image = null}) {
    return _then(
      _$ArtikelEntityImpl(
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        link: null == link
            ? _value.link
            : link // ignore: cast_nullable_to_non_nullable
                  as String,
        image: null == image
            ? _value.image
            : image // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ArtikelEntityImpl implements _ArtikelEntity {
  const _$ArtikelEntityImpl({
    required this.title,
    required this.link,
    required this.image,
  });

  factory _$ArtikelEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArtikelEntityImplFromJson(json);

  @override
  final String title;
  @override
  final String link;
  @override
  final String image;

  @override
  String toString() {
    return 'ArtikelEntity(title: $title, link: $link, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtikelEntityImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, link, image);

  /// Create a copy of ArtikelEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtikelEntityImplCopyWith<_$ArtikelEntityImpl> get copyWith =>
      __$$ArtikelEntityImplCopyWithImpl<_$ArtikelEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArtikelEntityImplToJson(this);
  }
}

abstract class _ArtikelEntity implements ArtikelEntity {
  const factory _ArtikelEntity({
    required final String title,
    required final String link,
    required final String image,
  }) = _$ArtikelEntityImpl;

  factory _ArtikelEntity.fromJson(Map<String, dynamic> json) =
      _$ArtikelEntityImpl.fromJson;

  @override
  String get title;
  @override
  String get link;
  @override
  String get image;

  /// Create a copy of ArtikelEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArtikelEntityImplCopyWith<_$ArtikelEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ArtikelChannelEntity _$ArtikelChannelEntityFromJson(Map<String, dynamic> json) {
  return _ArtikelChannelEntity.fromJson(json);
}

/// @nodoc
mixin _$ArtikelChannelEntity {
  String get channelName => throw _privateConstructorUsedError;
  String get tagline => throw _privateConstructorUsedError;
  String get website => throw _privateConstructorUsedError;
  List<dynamic> get programs => throw _privateConstructorUsedError;
  List<ArtikelEntity> get contents => throw _privateConstructorUsedError;

  /// Serializes this ArtikelChannelEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ArtikelChannelEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArtikelChannelEntityCopyWith<ArtikelChannelEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtikelChannelEntityCopyWith<$Res> {
  factory $ArtikelChannelEntityCopyWith(
    ArtikelChannelEntity value,
    $Res Function(ArtikelChannelEntity) then,
  ) = _$ArtikelChannelEntityCopyWithImpl<$Res, ArtikelChannelEntity>;
  @useResult
  $Res call({
    String channelName,
    String tagline,
    String website,
    List<dynamic> programs,
    List<ArtikelEntity> contents,
  });
}

/// @nodoc
class _$ArtikelChannelEntityCopyWithImpl<
  $Res,
  $Val extends ArtikelChannelEntity
>
    implements $ArtikelChannelEntityCopyWith<$Res> {
  _$ArtikelChannelEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArtikelChannelEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channelName = null,
    Object? tagline = null,
    Object? website = null,
    Object? programs = null,
    Object? contents = null,
  }) {
    return _then(
      _value.copyWith(
            channelName: null == channelName
                ? _value.channelName
                : channelName // ignore: cast_nullable_to_non_nullable
                      as String,
            tagline: null == tagline
                ? _value.tagline
                : tagline // ignore: cast_nullable_to_non_nullable
                      as String,
            website: null == website
                ? _value.website
                : website // ignore: cast_nullable_to_non_nullable
                      as String,
            programs: null == programs
                ? _value.programs
                : programs // ignore: cast_nullable_to_non_nullable
                      as List<dynamic>,
            contents: null == contents
                ? _value.contents
                : contents // ignore: cast_nullable_to_non_nullable
                      as List<ArtikelEntity>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ArtikelChannelEntityImplCopyWith<$Res>
    implements $ArtikelChannelEntityCopyWith<$Res> {
  factory _$$ArtikelChannelEntityImplCopyWith(
    _$ArtikelChannelEntityImpl value,
    $Res Function(_$ArtikelChannelEntityImpl) then,
  ) = __$$ArtikelChannelEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String channelName,
    String tagline,
    String website,
    List<dynamic> programs,
    List<ArtikelEntity> contents,
  });
}

/// @nodoc
class __$$ArtikelChannelEntityImplCopyWithImpl<$Res>
    extends _$ArtikelChannelEntityCopyWithImpl<$Res, _$ArtikelChannelEntityImpl>
    implements _$$ArtikelChannelEntityImplCopyWith<$Res> {
  __$$ArtikelChannelEntityImplCopyWithImpl(
    _$ArtikelChannelEntityImpl _value,
    $Res Function(_$ArtikelChannelEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ArtikelChannelEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channelName = null,
    Object? tagline = null,
    Object? website = null,
    Object? programs = null,
    Object? contents = null,
  }) {
    return _then(
      _$ArtikelChannelEntityImpl(
        channelName: null == channelName
            ? _value.channelName
            : channelName // ignore: cast_nullable_to_non_nullable
                  as String,
        tagline: null == tagline
            ? _value.tagline
            : tagline // ignore: cast_nullable_to_non_nullable
                  as String,
        website: null == website
            ? _value.website
            : website // ignore: cast_nullable_to_non_nullable
                  as String,
        programs: null == programs
            ? _value._programs
            : programs // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>,
        contents: null == contents
            ? _value._contents
            : contents // ignore: cast_nullable_to_non_nullable
                  as List<ArtikelEntity>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ArtikelChannelEntityImpl implements _ArtikelChannelEntity {
  const _$ArtikelChannelEntityImpl({
    required this.channelName,
    required this.tagline,
    required this.website,
    required final List<dynamic> programs,
    required final List<ArtikelEntity> contents,
  }) : _programs = programs,
       _contents = contents;

  factory _$ArtikelChannelEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArtikelChannelEntityImplFromJson(json);

  @override
  final String channelName;
  @override
  final String tagline;
  @override
  final String website;
  final List<dynamic> _programs;
  @override
  List<dynamic> get programs {
    if (_programs is EqualUnmodifiableListView) return _programs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_programs);
  }

  final List<ArtikelEntity> _contents;
  @override
  List<ArtikelEntity> get contents {
    if (_contents is EqualUnmodifiableListView) return _contents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contents);
  }

  @override
  String toString() {
    return 'ArtikelChannelEntity(channelName: $channelName, tagline: $tagline, website: $website, programs: $programs, contents: $contents)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtikelChannelEntityImpl &&
            (identical(other.channelName, channelName) ||
                other.channelName == channelName) &&
            (identical(other.tagline, tagline) || other.tagline == tagline) &&
            (identical(other.website, website) || other.website == website) &&
            const DeepCollectionEquality().equals(other._programs, _programs) &&
            const DeepCollectionEquality().equals(other._contents, _contents));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    channelName,
    tagline,
    website,
    const DeepCollectionEquality().hash(_programs),
    const DeepCollectionEquality().hash(_contents),
  );

  /// Create a copy of ArtikelChannelEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtikelChannelEntityImplCopyWith<_$ArtikelChannelEntityImpl>
  get copyWith =>
      __$$ArtikelChannelEntityImplCopyWithImpl<_$ArtikelChannelEntityImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ArtikelChannelEntityImplToJson(this);
  }
}

abstract class _ArtikelChannelEntity implements ArtikelChannelEntity {
  const factory _ArtikelChannelEntity({
    required final String channelName,
    required final String tagline,
    required final String website,
    required final List<dynamic> programs,
    required final List<ArtikelEntity> contents,
  }) = _$ArtikelChannelEntityImpl;

  factory _ArtikelChannelEntity.fromJson(Map<String, dynamic> json) =
      _$ArtikelChannelEntityImpl.fromJson;

  @override
  String get channelName;
  @override
  String get tagline;
  @override
  String get website;
  @override
  List<dynamic> get programs;
  @override
  List<ArtikelEntity> get contents;

  /// Create a copy of ArtikelChannelEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArtikelChannelEntityImplCopyWith<_$ArtikelChannelEntityImpl>
  get copyWith => throw _privateConstructorUsedError;
}
