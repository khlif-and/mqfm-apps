// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function() logout,
    required TResult Function(
      int userId,
      String? username,
      String? email,
      File? profilePicture,
    )
    update,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function()? logout,
    TResult? Function(
      int userId,
      String? username,
      String? email,
      File? profilePicture,
    )?
    update,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? logout,
    TResult Function(
      int userId,
      String? username,
      String? email,
      File? profilePicture,
    )?
    update,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileFetch value) fetch,
    required TResult Function(ProfileLogout value) logout,
    required TResult Function(ProfileUpdate value) update,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileFetch value)? fetch,
    TResult? Function(ProfileLogout value)? logout,
    TResult? Function(ProfileUpdate value)? update,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileFetch value)? fetch,
    TResult Function(ProfileLogout value)? logout,
    TResult Function(ProfileUpdate value)? update,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
    ProfileEvent value,
    $Res Function(ProfileEvent) then,
  ) = _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ProfileFetchImplCopyWith<$Res> {
  factory _$$ProfileFetchImplCopyWith(
    _$ProfileFetchImpl value,
    $Res Function(_$ProfileFetchImpl) then,
  ) = __$$ProfileFetchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileFetchImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$ProfileFetchImpl>
    implements _$$ProfileFetchImplCopyWith<$Res> {
  __$$ProfileFetchImplCopyWithImpl(
    _$ProfileFetchImpl _value,
    $Res Function(_$ProfileFetchImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProfileFetchImpl implements ProfileFetch {
  const _$ProfileFetchImpl();

  @override
  String toString() {
    return 'ProfileEvent.fetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProfileFetchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function() logout,
    required TResult Function(
      int userId,
      String? username,
      String? email,
      File? profilePicture,
    )
    update,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function()? logout,
    TResult? Function(
      int userId,
      String? username,
      String? email,
      File? profilePicture,
    )?
    update,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? logout,
    TResult Function(
      int userId,
      String? username,
      String? email,
      File? profilePicture,
    )?
    update,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileFetch value) fetch,
    required TResult Function(ProfileLogout value) logout,
    required TResult Function(ProfileUpdate value) update,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileFetch value)? fetch,
    TResult? Function(ProfileLogout value)? logout,
    TResult? Function(ProfileUpdate value)? update,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileFetch value)? fetch,
    TResult Function(ProfileLogout value)? logout,
    TResult Function(ProfileUpdate value)? update,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class ProfileFetch implements ProfileEvent {
  const factory ProfileFetch() = _$ProfileFetchImpl;
}

/// @nodoc
abstract class _$$ProfileLogoutImplCopyWith<$Res> {
  factory _$$ProfileLogoutImplCopyWith(
    _$ProfileLogoutImpl value,
    $Res Function(_$ProfileLogoutImpl) then,
  ) = __$$ProfileLogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileLogoutImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$ProfileLogoutImpl>
    implements _$$ProfileLogoutImplCopyWith<$Res> {
  __$$ProfileLogoutImplCopyWithImpl(
    _$ProfileLogoutImpl _value,
    $Res Function(_$ProfileLogoutImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProfileLogoutImpl implements ProfileLogout {
  const _$ProfileLogoutImpl();

  @override
  String toString() {
    return 'ProfileEvent.logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProfileLogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function() logout,
    required TResult Function(
      int userId,
      String? username,
      String? email,
      File? profilePicture,
    )
    update,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function()? logout,
    TResult? Function(
      int userId,
      String? username,
      String? email,
      File? profilePicture,
    )?
    update,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? logout,
    TResult Function(
      int userId,
      String? username,
      String? email,
      File? profilePicture,
    )?
    update,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileFetch value) fetch,
    required TResult Function(ProfileLogout value) logout,
    required TResult Function(ProfileUpdate value) update,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileFetch value)? fetch,
    TResult? Function(ProfileLogout value)? logout,
    TResult? Function(ProfileUpdate value)? update,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileFetch value)? fetch,
    TResult Function(ProfileLogout value)? logout,
    TResult Function(ProfileUpdate value)? update,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class ProfileLogout implements ProfileEvent {
  const factory ProfileLogout() = _$ProfileLogoutImpl;
}

/// @nodoc
abstract class _$$ProfileUpdateImplCopyWith<$Res> {
  factory _$$ProfileUpdateImplCopyWith(
    _$ProfileUpdateImpl value,
    $Res Function(_$ProfileUpdateImpl) then,
  ) = __$$ProfileUpdateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    int userId,
    String? username,
    String? email,
    File? profilePicture,
  });
}

/// @nodoc
class __$$ProfileUpdateImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$ProfileUpdateImpl>
    implements _$$ProfileUpdateImplCopyWith<$Res> {
  __$$ProfileUpdateImplCopyWithImpl(
    _$ProfileUpdateImpl _value,
    $Res Function(_$ProfileUpdateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? username = freezed,
    Object? email = freezed,
    Object? profilePicture = freezed,
  }) {
    return _then(
      _$ProfileUpdateImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as int,
        username: freezed == username
            ? _value.username
            : username // ignore: cast_nullable_to_non_nullable
                  as String?,
        email: freezed == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String?,
        profilePicture: freezed == profilePicture
            ? _value.profilePicture
            : profilePicture // ignore: cast_nullable_to_non_nullable
                  as File?,
      ),
    );
  }
}

/// @nodoc

class _$ProfileUpdateImpl implements ProfileUpdate {
  const _$ProfileUpdateImpl({
    required this.userId,
    this.username,
    this.email,
    this.profilePicture,
  });

  @override
  final int userId;
  @override
  final String? username;
  @override
  final String? email;
  @override
  final File? profilePicture;

  @override
  String toString() {
    return 'ProfileEvent.update(userId: $userId, username: $username, email: $email, profilePicture: $profilePicture)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileUpdateImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.profilePicture, profilePicture) ||
                other.profilePicture == profilePicture));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, username, email, profilePicture);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileUpdateImplCopyWith<_$ProfileUpdateImpl> get copyWith =>
      __$$ProfileUpdateImplCopyWithImpl<_$ProfileUpdateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function() logout,
    required TResult Function(
      int userId,
      String? username,
      String? email,
      File? profilePicture,
    )
    update,
  }) {
    return update(userId, username, email, profilePicture);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function()? logout,
    TResult? Function(
      int userId,
      String? username,
      String? email,
      File? profilePicture,
    )?
    update,
  }) {
    return update?.call(userId, username, email, profilePicture);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? logout,
    TResult Function(
      int userId,
      String? username,
      String? email,
      File? profilePicture,
    )?
    update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(userId, username, email, profilePicture);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileFetch value) fetch,
    required TResult Function(ProfileLogout value) logout,
    required TResult Function(ProfileUpdate value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileFetch value)? fetch,
    TResult? Function(ProfileLogout value)? logout,
    TResult? Function(ProfileUpdate value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileFetch value)? fetch,
    TResult Function(ProfileLogout value)? logout,
    TResult Function(ProfileUpdate value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class ProfileUpdate implements ProfileEvent {
  const factory ProfileUpdate({
    required final int userId,
    final String? username,
    final String? email,
    final File? profilePicture,
  }) = _$ProfileUpdateImpl;

  int get userId;
  String? get username;
  String? get email;
  File? get profilePicture;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileUpdateImplCopyWith<_$ProfileUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
