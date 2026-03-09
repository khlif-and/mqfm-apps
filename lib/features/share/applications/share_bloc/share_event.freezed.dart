// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'share_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ShareEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int audioId) getAudioShare,
    required TResult Function(String token) getSharedClip,
    required TResult Function(String token) getSharedPlaylist,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int audioId)? getAudioShare,
    TResult? Function(String token)? getSharedClip,
    TResult? Function(String token)? getSharedPlaylist,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int audioId)? getAudioShare,
    TResult Function(String token)? getSharedClip,
    TResult Function(String token)? getSharedPlaylist,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShareGetAudioShare value) getAudioShare,
    required TResult Function(ShareGetSharedClip value) getSharedClip,
    required TResult Function(ShareGetSharedPlaylist value) getSharedPlaylist,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShareGetAudioShare value)? getAudioShare,
    TResult? Function(ShareGetSharedClip value)? getSharedClip,
    TResult? Function(ShareGetSharedPlaylist value)? getSharedPlaylist,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShareGetAudioShare value)? getAudioShare,
    TResult Function(ShareGetSharedClip value)? getSharedClip,
    TResult Function(ShareGetSharedPlaylist value)? getSharedPlaylist,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShareEventCopyWith<$Res> {
  factory $ShareEventCopyWith(
    ShareEvent value,
    $Res Function(ShareEvent) then,
  ) = _$ShareEventCopyWithImpl<$Res, ShareEvent>;
}

/// @nodoc
class _$ShareEventCopyWithImpl<$Res, $Val extends ShareEvent>
    implements $ShareEventCopyWith<$Res> {
  _$ShareEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShareEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ShareGetAudioShareImplCopyWith<$Res> {
  factory _$$ShareGetAudioShareImplCopyWith(
    _$ShareGetAudioShareImpl value,
    $Res Function(_$ShareGetAudioShareImpl) then,
  ) = __$$ShareGetAudioShareImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int audioId});
}

/// @nodoc
class __$$ShareGetAudioShareImplCopyWithImpl<$Res>
    extends _$ShareEventCopyWithImpl<$Res, _$ShareGetAudioShareImpl>
    implements _$$ShareGetAudioShareImplCopyWith<$Res> {
  __$$ShareGetAudioShareImplCopyWithImpl(
    _$ShareGetAudioShareImpl _value,
    $Res Function(_$ShareGetAudioShareImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ShareEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? audioId = null}) {
    return _then(
      _$ShareGetAudioShareImpl(
        audioId: null == audioId
            ? _value.audioId
            : audioId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$ShareGetAudioShareImpl implements ShareGetAudioShare {
  const _$ShareGetAudioShareImpl({required this.audioId});

  @override
  final int audioId;

  @override
  String toString() {
    return 'ShareEvent.getAudioShare(audioId: $audioId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShareGetAudioShareImpl &&
            (identical(other.audioId, audioId) || other.audioId == audioId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, audioId);

  /// Create a copy of ShareEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShareGetAudioShareImplCopyWith<_$ShareGetAudioShareImpl> get copyWith =>
      __$$ShareGetAudioShareImplCopyWithImpl<_$ShareGetAudioShareImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int audioId) getAudioShare,
    required TResult Function(String token) getSharedClip,
    required TResult Function(String token) getSharedPlaylist,
  }) {
    return getAudioShare(audioId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int audioId)? getAudioShare,
    TResult? Function(String token)? getSharedClip,
    TResult? Function(String token)? getSharedPlaylist,
  }) {
    return getAudioShare?.call(audioId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int audioId)? getAudioShare,
    TResult Function(String token)? getSharedClip,
    TResult Function(String token)? getSharedPlaylist,
    required TResult orElse(),
  }) {
    if (getAudioShare != null) {
      return getAudioShare(audioId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShareGetAudioShare value) getAudioShare,
    required TResult Function(ShareGetSharedClip value) getSharedClip,
    required TResult Function(ShareGetSharedPlaylist value) getSharedPlaylist,
  }) {
    return getAudioShare(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShareGetAudioShare value)? getAudioShare,
    TResult? Function(ShareGetSharedClip value)? getSharedClip,
    TResult? Function(ShareGetSharedPlaylist value)? getSharedPlaylist,
  }) {
    return getAudioShare?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShareGetAudioShare value)? getAudioShare,
    TResult Function(ShareGetSharedClip value)? getSharedClip,
    TResult Function(ShareGetSharedPlaylist value)? getSharedPlaylist,
    required TResult orElse(),
  }) {
    if (getAudioShare != null) {
      return getAudioShare(this);
    }
    return orElse();
  }
}

abstract class ShareGetAudioShare implements ShareEvent {
  const factory ShareGetAudioShare({required final int audioId}) =
      _$ShareGetAudioShareImpl;

  int get audioId;

  /// Create a copy of ShareEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShareGetAudioShareImplCopyWith<_$ShareGetAudioShareImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShareGetSharedClipImplCopyWith<$Res> {
  factory _$$ShareGetSharedClipImplCopyWith(
    _$ShareGetSharedClipImpl value,
    $Res Function(_$ShareGetSharedClipImpl) then,
  ) = __$$ShareGetSharedClipImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String token});
}

/// @nodoc
class __$$ShareGetSharedClipImplCopyWithImpl<$Res>
    extends _$ShareEventCopyWithImpl<$Res, _$ShareGetSharedClipImpl>
    implements _$$ShareGetSharedClipImplCopyWith<$Res> {
  __$$ShareGetSharedClipImplCopyWithImpl(
    _$ShareGetSharedClipImpl _value,
    $Res Function(_$ShareGetSharedClipImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ShareEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? token = null}) {
    return _then(
      _$ShareGetSharedClipImpl(
        token: null == token
            ? _value.token
            : token // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ShareGetSharedClipImpl implements ShareGetSharedClip {
  const _$ShareGetSharedClipImpl({required this.token});

  @override
  final String token;

  @override
  String toString() {
    return 'ShareEvent.getSharedClip(token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShareGetSharedClipImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token);

  /// Create a copy of ShareEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShareGetSharedClipImplCopyWith<_$ShareGetSharedClipImpl> get copyWith =>
      __$$ShareGetSharedClipImplCopyWithImpl<_$ShareGetSharedClipImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int audioId) getAudioShare,
    required TResult Function(String token) getSharedClip,
    required TResult Function(String token) getSharedPlaylist,
  }) {
    return getSharedClip(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int audioId)? getAudioShare,
    TResult? Function(String token)? getSharedClip,
    TResult? Function(String token)? getSharedPlaylist,
  }) {
    return getSharedClip?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int audioId)? getAudioShare,
    TResult Function(String token)? getSharedClip,
    TResult Function(String token)? getSharedPlaylist,
    required TResult orElse(),
  }) {
    if (getSharedClip != null) {
      return getSharedClip(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShareGetAudioShare value) getAudioShare,
    required TResult Function(ShareGetSharedClip value) getSharedClip,
    required TResult Function(ShareGetSharedPlaylist value) getSharedPlaylist,
  }) {
    return getSharedClip(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShareGetAudioShare value)? getAudioShare,
    TResult? Function(ShareGetSharedClip value)? getSharedClip,
    TResult? Function(ShareGetSharedPlaylist value)? getSharedPlaylist,
  }) {
    return getSharedClip?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShareGetAudioShare value)? getAudioShare,
    TResult Function(ShareGetSharedClip value)? getSharedClip,
    TResult Function(ShareGetSharedPlaylist value)? getSharedPlaylist,
    required TResult orElse(),
  }) {
    if (getSharedClip != null) {
      return getSharedClip(this);
    }
    return orElse();
  }
}

abstract class ShareGetSharedClip implements ShareEvent {
  const factory ShareGetSharedClip({required final String token}) =
      _$ShareGetSharedClipImpl;

  String get token;

  /// Create a copy of ShareEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShareGetSharedClipImplCopyWith<_$ShareGetSharedClipImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShareGetSharedPlaylistImplCopyWith<$Res> {
  factory _$$ShareGetSharedPlaylistImplCopyWith(
    _$ShareGetSharedPlaylistImpl value,
    $Res Function(_$ShareGetSharedPlaylistImpl) then,
  ) = __$$ShareGetSharedPlaylistImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String token});
}

/// @nodoc
class __$$ShareGetSharedPlaylistImplCopyWithImpl<$Res>
    extends _$ShareEventCopyWithImpl<$Res, _$ShareGetSharedPlaylistImpl>
    implements _$$ShareGetSharedPlaylistImplCopyWith<$Res> {
  __$$ShareGetSharedPlaylistImplCopyWithImpl(
    _$ShareGetSharedPlaylistImpl _value,
    $Res Function(_$ShareGetSharedPlaylistImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ShareEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? token = null}) {
    return _then(
      _$ShareGetSharedPlaylistImpl(
        token: null == token
            ? _value.token
            : token // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ShareGetSharedPlaylistImpl implements ShareGetSharedPlaylist {
  const _$ShareGetSharedPlaylistImpl({required this.token});

  @override
  final String token;

  @override
  String toString() {
    return 'ShareEvent.getSharedPlaylist(token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShareGetSharedPlaylistImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token);

  /// Create a copy of ShareEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShareGetSharedPlaylistImplCopyWith<_$ShareGetSharedPlaylistImpl>
  get copyWith =>
      __$$ShareGetSharedPlaylistImplCopyWithImpl<_$ShareGetSharedPlaylistImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int audioId) getAudioShare,
    required TResult Function(String token) getSharedClip,
    required TResult Function(String token) getSharedPlaylist,
  }) {
    return getSharedPlaylist(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int audioId)? getAudioShare,
    TResult? Function(String token)? getSharedClip,
    TResult? Function(String token)? getSharedPlaylist,
  }) {
    return getSharedPlaylist?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int audioId)? getAudioShare,
    TResult Function(String token)? getSharedClip,
    TResult Function(String token)? getSharedPlaylist,
    required TResult orElse(),
  }) {
    if (getSharedPlaylist != null) {
      return getSharedPlaylist(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShareGetAudioShare value) getAudioShare,
    required TResult Function(ShareGetSharedClip value) getSharedClip,
    required TResult Function(ShareGetSharedPlaylist value) getSharedPlaylist,
  }) {
    return getSharedPlaylist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShareGetAudioShare value)? getAudioShare,
    TResult? Function(ShareGetSharedClip value)? getSharedClip,
    TResult? Function(ShareGetSharedPlaylist value)? getSharedPlaylist,
  }) {
    return getSharedPlaylist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShareGetAudioShare value)? getAudioShare,
    TResult Function(ShareGetSharedClip value)? getSharedClip,
    TResult Function(ShareGetSharedPlaylist value)? getSharedPlaylist,
    required TResult orElse(),
  }) {
    if (getSharedPlaylist != null) {
      return getSharedPlaylist(this);
    }
    return orElse();
  }
}

abstract class ShareGetSharedPlaylist implements ShareEvent {
  const factory ShareGetSharedPlaylist({required final String token}) =
      _$ShareGetSharedPlaylistImpl;

  String get token;

  /// Create a copy of ShareEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShareGetSharedPlaylistImplCopyWith<_$ShareGetSharedPlaylistImpl>
  get copyWith => throw _privateConstructorUsedError;
}
