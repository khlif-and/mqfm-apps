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
    required TResult Function(int audioId) toggle,
    required TResult Function(int audioId, int index) unlike,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchLiked,
    TResult? Function(int audioId)? toggle,
    TResult? Function(int audioId, int index)? unlike,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchLiked,
    TResult Function(int audioId)? toggle,
    TResult Function(int audioId, int index)? unlike,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LikeFetchLiked value) fetchLiked,
    required TResult Function(LikeToggle value) toggle,
    required TResult Function(LikeUnlike value) unlike,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LikeFetchLiked value)? fetchLiked,
    TResult? Function(LikeToggle value)? toggle,
    TResult? Function(LikeUnlike value)? unlike,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LikeFetchLiked value)? fetchLiked,
    TResult Function(LikeToggle value)? toggle,
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
    required TResult Function(int audioId) toggle,
    required TResult Function(int audioId, int index) unlike,
  }) {
    return fetchLiked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchLiked,
    TResult? Function(int audioId)? toggle,
    TResult? Function(int audioId, int index)? unlike,
  }) {
    return fetchLiked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchLiked,
    TResult Function(int audioId)? toggle,
    TResult Function(int audioId, int index)? unlike,
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
    required TResult Function(LikeToggle value) toggle,
    required TResult Function(LikeUnlike value) unlike,
  }) {
    return fetchLiked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LikeFetchLiked value)? fetchLiked,
    TResult? Function(LikeToggle value)? toggle,
    TResult? Function(LikeUnlike value)? unlike,
  }) {
    return fetchLiked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LikeFetchLiked value)? fetchLiked,
    TResult Function(LikeToggle value)? toggle,
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
abstract class _$$LikeToggleImplCopyWith<$Res> {
  factory _$$LikeToggleImplCopyWith(
    _$LikeToggleImpl value,
    $Res Function(_$LikeToggleImpl) then,
  ) = __$$LikeToggleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int audioId});
}

/// @nodoc
class __$$LikeToggleImplCopyWithImpl<$Res>
    extends _$LikeEventCopyWithImpl<$Res, _$LikeToggleImpl>
    implements _$$LikeToggleImplCopyWith<$Res> {
  __$$LikeToggleImplCopyWithImpl(
    _$LikeToggleImpl _value,
    $Res Function(_$LikeToggleImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LikeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? audioId = null}) {
    return _then(
      _$LikeToggleImpl(
        audioId: null == audioId
            ? _value.audioId
            : audioId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$LikeToggleImpl implements LikeToggle {
  const _$LikeToggleImpl({required this.audioId});

  @override
  final int audioId;

  @override
  String toString() {
    return 'LikeEvent.toggle(audioId: $audioId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikeToggleImpl &&
            (identical(other.audioId, audioId) || other.audioId == audioId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, audioId);

  /// Create a copy of LikeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LikeToggleImplCopyWith<_$LikeToggleImpl> get copyWith =>
      __$$LikeToggleImplCopyWithImpl<_$LikeToggleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchLiked,
    required TResult Function(int audioId) toggle,
    required TResult Function(int audioId, int index) unlike,
  }) {
    return toggle(audioId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchLiked,
    TResult? Function(int audioId)? toggle,
    TResult? Function(int audioId, int index)? unlike,
  }) {
    return toggle?.call(audioId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchLiked,
    TResult Function(int audioId)? toggle,
    TResult Function(int audioId, int index)? unlike,
    required TResult orElse(),
  }) {
    if (toggle != null) {
      return toggle(audioId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LikeFetchLiked value) fetchLiked,
    required TResult Function(LikeToggle value) toggle,
    required TResult Function(LikeUnlike value) unlike,
  }) {
    return toggle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LikeFetchLiked value)? fetchLiked,
    TResult? Function(LikeToggle value)? toggle,
    TResult? Function(LikeUnlike value)? unlike,
  }) {
    return toggle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LikeFetchLiked value)? fetchLiked,
    TResult Function(LikeToggle value)? toggle,
    TResult Function(LikeUnlike value)? unlike,
    required TResult orElse(),
  }) {
    if (toggle != null) {
      return toggle(this);
    }
    return orElse();
  }
}

abstract class LikeToggle implements LikeEvent {
  const factory LikeToggle({required final int audioId}) = _$LikeToggleImpl;

  int get audioId;

  /// Create a copy of LikeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LikeToggleImplCopyWith<_$LikeToggleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LikeUnlikeImplCopyWith<$Res> {
  factory _$$LikeUnlikeImplCopyWith(
    _$LikeUnlikeImpl value,
    $Res Function(_$LikeUnlikeImpl) then,
  ) = __$$LikeUnlikeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int audioId, int index});
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
  $Res call({Object? audioId = null, Object? index = null}) {
    return _then(
      _$LikeUnlikeImpl(
        audioId: null == audioId
            ? _value.audioId
            : audioId // ignore: cast_nullable_to_non_nullable
                  as int,
        index: null == index
            ? _value.index
            : index // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$LikeUnlikeImpl implements LikeUnlike {
  const _$LikeUnlikeImpl({required this.audioId, required this.index});

  @override
  final int audioId;
  @override
  final int index;

  @override
  String toString() {
    return 'LikeEvent.unlike(audioId: $audioId, index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikeUnlikeImpl &&
            (identical(other.audioId, audioId) || other.audioId == audioId) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, audioId, index);

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
    required TResult Function(int audioId) toggle,
    required TResult Function(int audioId, int index) unlike,
  }) {
    return unlike(audioId, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchLiked,
    TResult? Function(int audioId)? toggle,
    TResult? Function(int audioId, int index)? unlike,
  }) {
    return unlike?.call(audioId, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchLiked,
    TResult Function(int audioId)? toggle,
    TResult Function(int audioId, int index)? unlike,
    required TResult orElse(),
  }) {
    if (unlike != null) {
      return unlike(audioId, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LikeFetchLiked value) fetchLiked,
    required TResult Function(LikeToggle value) toggle,
    required TResult Function(LikeUnlike value) unlike,
  }) {
    return unlike(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LikeFetchLiked value)? fetchLiked,
    TResult? Function(LikeToggle value)? toggle,
    TResult? Function(LikeUnlike value)? unlike,
  }) {
    return unlike?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LikeFetchLiked value)? fetchLiked,
    TResult Function(LikeToggle value)? toggle,
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
    required final int audioId,
    required final int index,
  }) = _$LikeUnlikeImpl;

  int get audioId;
  int get index;

  /// Create a copy of LikeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LikeUnlikeImplCopyWith<_$LikeUnlikeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
