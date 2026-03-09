// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'share_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ShareState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ShareEntity share) shareLoaded,
    required TResult Function(ClipEntity clip) clipLoaded,
    required TResult Function(List<AudioEntity> audios) playlistLoaded,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ShareEntity share)? shareLoaded,
    TResult? Function(ClipEntity clip)? clipLoaded,
    TResult? Function(List<AudioEntity> audios)? playlistLoaded,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ShareEntity share)? shareLoaded,
    TResult Function(ClipEntity clip)? clipLoaded,
    TResult Function(List<AudioEntity> audios)? playlistLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShareInitial value) initial,
    required TResult Function(ShareLoading value) loading,
    required TResult Function(ShareShareLoaded value) shareLoaded,
    required TResult Function(ShareClipLoaded value) clipLoaded,
    required TResult Function(SharePlaylistLoaded value) playlistLoaded,
    required TResult Function(ShareError value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShareInitial value)? initial,
    TResult? Function(ShareLoading value)? loading,
    TResult? Function(ShareShareLoaded value)? shareLoaded,
    TResult? Function(ShareClipLoaded value)? clipLoaded,
    TResult? Function(SharePlaylistLoaded value)? playlistLoaded,
    TResult? Function(ShareError value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShareInitial value)? initial,
    TResult Function(ShareLoading value)? loading,
    TResult Function(ShareShareLoaded value)? shareLoaded,
    TResult Function(ShareClipLoaded value)? clipLoaded,
    TResult Function(SharePlaylistLoaded value)? playlistLoaded,
    TResult Function(ShareError value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShareStateCopyWith<$Res> {
  factory $ShareStateCopyWith(
    ShareState value,
    $Res Function(ShareState) then,
  ) = _$ShareStateCopyWithImpl<$Res, ShareState>;
}

/// @nodoc
class _$ShareStateCopyWithImpl<$Res, $Val extends ShareState>
    implements $ShareStateCopyWith<$Res> {
  _$ShareStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShareState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ShareInitialImplCopyWith<$Res> {
  factory _$$ShareInitialImplCopyWith(
    _$ShareInitialImpl value,
    $Res Function(_$ShareInitialImpl) then,
  ) = __$$ShareInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShareInitialImplCopyWithImpl<$Res>
    extends _$ShareStateCopyWithImpl<$Res, _$ShareInitialImpl>
    implements _$$ShareInitialImplCopyWith<$Res> {
  __$$ShareInitialImplCopyWithImpl(
    _$ShareInitialImpl _value,
    $Res Function(_$ShareInitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ShareState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ShareInitialImpl implements ShareInitial {
  const _$ShareInitialImpl();

  @override
  String toString() {
    return 'ShareState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShareInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ShareEntity share) shareLoaded,
    required TResult Function(ClipEntity clip) clipLoaded,
    required TResult Function(List<AudioEntity> audios) playlistLoaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ShareEntity share)? shareLoaded,
    TResult? Function(ClipEntity clip)? clipLoaded,
    TResult? Function(List<AudioEntity> audios)? playlistLoaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ShareEntity share)? shareLoaded,
    TResult Function(ClipEntity clip)? clipLoaded,
    TResult Function(List<AudioEntity> audios)? playlistLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShareInitial value) initial,
    required TResult Function(ShareLoading value) loading,
    required TResult Function(ShareShareLoaded value) shareLoaded,
    required TResult Function(ShareClipLoaded value) clipLoaded,
    required TResult Function(SharePlaylistLoaded value) playlistLoaded,
    required TResult Function(ShareError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShareInitial value)? initial,
    TResult? Function(ShareLoading value)? loading,
    TResult? Function(ShareShareLoaded value)? shareLoaded,
    TResult? Function(ShareClipLoaded value)? clipLoaded,
    TResult? Function(SharePlaylistLoaded value)? playlistLoaded,
    TResult? Function(ShareError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShareInitial value)? initial,
    TResult Function(ShareLoading value)? loading,
    TResult Function(ShareShareLoaded value)? shareLoaded,
    TResult Function(ShareClipLoaded value)? clipLoaded,
    TResult Function(SharePlaylistLoaded value)? playlistLoaded,
    TResult Function(ShareError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ShareInitial implements ShareState {
  const factory ShareInitial() = _$ShareInitialImpl;
}

/// @nodoc
abstract class _$$ShareLoadingImplCopyWith<$Res> {
  factory _$$ShareLoadingImplCopyWith(
    _$ShareLoadingImpl value,
    $Res Function(_$ShareLoadingImpl) then,
  ) = __$$ShareLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShareLoadingImplCopyWithImpl<$Res>
    extends _$ShareStateCopyWithImpl<$Res, _$ShareLoadingImpl>
    implements _$$ShareLoadingImplCopyWith<$Res> {
  __$$ShareLoadingImplCopyWithImpl(
    _$ShareLoadingImpl _value,
    $Res Function(_$ShareLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ShareState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ShareLoadingImpl implements ShareLoading {
  const _$ShareLoadingImpl();

  @override
  String toString() {
    return 'ShareState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShareLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ShareEntity share) shareLoaded,
    required TResult Function(ClipEntity clip) clipLoaded,
    required TResult Function(List<AudioEntity> audios) playlistLoaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ShareEntity share)? shareLoaded,
    TResult? Function(ClipEntity clip)? clipLoaded,
    TResult? Function(List<AudioEntity> audios)? playlistLoaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ShareEntity share)? shareLoaded,
    TResult Function(ClipEntity clip)? clipLoaded,
    TResult Function(List<AudioEntity> audios)? playlistLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShareInitial value) initial,
    required TResult Function(ShareLoading value) loading,
    required TResult Function(ShareShareLoaded value) shareLoaded,
    required TResult Function(ShareClipLoaded value) clipLoaded,
    required TResult Function(SharePlaylistLoaded value) playlistLoaded,
    required TResult Function(ShareError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShareInitial value)? initial,
    TResult? Function(ShareLoading value)? loading,
    TResult? Function(ShareShareLoaded value)? shareLoaded,
    TResult? Function(ShareClipLoaded value)? clipLoaded,
    TResult? Function(SharePlaylistLoaded value)? playlistLoaded,
    TResult? Function(ShareError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShareInitial value)? initial,
    TResult Function(ShareLoading value)? loading,
    TResult Function(ShareShareLoaded value)? shareLoaded,
    TResult Function(ShareClipLoaded value)? clipLoaded,
    TResult Function(SharePlaylistLoaded value)? playlistLoaded,
    TResult Function(ShareError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ShareLoading implements ShareState {
  const factory ShareLoading() = _$ShareLoadingImpl;
}

/// @nodoc
abstract class _$$ShareShareLoadedImplCopyWith<$Res> {
  factory _$$ShareShareLoadedImplCopyWith(
    _$ShareShareLoadedImpl value,
    $Res Function(_$ShareShareLoadedImpl) then,
  ) = __$$ShareShareLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ShareEntity share});

  $ShareEntityCopyWith<$Res> get share;
}

/// @nodoc
class __$$ShareShareLoadedImplCopyWithImpl<$Res>
    extends _$ShareStateCopyWithImpl<$Res, _$ShareShareLoadedImpl>
    implements _$$ShareShareLoadedImplCopyWith<$Res> {
  __$$ShareShareLoadedImplCopyWithImpl(
    _$ShareShareLoadedImpl _value,
    $Res Function(_$ShareShareLoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ShareState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? share = null}) {
    return _then(
      _$ShareShareLoadedImpl(
        share: null == share
            ? _value.share
            : share // ignore: cast_nullable_to_non_nullable
                  as ShareEntity,
      ),
    );
  }

  /// Create a copy of ShareState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShareEntityCopyWith<$Res> get share {
    return $ShareEntityCopyWith<$Res>(_value.share, (value) {
      return _then(_value.copyWith(share: value));
    });
  }
}

/// @nodoc

class _$ShareShareLoadedImpl implements ShareShareLoaded {
  const _$ShareShareLoadedImpl({required this.share});

  @override
  final ShareEntity share;

  @override
  String toString() {
    return 'ShareState.shareLoaded(share: $share)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShareShareLoadedImpl &&
            (identical(other.share, share) || other.share == share));
  }

  @override
  int get hashCode => Object.hash(runtimeType, share);

  /// Create a copy of ShareState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShareShareLoadedImplCopyWith<_$ShareShareLoadedImpl> get copyWith =>
      __$$ShareShareLoadedImplCopyWithImpl<_$ShareShareLoadedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ShareEntity share) shareLoaded,
    required TResult Function(ClipEntity clip) clipLoaded,
    required TResult Function(List<AudioEntity> audios) playlistLoaded,
    required TResult Function(String message) error,
  }) {
    return shareLoaded(share);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ShareEntity share)? shareLoaded,
    TResult? Function(ClipEntity clip)? clipLoaded,
    TResult? Function(List<AudioEntity> audios)? playlistLoaded,
    TResult? Function(String message)? error,
  }) {
    return shareLoaded?.call(share);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ShareEntity share)? shareLoaded,
    TResult Function(ClipEntity clip)? clipLoaded,
    TResult Function(List<AudioEntity> audios)? playlistLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (shareLoaded != null) {
      return shareLoaded(share);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShareInitial value) initial,
    required TResult Function(ShareLoading value) loading,
    required TResult Function(ShareShareLoaded value) shareLoaded,
    required TResult Function(ShareClipLoaded value) clipLoaded,
    required TResult Function(SharePlaylistLoaded value) playlistLoaded,
    required TResult Function(ShareError value) error,
  }) {
    return shareLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShareInitial value)? initial,
    TResult? Function(ShareLoading value)? loading,
    TResult? Function(ShareShareLoaded value)? shareLoaded,
    TResult? Function(ShareClipLoaded value)? clipLoaded,
    TResult? Function(SharePlaylistLoaded value)? playlistLoaded,
    TResult? Function(ShareError value)? error,
  }) {
    return shareLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShareInitial value)? initial,
    TResult Function(ShareLoading value)? loading,
    TResult Function(ShareShareLoaded value)? shareLoaded,
    TResult Function(ShareClipLoaded value)? clipLoaded,
    TResult Function(SharePlaylistLoaded value)? playlistLoaded,
    TResult Function(ShareError value)? error,
    required TResult orElse(),
  }) {
    if (shareLoaded != null) {
      return shareLoaded(this);
    }
    return orElse();
  }
}

abstract class ShareShareLoaded implements ShareState {
  const factory ShareShareLoaded({required final ShareEntity share}) =
      _$ShareShareLoadedImpl;

  ShareEntity get share;

  /// Create a copy of ShareState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShareShareLoadedImplCopyWith<_$ShareShareLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShareClipLoadedImplCopyWith<$Res> {
  factory _$$ShareClipLoadedImplCopyWith(
    _$ShareClipLoadedImpl value,
    $Res Function(_$ShareClipLoadedImpl) then,
  ) = __$$ShareClipLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ClipEntity clip});

  $ClipEntityCopyWith<$Res> get clip;
}

/// @nodoc
class __$$ShareClipLoadedImplCopyWithImpl<$Res>
    extends _$ShareStateCopyWithImpl<$Res, _$ShareClipLoadedImpl>
    implements _$$ShareClipLoadedImplCopyWith<$Res> {
  __$$ShareClipLoadedImplCopyWithImpl(
    _$ShareClipLoadedImpl _value,
    $Res Function(_$ShareClipLoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ShareState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? clip = null}) {
    return _then(
      _$ShareClipLoadedImpl(
        clip: null == clip
            ? _value.clip
            : clip // ignore: cast_nullable_to_non_nullable
                  as ClipEntity,
      ),
    );
  }

  /// Create a copy of ShareState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClipEntityCopyWith<$Res> get clip {
    return $ClipEntityCopyWith<$Res>(_value.clip, (value) {
      return _then(_value.copyWith(clip: value));
    });
  }
}

/// @nodoc

class _$ShareClipLoadedImpl implements ShareClipLoaded {
  const _$ShareClipLoadedImpl({required this.clip});

  @override
  final ClipEntity clip;

  @override
  String toString() {
    return 'ShareState.clipLoaded(clip: $clip)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShareClipLoadedImpl &&
            (identical(other.clip, clip) || other.clip == clip));
  }

  @override
  int get hashCode => Object.hash(runtimeType, clip);

  /// Create a copy of ShareState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShareClipLoadedImplCopyWith<_$ShareClipLoadedImpl> get copyWith =>
      __$$ShareClipLoadedImplCopyWithImpl<_$ShareClipLoadedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ShareEntity share) shareLoaded,
    required TResult Function(ClipEntity clip) clipLoaded,
    required TResult Function(List<AudioEntity> audios) playlistLoaded,
    required TResult Function(String message) error,
  }) {
    return clipLoaded(clip);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ShareEntity share)? shareLoaded,
    TResult? Function(ClipEntity clip)? clipLoaded,
    TResult? Function(List<AudioEntity> audios)? playlistLoaded,
    TResult? Function(String message)? error,
  }) {
    return clipLoaded?.call(clip);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ShareEntity share)? shareLoaded,
    TResult Function(ClipEntity clip)? clipLoaded,
    TResult Function(List<AudioEntity> audios)? playlistLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (clipLoaded != null) {
      return clipLoaded(clip);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShareInitial value) initial,
    required TResult Function(ShareLoading value) loading,
    required TResult Function(ShareShareLoaded value) shareLoaded,
    required TResult Function(ShareClipLoaded value) clipLoaded,
    required TResult Function(SharePlaylistLoaded value) playlistLoaded,
    required TResult Function(ShareError value) error,
  }) {
    return clipLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShareInitial value)? initial,
    TResult? Function(ShareLoading value)? loading,
    TResult? Function(ShareShareLoaded value)? shareLoaded,
    TResult? Function(ShareClipLoaded value)? clipLoaded,
    TResult? Function(SharePlaylistLoaded value)? playlistLoaded,
    TResult? Function(ShareError value)? error,
  }) {
    return clipLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShareInitial value)? initial,
    TResult Function(ShareLoading value)? loading,
    TResult Function(ShareShareLoaded value)? shareLoaded,
    TResult Function(ShareClipLoaded value)? clipLoaded,
    TResult Function(SharePlaylistLoaded value)? playlistLoaded,
    TResult Function(ShareError value)? error,
    required TResult orElse(),
  }) {
    if (clipLoaded != null) {
      return clipLoaded(this);
    }
    return orElse();
  }
}

abstract class ShareClipLoaded implements ShareState {
  const factory ShareClipLoaded({required final ClipEntity clip}) =
      _$ShareClipLoadedImpl;

  ClipEntity get clip;

  /// Create a copy of ShareState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShareClipLoadedImplCopyWith<_$ShareClipLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SharePlaylistLoadedImplCopyWith<$Res> {
  factory _$$SharePlaylistLoadedImplCopyWith(
    _$SharePlaylistLoadedImpl value,
    $Res Function(_$SharePlaylistLoadedImpl) then,
  ) = __$$SharePlaylistLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AudioEntity> audios});
}

/// @nodoc
class __$$SharePlaylistLoadedImplCopyWithImpl<$Res>
    extends _$ShareStateCopyWithImpl<$Res, _$SharePlaylistLoadedImpl>
    implements _$$SharePlaylistLoadedImplCopyWith<$Res> {
  __$$SharePlaylistLoadedImplCopyWithImpl(
    _$SharePlaylistLoadedImpl _value,
    $Res Function(_$SharePlaylistLoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ShareState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? audios = null}) {
    return _then(
      _$SharePlaylistLoadedImpl(
        audios: null == audios
            ? _value._audios
            : audios // ignore: cast_nullable_to_non_nullable
                  as List<AudioEntity>,
      ),
    );
  }
}

/// @nodoc

class _$SharePlaylistLoadedImpl implements SharePlaylistLoaded {
  const _$SharePlaylistLoadedImpl({required final List<AudioEntity> audios})
    : _audios = audios;

  final List<AudioEntity> _audios;
  @override
  List<AudioEntity> get audios {
    if (_audios is EqualUnmodifiableListView) return _audios;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_audios);
  }

  @override
  String toString() {
    return 'ShareState.playlistLoaded(audios: $audios)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SharePlaylistLoadedImpl &&
            const DeepCollectionEquality().equals(other._audios, _audios));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_audios));

  /// Create a copy of ShareState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SharePlaylistLoadedImplCopyWith<_$SharePlaylistLoadedImpl> get copyWith =>
      __$$SharePlaylistLoadedImplCopyWithImpl<_$SharePlaylistLoadedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ShareEntity share) shareLoaded,
    required TResult Function(ClipEntity clip) clipLoaded,
    required TResult Function(List<AudioEntity> audios) playlistLoaded,
    required TResult Function(String message) error,
  }) {
    return playlistLoaded(audios);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ShareEntity share)? shareLoaded,
    TResult? Function(ClipEntity clip)? clipLoaded,
    TResult? Function(List<AudioEntity> audios)? playlistLoaded,
    TResult? Function(String message)? error,
  }) {
    return playlistLoaded?.call(audios);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ShareEntity share)? shareLoaded,
    TResult Function(ClipEntity clip)? clipLoaded,
    TResult Function(List<AudioEntity> audios)? playlistLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (playlistLoaded != null) {
      return playlistLoaded(audios);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShareInitial value) initial,
    required TResult Function(ShareLoading value) loading,
    required TResult Function(ShareShareLoaded value) shareLoaded,
    required TResult Function(ShareClipLoaded value) clipLoaded,
    required TResult Function(SharePlaylistLoaded value) playlistLoaded,
    required TResult Function(ShareError value) error,
  }) {
    return playlistLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShareInitial value)? initial,
    TResult? Function(ShareLoading value)? loading,
    TResult? Function(ShareShareLoaded value)? shareLoaded,
    TResult? Function(ShareClipLoaded value)? clipLoaded,
    TResult? Function(SharePlaylistLoaded value)? playlistLoaded,
    TResult? Function(ShareError value)? error,
  }) {
    return playlistLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShareInitial value)? initial,
    TResult Function(ShareLoading value)? loading,
    TResult Function(ShareShareLoaded value)? shareLoaded,
    TResult Function(ShareClipLoaded value)? clipLoaded,
    TResult Function(SharePlaylistLoaded value)? playlistLoaded,
    TResult Function(ShareError value)? error,
    required TResult orElse(),
  }) {
    if (playlistLoaded != null) {
      return playlistLoaded(this);
    }
    return orElse();
  }
}

abstract class SharePlaylistLoaded implements ShareState {
  const factory SharePlaylistLoaded({required final List<AudioEntity> audios}) =
      _$SharePlaylistLoadedImpl;

  List<AudioEntity> get audios;

  /// Create a copy of ShareState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SharePlaylistLoadedImplCopyWith<_$SharePlaylistLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShareErrorImplCopyWith<$Res> {
  factory _$$ShareErrorImplCopyWith(
    _$ShareErrorImpl value,
    $Res Function(_$ShareErrorImpl) then,
  ) = __$$ShareErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ShareErrorImplCopyWithImpl<$Res>
    extends _$ShareStateCopyWithImpl<$Res, _$ShareErrorImpl>
    implements _$$ShareErrorImplCopyWith<$Res> {
  __$$ShareErrorImplCopyWithImpl(
    _$ShareErrorImpl _value,
    $Res Function(_$ShareErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ShareState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$ShareErrorImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ShareErrorImpl implements ShareError {
  const _$ShareErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ShareState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShareErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ShareState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShareErrorImplCopyWith<_$ShareErrorImpl> get copyWith =>
      __$$ShareErrorImplCopyWithImpl<_$ShareErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ShareEntity share) shareLoaded,
    required TResult Function(ClipEntity clip) clipLoaded,
    required TResult Function(List<AudioEntity> audios) playlistLoaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ShareEntity share)? shareLoaded,
    TResult? Function(ClipEntity clip)? clipLoaded,
    TResult? Function(List<AudioEntity> audios)? playlistLoaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ShareEntity share)? shareLoaded,
    TResult Function(ClipEntity clip)? clipLoaded,
    TResult Function(List<AudioEntity> audios)? playlistLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShareInitial value) initial,
    required TResult Function(ShareLoading value) loading,
    required TResult Function(ShareShareLoaded value) shareLoaded,
    required TResult Function(ShareClipLoaded value) clipLoaded,
    required TResult Function(SharePlaylistLoaded value) playlistLoaded,
    required TResult Function(ShareError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShareInitial value)? initial,
    TResult? Function(ShareLoading value)? loading,
    TResult? Function(ShareShareLoaded value)? shareLoaded,
    TResult? Function(ShareClipLoaded value)? clipLoaded,
    TResult? Function(SharePlaylistLoaded value)? playlistLoaded,
    TResult? Function(ShareError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShareInitial value)? initial,
    TResult Function(ShareLoading value)? loading,
    TResult Function(ShareShareLoaded value)? shareLoaded,
    TResult Function(ShareClipLoaded value)? clipLoaded,
    TResult Function(SharePlaylistLoaded value)? playlistLoaded,
    TResult Function(ShareError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ShareError implements ShareState {
  const factory ShareError({required final String message}) = _$ShareErrorImpl;

  String get message;

  /// Create a copy of ShareState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShareErrorImplCopyWith<_$ShareErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
