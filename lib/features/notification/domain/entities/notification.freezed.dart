// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

NotificationEntity _$NotificationEntityFromJson(Map<String, dynamic> json) {
  return _NotificationEntity.fromJson(json);
}

/// @nodoc
mixin _$NotificationEntity {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  bool get isRead => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;

  /// Serializes this NotificationEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationEntityCopyWith<NotificationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationEntityCopyWith<$Res> {
  factory $NotificationEntityCopyWith(
    NotificationEntity value,
    $Res Function(NotificationEntity) then,
  ) = _$NotificationEntityCopyWithImpl<$Res, NotificationEntity>;
  @useResult
  $Res call({
    int id,
    String title,
    String body,
    String type,
    bool isRead,
    String createdAt,
  });
}

/// @nodoc
class _$NotificationEntityCopyWithImpl<$Res, $Val extends NotificationEntity>
    implements $NotificationEntityCopyWith<$Res> {
  _$NotificationEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? body = null,
    Object? type = null,
    Object? isRead = null,
    Object? createdAt = null,
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
            body: null == body
                ? _value.body
                : body // ignore: cast_nullable_to_non_nullable
                      as String,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String,
            isRead: null == isRead
                ? _value.isRead
                : isRead // ignore: cast_nullable_to_non_nullable
                      as bool,
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
abstract class _$$NotificationEntityImplCopyWith<$Res>
    implements $NotificationEntityCopyWith<$Res> {
  factory _$$NotificationEntityImplCopyWith(
    _$NotificationEntityImpl value,
    $Res Function(_$NotificationEntityImpl) then,
  ) = __$$NotificationEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String title,
    String body,
    String type,
    bool isRead,
    String createdAt,
  });
}

/// @nodoc
class __$$NotificationEntityImplCopyWithImpl<$Res>
    extends _$NotificationEntityCopyWithImpl<$Res, _$NotificationEntityImpl>
    implements _$$NotificationEntityImplCopyWith<$Res> {
  __$$NotificationEntityImplCopyWithImpl(
    _$NotificationEntityImpl _value,
    $Res Function(_$NotificationEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? body = null,
    Object? type = null,
    Object? isRead = null,
    Object? createdAt = null,
  }) {
    return _then(
      _$NotificationEntityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        body: null == body
            ? _value.body
            : body // ignore: cast_nullable_to_non_nullable
                  as String,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String,
        isRead: null == isRead
            ? _value.isRead
            : isRead // ignore: cast_nullable_to_non_nullable
                  as bool,
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
class _$NotificationEntityImpl implements _NotificationEntity {
  const _$NotificationEntityImpl({
    required this.id,
    this.title = '',
    this.body = '',
    this.type = '',
    this.isRead = false,
    this.createdAt = '',
  });

  factory _$NotificationEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationEntityImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String body;
  @override
  @JsonKey()
  final String type;
  @override
  @JsonKey()
  final bool isRead;
  @override
  @JsonKey()
  final String createdAt;

  @override
  String toString() {
    return 'NotificationEntity(id: $id, title: $title, body: $body, type: $type, isRead: $isRead, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.isRead, isRead) || other.isRead == isRead) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, body, type, isRead, createdAt);

  /// Create a copy of NotificationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationEntityImplCopyWith<_$NotificationEntityImpl> get copyWith =>
      __$$NotificationEntityImplCopyWithImpl<_$NotificationEntityImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationEntityImplToJson(this);
  }
}

abstract class _NotificationEntity implements NotificationEntity {
  const factory _NotificationEntity({
    required final int id,
    final String title,
    final String body,
    final String type,
    final bool isRead,
    final String createdAt,
  }) = _$NotificationEntityImpl;

  factory _NotificationEntity.fromJson(Map<String, dynamic> json) =
      _$NotificationEntityImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get body;
  @override
  String get type;
  @override
  bool get isRead;
  @override
  String get createdAt;

  /// Create a copy of NotificationEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationEntityImplCopyWith<_$NotificationEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NotificationSettingsEntity _$NotificationSettingsEntityFromJson(
  Map<String, dynamic> json,
) {
  return _NotificationSettingsEntity.fromJson(json);
}

/// @nodoc
mixin _$NotificationSettingsEntity {
  bool get dailyReminder => throw _privateConstructorUsedError;
  bool get newContent => throw _privateConstructorUsedError;
  bool get eventReminder => throw _privateConstructorUsedError;

  /// Serializes this NotificationSettingsEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationSettingsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationSettingsEntityCopyWith<NotificationSettingsEntity>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationSettingsEntityCopyWith<$Res> {
  factory $NotificationSettingsEntityCopyWith(
    NotificationSettingsEntity value,
    $Res Function(NotificationSettingsEntity) then,
  ) =
      _$NotificationSettingsEntityCopyWithImpl<
        $Res,
        NotificationSettingsEntity
      >;
  @useResult
  $Res call({bool dailyReminder, bool newContent, bool eventReminder});
}

/// @nodoc
class _$NotificationSettingsEntityCopyWithImpl<
  $Res,
  $Val extends NotificationSettingsEntity
>
    implements $NotificationSettingsEntityCopyWith<$Res> {
  _$NotificationSettingsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationSettingsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dailyReminder = null,
    Object? newContent = null,
    Object? eventReminder = null,
  }) {
    return _then(
      _value.copyWith(
            dailyReminder: null == dailyReminder
                ? _value.dailyReminder
                : dailyReminder // ignore: cast_nullable_to_non_nullable
                      as bool,
            newContent: null == newContent
                ? _value.newContent
                : newContent // ignore: cast_nullable_to_non_nullable
                      as bool,
            eventReminder: null == eventReminder
                ? _value.eventReminder
                : eventReminder // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$NotificationSettingsEntityImplCopyWith<$Res>
    implements $NotificationSettingsEntityCopyWith<$Res> {
  factory _$$NotificationSettingsEntityImplCopyWith(
    _$NotificationSettingsEntityImpl value,
    $Res Function(_$NotificationSettingsEntityImpl) then,
  ) = __$$NotificationSettingsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool dailyReminder, bool newContent, bool eventReminder});
}

/// @nodoc
class __$$NotificationSettingsEntityImplCopyWithImpl<$Res>
    extends
        _$NotificationSettingsEntityCopyWithImpl<
          $Res,
          _$NotificationSettingsEntityImpl
        >
    implements _$$NotificationSettingsEntityImplCopyWith<$Res> {
  __$$NotificationSettingsEntityImplCopyWithImpl(
    _$NotificationSettingsEntityImpl _value,
    $Res Function(_$NotificationSettingsEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationSettingsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dailyReminder = null,
    Object? newContent = null,
    Object? eventReminder = null,
  }) {
    return _then(
      _$NotificationSettingsEntityImpl(
        dailyReminder: null == dailyReminder
            ? _value.dailyReminder
            : dailyReminder // ignore: cast_nullable_to_non_nullable
                  as bool,
        newContent: null == newContent
            ? _value.newContent
            : newContent // ignore: cast_nullable_to_non_nullable
                  as bool,
        eventReminder: null == eventReminder
            ? _value.eventReminder
            : eventReminder // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationSettingsEntityImpl implements _NotificationSettingsEntity {
  const _$NotificationSettingsEntityImpl({
    this.dailyReminder = true,
    this.newContent = true,
    this.eventReminder = false,
  });

  factory _$NotificationSettingsEntityImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$NotificationSettingsEntityImplFromJson(json);

  @override
  @JsonKey()
  final bool dailyReminder;
  @override
  @JsonKey()
  final bool newContent;
  @override
  @JsonKey()
  final bool eventReminder;

  @override
  String toString() {
    return 'NotificationSettingsEntity(dailyReminder: $dailyReminder, newContent: $newContent, eventReminder: $eventReminder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationSettingsEntityImpl &&
            (identical(other.dailyReminder, dailyReminder) ||
                other.dailyReminder == dailyReminder) &&
            (identical(other.newContent, newContent) ||
                other.newContent == newContent) &&
            (identical(other.eventReminder, eventReminder) ||
                other.eventReminder == eventReminder));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, dailyReminder, newContent, eventReminder);

  /// Create a copy of NotificationSettingsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationSettingsEntityImplCopyWith<_$NotificationSettingsEntityImpl>
  get copyWith =>
      __$$NotificationSettingsEntityImplCopyWithImpl<
        _$NotificationSettingsEntityImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationSettingsEntityImplToJson(this);
  }
}

abstract class _NotificationSettingsEntity
    implements NotificationSettingsEntity {
  const factory _NotificationSettingsEntity({
    final bool dailyReminder,
    final bool newContent,
    final bool eventReminder,
  }) = _$NotificationSettingsEntityImpl;

  factory _NotificationSettingsEntity.fromJson(Map<String, dynamic> json) =
      _$NotificationSettingsEntityImpl.fromJson;

  @override
  bool get dailyReminder;
  @override
  bool get newContent;
  @override
  bool get eventReminder;

  /// Create a copy of NotificationSettingsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationSettingsEntityImplCopyWith<_$NotificationSettingsEntityImpl>
  get copyWith => throw _privateConstructorUsedError;
}
