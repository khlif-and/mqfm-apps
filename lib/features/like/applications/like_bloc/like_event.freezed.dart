// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'like_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$LikeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchLiked,
    required TResult Function(int targetId, String targetType) like,
    required TResult Function(int targetId, String targetType) unlike,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchLiked,
    TResult? Function(int targetId, String targetType)? like,
    TResult? Function(int targetId, String targetType)? unlike,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchLiked,
    TResult Function(int targetId, String targetType)? like,
    TResult Function(int targetId, String targetType)? unlike,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LikeFetchLiked value) fetchLiked,
    required TResult Function(LikeLike value) like,
    required TResult Function(LikeUnlike value) unlike,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LikeFetchLiked value)? fetchLiked,
    TResult? Function(LikeLike value)? like,
    TResult? Function(LikeUnlike value)? unlike,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LikeFetchLiked value)? fetchLiked,
    TResult Function(LikeLike value)? like,
    TResult Function(LikeUnlike value)? unlike,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikeEventCopyWith<$Res> {
  factory $LikeEventCopyWith(LikeEvent value, $Res Function(LikeEvent) then) =
      _$LikeEventCopyWithImpl<$Res, LikeEvent>;
}

/// @nodoc
class _$LikeEventCopyWithImpl<$Res, $Val extends LikeEvent>
    implements $LikeEventCopyWith<$Res> {
  _$LikeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LikeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LikeFetchLikedImplCopyWith<$Res> {
  factory _$$LikeFetchLikedImplCopyWith(
    _$LikeFetchLikedImpl value,
    $Res Function(_$LikeFetchLikedImpl) then,
  ) = __$$LikeFetchLikedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LikeFetchLikedImplCopyWithImpl<$Res>
    extends _$LikeEventCopyWithImpl<$Res, _$LikeFetchLikedImpl>
    implements _$$LikeFetchLikedImplCopyWith<$Res> {
  __$$LikeFetchLikedImplCopyWithImpl(
    _$LikeFetchLikedImpl _value,
    $Res Function(_$LikeFetchLikedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LikeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LikeFetchLikedImpl implements LikeFetchLiked {
  const _$LikeFetchLikedImpl();

  @override
  String toString() {
    return 'LikeEvent.fetchLiked()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LikeFetchLikedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchLiked,
    required TResult Function(int targetId, String targetType) like,
    required TResult Function(int targetId, String targetType) unlike,
  }) {
    return fetchLiked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchLiked,
    TResult? Function(int targetId, String targetType)? like,
    TResult? Function(int targetId, String targetType)? unlike,
  }) {
    return fetchLiked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchLiked,
    TResult Function(int targetId, String targetType)? like,
    TResult Function(int targetId, String targetType)? unlike,
    required TResult orElse(),
  }) {
    if (fetchLiked != null) {
      return fetchLiked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LikeFetchLiked value) fetchLiked,
    required TResult Function(LikeLike value) like,
    required TResult Function(LikeUnlike value) unlike,
  }) {
    return fetchLiked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LikeFetchLiked value)? fetchLiked,
    TResult? Function(LikeLike value)? like,
    TResult? Function(LikeUnlike value)? unlike,
  }) {
    return fetchLiked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LikeFetchLiked value)? fetchLiked,
    TResult Function(LikeLike value)? like,
    TResult Function(LikeUnlike value)? unlike,
    required TResult orElse(),
  }) {
    if (fetchLiked != null) {
      return fetchLiked(this);
    }
    return orElse();
  }
}

abstract class LikeFetchLiked implements LikeEvent {
  const factory LikeFetchLiked() = _$LikeFetchLikedImpl;
}

/// @nodoc
abstract class _$$LikeLikeImplCopyWith<$Res> {
  factory _$$LikeLikeImplCopyWith(
    _$LikeLikeImpl value,
    $Res Function(_$LikeLikeImpl) then,
  ) = __$$LikeLikeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int targetId, String targetType});
}

/// @nodoc
class __$$LikeLikeImplCopyWithImpl<$Res>
    extends _$LikeEventCopyWithImpl<$Res, _$LikeLikeImpl>
    implements _$$LikeLikeImplCopyWith<$Res> {
  __$$LikeLikeImplCopyWithImpl(
    _$LikeLikeImpl _value,
    $Res Function(_$LikeLikeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LikeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? targetId = null, Object? targetType = null}) {
    return _then(
      _$LikeLikeImpl(
        targetId: null == targetId
            ? _value.targetId
            : targetId // ignore: cast_nullable_to_non_nullable
                  as int,
        targetType: null == targetType
            ? _value.targetType
            : targetType // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$LikeLikeImpl implements LikeLike {
  const _$LikeLikeImpl({required this.targetId, this.targetType = 'audio'});

  @override
  final int targetId;
  @override
  @JsonKey()
  final String targetType;

  @override
  String toString() {
    return 'LikeEvent.like(targetId: $targetId, targetType: $targetType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikeLikeImpl &&
            (identical(other.targetId, targetId) ||
                other.targetId == targetId) &&
            (identical(other.targetType, targetType) ||
                other.targetType == targetType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, targetId, targetType);

  /// Create a copy of LikeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LikeLikeImplCopyWith<_$LikeLikeImpl> get copyWith =>
      __$$LikeLikeImplCopyWithImpl<_$LikeLikeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchLiked,
    required TResult Function(int targetId, String targetType) like,
    required TResult Function(int targetId, String targetType) unlike,
  }) {
    return like(targetId, targetType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchLiked,
    TResult? Function(int targetId, String targetType)? like,
    TResult? Function(int targetId, String targetType)? unlike,
  }) {
    return like?.call(targetId, targetType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchLiked,
    TResult Function(int targetId, String targetType)? like,
    TResult Function(int targetId, String targetType)? unlike,
    required TResult orElse(),
  }) {
    if (like != null) {
      return like(targetId, targetType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LikeFetchLiked value) fetchLiked,
    required TResult Function(LikeLike value) like,
    required TResult Function(LikeUnlike value) unlike,
  }) {
    return like(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LikeFetchLiked value)? fetchLiked,
    TResult? Function(LikeLike value)? like,
    TResult? Function(LikeUnlike value)? unlike,
  }) {
    return like?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LikeFetchLiked value)? fetchLiked,
    TResult Function(LikeLike value)? like,
    TResult Function(LikeUnlike value)? unlike,
    required TResult orElse(),
  }) {
    if (like != null) {
      return like(this);
    }
    return orElse();
  }
}

abstract class LikeLike implements LikeEvent {
  const factory LikeLike({
    required final int targetId,
    final String targetType,
  }) = _$LikeLikeImpl;

  int get targetId;
  String get targetType;

  /// Create a copy of LikeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LikeLikeImplCopyWith<_$LikeLikeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LikeUnlikeImplCopyWith<$Res> {
  factory _$$LikeUnlikeImplCopyWith(
    _$LikeUnlikeImpl value,
    $Res Function(_$LikeUnlikeImpl) then,
  ) = __$$LikeUnlikeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int targetId, String targetType});
}

/// @nodoc
class __$$LikeUnlikeImplCopyWithImpl<$Res>
    extends _$LikeEventCopyWithImpl<$Res, _$LikeUnlikeImpl>
    implements _$$LikeUnlikeImplCopyWith<$Res> {
  __$$LikeUnlikeImplCopyWithImpl(
    _$LikeUnlikeImpl _value,
    $Res Function(_$LikeUnlikeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LikeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? targetId = null, Object? targetType = null}) {
    return _then(
      _$LikeUnlikeImpl(
        targetId: null == targetId
            ? _value.targetId
            : targetId // ignore: cast_nullable_to_non_nullable
                  as int,
        targetType: null == targetType
            ? _value.targetType
            : targetType // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$LikeUnlikeImpl implements LikeUnlike {
  const _$LikeUnlikeImpl({required this.targetId, this.targetType = 'audio'});

  @override
  final int targetId;
  @override
  @JsonKey()
  final String targetType;

  @override
  String toString() {
    return 'LikeEvent.unlike(targetId: $targetId, targetType: $targetType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikeUnlikeImpl &&
            (identical(other.targetId, targetId) ||
                other.targetId == targetId) &&
            (identical(other.targetType, targetType) ||
                other.targetType == targetType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, targetId, targetType);

  /// Create a copy of LikeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LikeUnlikeImplCopyWith<_$LikeUnlikeImpl> get copyWith =>
      __$$LikeUnlikeImplCopyWithImpl<_$LikeUnlikeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchLiked,
    required TResult Function(int targetId, String targetType) like,
    required TResult Function(int targetId, String targetType) unlike,
  }) {
    return unlike(targetId, targetType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchLiked,
    TResult? Function(int targetId, String targetType)? like,
    TResult? Function(int targetId, String targetType)? unlike,
  }) {
    return unlike?.call(targetId, targetType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchLiked,
    TResult Function(int targetId, String targetType)? like,
    TResult Function(int targetId, String targetType)? unlike,
    required TResult orElse(),
  }) {
    if (unlike != null) {
      return unlike(targetId, targetType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LikeFetchLiked value) fetchLiked,
    required TResult Function(LikeLike value) like,
    required TResult Function(LikeUnlike value) unlike,
  }) {
    return unlike(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LikeFetchLiked value)? fetchLiked,
    TResult? Function(LikeLike value)? like,
    TResult? Function(LikeUnlike value)? unlike,
  }) {
    return unlike?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LikeFetchLiked value)? fetchLiked,
    TResult Function(LikeLike value)? like,
    TResult Function(LikeUnlike value)? unlike,
    required TResult orElse(),
  }) {
    if (unlike != null) {
      return unlike(this);
    }
    return orElse();
  }
}

abstract class LikeUnlike implements LikeEvent {
  const factory LikeUnlike({
    required final int targetId,
    final String targetType,
  }) = _$LikeUnlikeImpl;

  int get targetId;
  String get targetType;

  /// Create a copy of LikeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LikeUnlikeImplCopyWith<_$LikeUnlikeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
