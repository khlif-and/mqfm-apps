// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collab.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CollaboratorEntity _$CollaboratorEntityFromJson(Map<String, dynamic> json) {
  return _CollaboratorEntity.fromJson(json);
}

/// @nodoc
mixin _$CollaboratorEntity {
  int get userId => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  String get joinedAt => throw _privateConstructorUsedError;

  /// Serializes this CollaboratorEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CollaboratorEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CollaboratorEntityCopyWith<CollaboratorEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollaboratorEntityCopyWith<$Res> {
  factory $CollaboratorEntityCopyWith(
    CollaboratorEntity value,
    $Res Function(CollaboratorEntity) then,
  ) = _$CollaboratorEntityCopyWithImpl<$Res, CollaboratorEntity>;
  @useResult
  $Res call({int userId, String username, String role, String joinedAt});
}

/// @nodoc
class _$CollaboratorEntityCopyWithImpl<$Res, $Val extends CollaboratorEntity>
    implements $CollaboratorEntityCopyWith<$Res> {
  _$CollaboratorEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CollaboratorEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? username = null,
    Object? role = null,
    Object? joinedAt = null,
  }) {
    return _then(
      _value.copyWith(
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as int,
            username: null == username
                ? _value.username
                : username // ignore: cast_nullable_to_non_nullable
                      as String,
            role: null == role
                ? _value.role
                : role // ignore: cast_nullable_to_non_nullable
                      as String,
            joinedAt: null == joinedAt
                ? _value.joinedAt
                : joinedAt // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CollaboratorEntityImplCopyWith<$Res>
    implements $CollaboratorEntityCopyWith<$Res> {
  factory _$$CollaboratorEntityImplCopyWith(
    _$CollaboratorEntityImpl value,
    $Res Function(_$CollaboratorEntityImpl) then,
  ) = __$$CollaboratorEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int userId, String username, String role, String joinedAt});
}

/// @nodoc
class __$$CollaboratorEntityImplCopyWithImpl<$Res>
    extends _$CollaboratorEntityCopyWithImpl<$Res, _$CollaboratorEntityImpl>
    implements _$$CollaboratorEntityImplCopyWith<$Res> {
  __$$CollaboratorEntityImplCopyWithImpl(
    _$CollaboratorEntityImpl _value,
    $Res Function(_$CollaboratorEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CollaboratorEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? username = null,
    Object? role = null,
    Object? joinedAt = null,
  }) {
    return _then(
      _$CollaboratorEntityImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as int,
        username: null == username
            ? _value.username
            : username // ignore: cast_nullable_to_non_nullable
                  as String,
        role: null == role
            ? _value.role
            : role // ignore: cast_nullable_to_non_nullable
                  as String,
        joinedAt: null == joinedAt
            ? _value.joinedAt
            : joinedAt // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CollaboratorEntityImpl implements _CollaboratorEntity {
  const _$CollaboratorEntityImpl({
    this.userId = 0,
    this.username = '',
    this.role = '',
    this.joinedAt = '',
  });

  factory _$CollaboratorEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CollaboratorEntityImplFromJson(json);

  @override
  @JsonKey()
  final int userId;
  @override
  @JsonKey()
  final String username;
  @override
  @JsonKey()
  final String role;
  @override
  @JsonKey()
  final String joinedAt;

  @override
  String toString() {
    return 'CollaboratorEntity(userId: $userId, username: $username, role: $role, joinedAt: $joinedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollaboratorEntityImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.joinedAt, joinedAt) ||
                other.joinedAt == joinedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, username, role, joinedAt);

  /// Create a copy of CollaboratorEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CollaboratorEntityImplCopyWith<_$CollaboratorEntityImpl> get copyWith =>
      __$$CollaboratorEntityImplCopyWithImpl<_$CollaboratorEntityImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CollaboratorEntityImplToJson(this);
  }
}

abstract class _CollaboratorEntity implements CollaboratorEntity {
  const factory _CollaboratorEntity({
    final int userId,
    final String username,
    final String role,
    final String joinedAt,
  }) = _$CollaboratorEntityImpl;

  factory _CollaboratorEntity.fromJson(Map<String, dynamic> json) =
      _$CollaboratorEntityImpl.fromJson;

  @override
  int get userId;
  @override
  String get username;
  @override
  String get role;
  @override
  String get joinedAt;

  /// Create a copy of CollaboratorEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CollaboratorEntityImplCopyWith<_$CollaboratorEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
