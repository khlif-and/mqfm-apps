// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'download_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DownloadState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int audioId) downloading,
    required TResult Function(List<DownloadEntity> downloads) loaded,
    required TResult Function(DownloadStorageEntity storage) storageLoaded,
    required TResult Function(List<AudioEntity> suggestions) smartLoaded,
    required TResult Function(String message) actionSuccess,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int audioId)? downloading,
    TResult? Function(List<DownloadEntity> downloads)? loaded,
    TResult? Function(DownloadStorageEntity storage)? storageLoaded,
    TResult? Function(List<AudioEntity> suggestions)? smartLoaded,
    TResult? Function(String message)? actionSuccess,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int audioId)? downloading,
    TResult Function(List<DownloadEntity> downloads)? loaded,
    TResult Function(DownloadStorageEntity storage)? storageLoaded,
    TResult Function(List<AudioEntity> suggestions)? smartLoaded,
    TResult Function(String message)? actionSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DownloadInitial value) initial,
    required TResult Function(DownloadLoading value) loading,
    required TResult Function(DownloadDownloading value) downloading,
    required TResult Function(DownloadLoaded value) loaded,
    required TResult Function(DownloadStorageLoaded value) storageLoaded,
    required TResult Function(DownloadSmartLoaded value) smartLoaded,
    required TResult Function(DownloadActionSuccess value) actionSuccess,
    required TResult Function(DownloadError value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DownloadInitial value)? initial,
    TResult? Function(DownloadLoading value)? loading,
    TResult? Function(DownloadDownloading value)? downloading,
    TResult? Function(DownloadLoaded value)? loaded,
    TResult? Function(DownloadStorageLoaded value)? storageLoaded,
    TResult? Function(DownloadSmartLoaded value)? smartLoaded,
    TResult? Function(DownloadActionSuccess value)? actionSuccess,
    TResult? Function(DownloadError value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DownloadInitial value)? initial,
    TResult Function(DownloadLoading value)? loading,
    TResult Function(DownloadDownloading value)? downloading,
    TResult Function(DownloadLoaded value)? loaded,
    TResult Function(DownloadStorageLoaded value)? storageLoaded,
    TResult Function(DownloadSmartLoaded value)? smartLoaded,
    TResult Function(DownloadActionSuccess value)? actionSuccess,
    TResult Function(DownloadError value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadStateCopyWith<$Res> {
  factory $DownloadStateCopyWith(
    DownloadState value,
    $Res Function(DownloadState) then,
  ) = _$DownloadStateCopyWithImpl<$Res, DownloadState>;
}

/// @nodoc
class _$DownloadStateCopyWithImpl<$Res, $Val extends DownloadState>
    implements $DownloadStateCopyWith<$Res> {
  _$DownloadStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DownloadState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$DownloadInitialImplCopyWith<$Res> {
  factory _$$DownloadInitialImplCopyWith(
    _$DownloadInitialImpl value,
    $Res Function(_$DownloadInitialImpl) then,
  ) = __$$DownloadInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DownloadInitialImplCopyWithImpl<$Res>
    extends _$DownloadStateCopyWithImpl<$Res, _$DownloadInitialImpl>
    implements _$$DownloadInitialImplCopyWith<$Res> {
  __$$DownloadInitialImplCopyWithImpl(
    _$DownloadInitialImpl _value,
    $Res Function(_$DownloadInitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DownloadState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DownloadInitialImpl implements DownloadInitial {
  const _$DownloadInitialImpl();

  @override
  String toString() {
    return 'DownloadState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DownloadInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int audioId) downloading,
    required TResult Function(List<DownloadEntity> downloads) loaded,
    required TResult Function(DownloadStorageEntity storage) storageLoaded,
    required TResult Function(List<AudioEntity> suggestions) smartLoaded,
    required TResult Function(String message) actionSuccess,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int audioId)? downloading,
    TResult? Function(List<DownloadEntity> downloads)? loaded,
    TResult? Function(DownloadStorageEntity storage)? storageLoaded,
    TResult? Function(List<AudioEntity> suggestions)? smartLoaded,
    TResult? Function(String message)? actionSuccess,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int audioId)? downloading,
    TResult Function(List<DownloadEntity> downloads)? loaded,
    TResult Function(DownloadStorageEntity storage)? storageLoaded,
    TResult Function(List<AudioEntity> suggestions)? smartLoaded,
    TResult Function(String message)? actionSuccess,
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
    required TResult Function(DownloadInitial value) initial,
    required TResult Function(DownloadLoading value) loading,
    required TResult Function(DownloadDownloading value) downloading,
    required TResult Function(DownloadLoaded value) loaded,
    required TResult Function(DownloadStorageLoaded value) storageLoaded,
    required TResult Function(DownloadSmartLoaded value) smartLoaded,
    required TResult Function(DownloadActionSuccess value) actionSuccess,
    required TResult Function(DownloadError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DownloadInitial value)? initial,
    TResult? Function(DownloadLoading value)? loading,
    TResult? Function(DownloadDownloading value)? downloading,
    TResult? Function(DownloadLoaded value)? loaded,
    TResult? Function(DownloadStorageLoaded value)? storageLoaded,
    TResult? Function(DownloadSmartLoaded value)? smartLoaded,
    TResult? Function(DownloadActionSuccess value)? actionSuccess,
    TResult? Function(DownloadError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DownloadInitial value)? initial,
    TResult Function(DownloadLoading value)? loading,
    TResult Function(DownloadDownloading value)? downloading,
    TResult Function(DownloadLoaded value)? loaded,
    TResult Function(DownloadStorageLoaded value)? storageLoaded,
    TResult Function(DownloadSmartLoaded value)? smartLoaded,
    TResult Function(DownloadActionSuccess value)? actionSuccess,
    TResult Function(DownloadError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class DownloadInitial implements DownloadState {
  const factory DownloadInitial() = _$DownloadInitialImpl;
}

/// @nodoc
abstract class _$$DownloadLoadingImplCopyWith<$Res> {
  factory _$$DownloadLoadingImplCopyWith(
    _$DownloadLoadingImpl value,
    $Res Function(_$DownloadLoadingImpl) then,
  ) = __$$DownloadLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DownloadLoadingImplCopyWithImpl<$Res>
    extends _$DownloadStateCopyWithImpl<$Res, _$DownloadLoadingImpl>
    implements _$$DownloadLoadingImplCopyWith<$Res> {
  __$$DownloadLoadingImplCopyWithImpl(
    _$DownloadLoadingImpl _value,
    $Res Function(_$DownloadLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DownloadState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DownloadLoadingImpl implements DownloadLoading {
  const _$DownloadLoadingImpl();

  @override
  String toString() {
    return 'DownloadState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DownloadLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int audioId) downloading,
    required TResult Function(List<DownloadEntity> downloads) loaded,
    required TResult Function(DownloadStorageEntity storage) storageLoaded,
    required TResult Function(List<AudioEntity> suggestions) smartLoaded,
    required TResult Function(String message) actionSuccess,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int audioId)? downloading,
    TResult? Function(List<DownloadEntity> downloads)? loaded,
    TResult? Function(DownloadStorageEntity storage)? storageLoaded,
    TResult? Function(List<AudioEntity> suggestions)? smartLoaded,
    TResult? Function(String message)? actionSuccess,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int audioId)? downloading,
    TResult Function(List<DownloadEntity> downloads)? loaded,
    TResult Function(DownloadStorageEntity storage)? storageLoaded,
    TResult Function(List<AudioEntity> suggestions)? smartLoaded,
    TResult Function(String message)? actionSuccess,
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
    required TResult Function(DownloadInitial value) initial,
    required TResult Function(DownloadLoading value) loading,
    required TResult Function(DownloadDownloading value) downloading,
    required TResult Function(DownloadLoaded value) loaded,
    required TResult Function(DownloadStorageLoaded value) storageLoaded,
    required TResult Function(DownloadSmartLoaded value) smartLoaded,
    required TResult Function(DownloadActionSuccess value) actionSuccess,
    required TResult Function(DownloadError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DownloadInitial value)? initial,
    TResult? Function(DownloadLoading value)? loading,
    TResult? Function(DownloadDownloading value)? downloading,
    TResult? Function(DownloadLoaded value)? loaded,
    TResult? Function(DownloadStorageLoaded value)? storageLoaded,
    TResult? Function(DownloadSmartLoaded value)? smartLoaded,
    TResult? Function(DownloadActionSuccess value)? actionSuccess,
    TResult? Function(DownloadError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DownloadInitial value)? initial,
    TResult Function(DownloadLoading value)? loading,
    TResult Function(DownloadDownloading value)? downloading,
    TResult Function(DownloadLoaded value)? loaded,
    TResult Function(DownloadStorageLoaded value)? storageLoaded,
    TResult Function(DownloadSmartLoaded value)? smartLoaded,
    TResult Function(DownloadActionSuccess value)? actionSuccess,
    TResult Function(DownloadError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class DownloadLoading implements DownloadState {
  const factory DownloadLoading() = _$DownloadLoadingImpl;
}

/// @nodoc
abstract class _$$DownloadDownloadingImplCopyWith<$Res> {
  factory _$$DownloadDownloadingImplCopyWith(
    _$DownloadDownloadingImpl value,
    $Res Function(_$DownloadDownloadingImpl) then,
  ) = __$$DownloadDownloadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int audioId});
}

/// @nodoc
class __$$DownloadDownloadingImplCopyWithImpl<$Res>
    extends _$DownloadStateCopyWithImpl<$Res, _$DownloadDownloadingImpl>
    implements _$$DownloadDownloadingImplCopyWith<$Res> {
  __$$DownloadDownloadingImplCopyWithImpl(
    _$DownloadDownloadingImpl _value,
    $Res Function(_$DownloadDownloadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DownloadState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? audioId = null}) {
    return _then(
      _$DownloadDownloadingImpl(
        audioId: null == audioId
            ? _value.audioId
            : audioId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$DownloadDownloadingImpl implements DownloadDownloading {
  const _$DownloadDownloadingImpl({required this.audioId});

  @override
  final int audioId;

  @override
  String toString() {
    return 'DownloadState.downloading(audioId: $audioId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadDownloadingImpl &&
            (identical(other.audioId, audioId) || other.audioId == audioId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, audioId);

  /// Create a copy of DownloadState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadDownloadingImplCopyWith<_$DownloadDownloadingImpl> get copyWith =>
      __$$DownloadDownloadingImplCopyWithImpl<_$DownloadDownloadingImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int audioId) downloading,
    required TResult Function(List<DownloadEntity> downloads) loaded,
    required TResult Function(DownloadStorageEntity storage) storageLoaded,
    required TResult Function(List<AudioEntity> suggestions) smartLoaded,
    required TResult Function(String message) actionSuccess,
    required TResult Function(String message) error,
  }) {
    return downloading(audioId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int audioId)? downloading,
    TResult? Function(List<DownloadEntity> downloads)? loaded,
    TResult? Function(DownloadStorageEntity storage)? storageLoaded,
    TResult? Function(List<AudioEntity> suggestions)? smartLoaded,
    TResult? Function(String message)? actionSuccess,
    TResult? Function(String message)? error,
  }) {
    return downloading?.call(audioId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int audioId)? downloading,
    TResult Function(List<DownloadEntity> downloads)? loaded,
    TResult Function(DownloadStorageEntity storage)? storageLoaded,
    TResult Function(List<AudioEntity> suggestions)? smartLoaded,
    TResult Function(String message)? actionSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (downloading != null) {
      return downloading(audioId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DownloadInitial value) initial,
    required TResult Function(DownloadLoading value) loading,
    required TResult Function(DownloadDownloading value) downloading,
    required TResult Function(DownloadLoaded value) loaded,
    required TResult Function(DownloadStorageLoaded value) storageLoaded,
    required TResult Function(DownloadSmartLoaded value) smartLoaded,
    required TResult Function(DownloadActionSuccess value) actionSuccess,
    required TResult Function(DownloadError value) error,
  }) {
    return downloading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DownloadInitial value)? initial,
    TResult? Function(DownloadLoading value)? loading,
    TResult? Function(DownloadDownloading value)? downloading,
    TResult? Function(DownloadLoaded value)? loaded,
    TResult? Function(DownloadStorageLoaded value)? storageLoaded,
    TResult? Function(DownloadSmartLoaded value)? smartLoaded,
    TResult? Function(DownloadActionSuccess value)? actionSuccess,
    TResult? Function(DownloadError value)? error,
  }) {
    return downloading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DownloadInitial value)? initial,
    TResult Function(DownloadLoading value)? loading,
    TResult Function(DownloadDownloading value)? downloading,
    TResult Function(DownloadLoaded value)? loaded,
    TResult Function(DownloadStorageLoaded value)? storageLoaded,
    TResult Function(DownloadSmartLoaded value)? smartLoaded,
    TResult Function(DownloadActionSuccess value)? actionSuccess,
    TResult Function(DownloadError value)? error,
    required TResult orElse(),
  }) {
    if (downloading != null) {
      return downloading(this);
    }
    return orElse();
  }
}

abstract class DownloadDownloading implements DownloadState {
  const factory DownloadDownloading({required final int audioId}) =
      _$DownloadDownloadingImpl;

  int get audioId;

  /// Create a copy of DownloadState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DownloadDownloadingImplCopyWith<_$DownloadDownloadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DownloadLoadedImplCopyWith<$Res> {
  factory _$$DownloadLoadedImplCopyWith(
    _$DownloadLoadedImpl value,
    $Res Function(_$DownloadLoadedImpl) then,
  ) = __$$DownloadLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<DownloadEntity> downloads});
}

/// @nodoc
class __$$DownloadLoadedImplCopyWithImpl<$Res>
    extends _$DownloadStateCopyWithImpl<$Res, _$DownloadLoadedImpl>
    implements _$$DownloadLoadedImplCopyWith<$Res> {
  __$$DownloadLoadedImplCopyWithImpl(
    _$DownloadLoadedImpl _value,
    $Res Function(_$DownloadLoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DownloadState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? downloads = null}) {
    return _then(
      _$DownloadLoadedImpl(
        downloads: null == downloads
            ? _value._downloads
            : downloads // ignore: cast_nullable_to_non_nullable
                  as List<DownloadEntity>,
      ),
    );
  }
}

/// @nodoc

class _$DownloadLoadedImpl implements DownloadLoaded {
  const _$DownloadLoadedImpl({required final List<DownloadEntity> downloads})
    : _downloads = downloads;

  final List<DownloadEntity> _downloads;
  @override
  List<DownloadEntity> get downloads {
    if (_downloads is EqualUnmodifiableListView) return _downloads;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_downloads);
  }

  @override
  String toString() {
    return 'DownloadState.loaded(downloads: $downloads)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadLoadedImpl &&
            const DeepCollectionEquality().equals(
              other._downloads,
              _downloads,
            ));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_downloads));

  /// Create a copy of DownloadState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadLoadedImplCopyWith<_$DownloadLoadedImpl> get copyWith =>
      __$$DownloadLoadedImplCopyWithImpl<_$DownloadLoadedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int audioId) downloading,
    required TResult Function(List<DownloadEntity> downloads) loaded,
    required TResult Function(DownloadStorageEntity storage) storageLoaded,
    required TResult Function(List<AudioEntity> suggestions) smartLoaded,
    required TResult Function(String message) actionSuccess,
    required TResult Function(String message) error,
  }) {
    return loaded(downloads);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int audioId)? downloading,
    TResult? Function(List<DownloadEntity> downloads)? loaded,
    TResult? Function(DownloadStorageEntity storage)? storageLoaded,
    TResult? Function(List<AudioEntity> suggestions)? smartLoaded,
    TResult? Function(String message)? actionSuccess,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(downloads);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int audioId)? downloading,
    TResult Function(List<DownloadEntity> downloads)? loaded,
    TResult Function(DownloadStorageEntity storage)? storageLoaded,
    TResult Function(List<AudioEntity> suggestions)? smartLoaded,
    TResult Function(String message)? actionSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(downloads);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DownloadInitial value) initial,
    required TResult Function(DownloadLoading value) loading,
    required TResult Function(DownloadDownloading value) downloading,
    required TResult Function(DownloadLoaded value) loaded,
    required TResult Function(DownloadStorageLoaded value) storageLoaded,
    required TResult Function(DownloadSmartLoaded value) smartLoaded,
    required TResult Function(DownloadActionSuccess value) actionSuccess,
    required TResult Function(DownloadError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DownloadInitial value)? initial,
    TResult? Function(DownloadLoading value)? loading,
    TResult? Function(DownloadDownloading value)? downloading,
    TResult? Function(DownloadLoaded value)? loaded,
    TResult? Function(DownloadStorageLoaded value)? storageLoaded,
    TResult? Function(DownloadSmartLoaded value)? smartLoaded,
    TResult? Function(DownloadActionSuccess value)? actionSuccess,
    TResult? Function(DownloadError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DownloadInitial value)? initial,
    TResult Function(DownloadLoading value)? loading,
    TResult Function(DownloadDownloading value)? downloading,
    TResult Function(DownloadLoaded value)? loaded,
    TResult Function(DownloadStorageLoaded value)? storageLoaded,
    TResult Function(DownloadSmartLoaded value)? smartLoaded,
    TResult Function(DownloadActionSuccess value)? actionSuccess,
    TResult Function(DownloadError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class DownloadLoaded implements DownloadState {
  const factory DownloadLoaded({
    required final List<DownloadEntity> downloads,
  }) = _$DownloadLoadedImpl;

  List<DownloadEntity> get downloads;

  /// Create a copy of DownloadState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DownloadLoadedImplCopyWith<_$DownloadLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DownloadStorageLoadedImplCopyWith<$Res> {
  factory _$$DownloadStorageLoadedImplCopyWith(
    _$DownloadStorageLoadedImpl value,
    $Res Function(_$DownloadStorageLoadedImpl) then,
  ) = __$$DownloadStorageLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DownloadStorageEntity storage});

  $DownloadStorageEntityCopyWith<$Res> get storage;
}

/// @nodoc
class __$$DownloadStorageLoadedImplCopyWithImpl<$Res>
    extends _$DownloadStateCopyWithImpl<$Res, _$DownloadStorageLoadedImpl>
    implements _$$DownloadStorageLoadedImplCopyWith<$Res> {
  __$$DownloadStorageLoadedImplCopyWithImpl(
    _$DownloadStorageLoadedImpl _value,
    $Res Function(_$DownloadStorageLoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DownloadState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? storage = null}) {
    return _then(
      _$DownloadStorageLoadedImpl(
        storage: null == storage
            ? _value.storage
            : storage // ignore: cast_nullable_to_non_nullable
                  as DownloadStorageEntity,
      ),
    );
  }

  /// Create a copy of DownloadState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DownloadStorageEntityCopyWith<$Res> get storage {
    return $DownloadStorageEntityCopyWith<$Res>(_value.storage, (value) {
      return _then(_value.copyWith(storage: value));
    });
  }
}

/// @nodoc

class _$DownloadStorageLoadedImpl implements DownloadStorageLoaded {
  const _$DownloadStorageLoadedImpl({required this.storage});

  @override
  final DownloadStorageEntity storage;

  @override
  String toString() {
    return 'DownloadState.storageLoaded(storage: $storage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadStorageLoadedImpl &&
            (identical(other.storage, storage) || other.storage == storage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, storage);

  /// Create a copy of DownloadState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadStorageLoadedImplCopyWith<_$DownloadStorageLoadedImpl>
  get copyWith =>
      __$$DownloadStorageLoadedImplCopyWithImpl<_$DownloadStorageLoadedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int audioId) downloading,
    required TResult Function(List<DownloadEntity> downloads) loaded,
    required TResult Function(DownloadStorageEntity storage) storageLoaded,
    required TResult Function(List<AudioEntity> suggestions) smartLoaded,
    required TResult Function(String message) actionSuccess,
    required TResult Function(String message) error,
  }) {
    return storageLoaded(storage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int audioId)? downloading,
    TResult? Function(List<DownloadEntity> downloads)? loaded,
    TResult? Function(DownloadStorageEntity storage)? storageLoaded,
    TResult? Function(List<AudioEntity> suggestions)? smartLoaded,
    TResult? Function(String message)? actionSuccess,
    TResult? Function(String message)? error,
  }) {
    return storageLoaded?.call(storage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int audioId)? downloading,
    TResult Function(List<DownloadEntity> downloads)? loaded,
    TResult Function(DownloadStorageEntity storage)? storageLoaded,
    TResult Function(List<AudioEntity> suggestions)? smartLoaded,
    TResult Function(String message)? actionSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (storageLoaded != null) {
      return storageLoaded(storage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DownloadInitial value) initial,
    required TResult Function(DownloadLoading value) loading,
    required TResult Function(DownloadDownloading value) downloading,
    required TResult Function(DownloadLoaded value) loaded,
    required TResult Function(DownloadStorageLoaded value) storageLoaded,
    required TResult Function(DownloadSmartLoaded value) smartLoaded,
    required TResult Function(DownloadActionSuccess value) actionSuccess,
    required TResult Function(DownloadError value) error,
  }) {
    return storageLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DownloadInitial value)? initial,
    TResult? Function(DownloadLoading value)? loading,
    TResult? Function(DownloadDownloading value)? downloading,
    TResult? Function(DownloadLoaded value)? loaded,
    TResult? Function(DownloadStorageLoaded value)? storageLoaded,
    TResult? Function(DownloadSmartLoaded value)? smartLoaded,
    TResult? Function(DownloadActionSuccess value)? actionSuccess,
    TResult? Function(DownloadError value)? error,
  }) {
    return storageLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DownloadInitial value)? initial,
    TResult Function(DownloadLoading value)? loading,
    TResult Function(DownloadDownloading value)? downloading,
    TResult Function(DownloadLoaded value)? loaded,
    TResult Function(DownloadStorageLoaded value)? storageLoaded,
    TResult Function(DownloadSmartLoaded value)? smartLoaded,
    TResult Function(DownloadActionSuccess value)? actionSuccess,
    TResult Function(DownloadError value)? error,
    required TResult orElse(),
  }) {
    if (storageLoaded != null) {
      return storageLoaded(this);
    }
    return orElse();
  }
}

abstract class DownloadStorageLoaded implements DownloadState {
  const factory DownloadStorageLoaded({
    required final DownloadStorageEntity storage,
  }) = _$DownloadStorageLoadedImpl;

  DownloadStorageEntity get storage;

  /// Create a copy of DownloadState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DownloadStorageLoadedImplCopyWith<_$DownloadStorageLoadedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DownloadSmartLoadedImplCopyWith<$Res> {
  factory _$$DownloadSmartLoadedImplCopyWith(
    _$DownloadSmartLoadedImpl value,
    $Res Function(_$DownloadSmartLoadedImpl) then,
  ) = __$$DownloadSmartLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AudioEntity> suggestions});
}

/// @nodoc
class __$$DownloadSmartLoadedImplCopyWithImpl<$Res>
    extends _$DownloadStateCopyWithImpl<$Res, _$DownloadSmartLoadedImpl>
    implements _$$DownloadSmartLoadedImplCopyWith<$Res> {
  __$$DownloadSmartLoadedImplCopyWithImpl(
    _$DownloadSmartLoadedImpl _value,
    $Res Function(_$DownloadSmartLoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DownloadState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? suggestions = null}) {
    return _then(
      _$DownloadSmartLoadedImpl(
        suggestions: null == suggestions
            ? _value._suggestions
            : suggestions // ignore: cast_nullable_to_non_nullable
                  as List<AudioEntity>,
      ),
    );
  }
}

/// @nodoc

class _$DownloadSmartLoadedImpl implements DownloadSmartLoaded {
  const _$DownloadSmartLoadedImpl({
    required final List<AudioEntity> suggestions,
  }) : _suggestions = suggestions;

  final List<AudioEntity> _suggestions;
  @override
  List<AudioEntity> get suggestions {
    if (_suggestions is EqualUnmodifiableListView) return _suggestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_suggestions);
  }

  @override
  String toString() {
    return 'DownloadState.smartLoaded(suggestions: $suggestions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadSmartLoadedImpl &&
            const DeepCollectionEquality().equals(
              other._suggestions,
              _suggestions,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_suggestions),
  );

  /// Create a copy of DownloadState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadSmartLoadedImplCopyWith<_$DownloadSmartLoadedImpl> get copyWith =>
      __$$DownloadSmartLoadedImplCopyWithImpl<_$DownloadSmartLoadedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int audioId) downloading,
    required TResult Function(List<DownloadEntity> downloads) loaded,
    required TResult Function(DownloadStorageEntity storage) storageLoaded,
    required TResult Function(List<AudioEntity> suggestions) smartLoaded,
    required TResult Function(String message) actionSuccess,
    required TResult Function(String message) error,
  }) {
    return smartLoaded(suggestions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int audioId)? downloading,
    TResult? Function(List<DownloadEntity> downloads)? loaded,
    TResult? Function(DownloadStorageEntity storage)? storageLoaded,
    TResult? Function(List<AudioEntity> suggestions)? smartLoaded,
    TResult? Function(String message)? actionSuccess,
    TResult? Function(String message)? error,
  }) {
    return smartLoaded?.call(suggestions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int audioId)? downloading,
    TResult Function(List<DownloadEntity> downloads)? loaded,
    TResult Function(DownloadStorageEntity storage)? storageLoaded,
    TResult Function(List<AudioEntity> suggestions)? smartLoaded,
    TResult Function(String message)? actionSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (smartLoaded != null) {
      return smartLoaded(suggestions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DownloadInitial value) initial,
    required TResult Function(DownloadLoading value) loading,
    required TResult Function(DownloadDownloading value) downloading,
    required TResult Function(DownloadLoaded value) loaded,
    required TResult Function(DownloadStorageLoaded value) storageLoaded,
    required TResult Function(DownloadSmartLoaded value) smartLoaded,
    required TResult Function(DownloadActionSuccess value) actionSuccess,
    required TResult Function(DownloadError value) error,
  }) {
    return smartLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DownloadInitial value)? initial,
    TResult? Function(DownloadLoading value)? loading,
    TResult? Function(DownloadDownloading value)? downloading,
    TResult? Function(DownloadLoaded value)? loaded,
    TResult? Function(DownloadStorageLoaded value)? storageLoaded,
    TResult? Function(DownloadSmartLoaded value)? smartLoaded,
    TResult? Function(DownloadActionSuccess value)? actionSuccess,
    TResult? Function(DownloadError value)? error,
  }) {
    return smartLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DownloadInitial value)? initial,
    TResult Function(DownloadLoading value)? loading,
    TResult Function(DownloadDownloading value)? downloading,
    TResult Function(DownloadLoaded value)? loaded,
    TResult Function(DownloadStorageLoaded value)? storageLoaded,
    TResult Function(DownloadSmartLoaded value)? smartLoaded,
    TResult Function(DownloadActionSuccess value)? actionSuccess,
    TResult Function(DownloadError value)? error,
    required TResult orElse(),
  }) {
    if (smartLoaded != null) {
      return smartLoaded(this);
    }
    return orElse();
  }
}

abstract class DownloadSmartLoaded implements DownloadState {
  const factory DownloadSmartLoaded({
    required final List<AudioEntity> suggestions,
  }) = _$DownloadSmartLoadedImpl;

  List<AudioEntity> get suggestions;

  /// Create a copy of DownloadState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DownloadSmartLoadedImplCopyWith<_$DownloadSmartLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DownloadActionSuccessImplCopyWith<$Res> {
  factory _$$DownloadActionSuccessImplCopyWith(
    _$DownloadActionSuccessImpl value,
    $Res Function(_$DownloadActionSuccessImpl) then,
  ) = __$$DownloadActionSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$DownloadActionSuccessImplCopyWithImpl<$Res>
    extends _$DownloadStateCopyWithImpl<$Res, _$DownloadActionSuccessImpl>
    implements _$$DownloadActionSuccessImplCopyWith<$Res> {
  __$$DownloadActionSuccessImplCopyWithImpl(
    _$DownloadActionSuccessImpl _value,
    $Res Function(_$DownloadActionSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DownloadState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$DownloadActionSuccessImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$DownloadActionSuccessImpl implements DownloadActionSuccess {
  const _$DownloadActionSuccessImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'DownloadState.actionSuccess(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadActionSuccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of DownloadState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadActionSuccessImplCopyWith<_$DownloadActionSuccessImpl>
  get copyWith =>
      __$$DownloadActionSuccessImplCopyWithImpl<_$DownloadActionSuccessImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int audioId) downloading,
    required TResult Function(List<DownloadEntity> downloads) loaded,
    required TResult Function(DownloadStorageEntity storage) storageLoaded,
    required TResult Function(List<AudioEntity> suggestions) smartLoaded,
    required TResult Function(String message) actionSuccess,
    required TResult Function(String message) error,
  }) {
    return actionSuccess(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int audioId)? downloading,
    TResult? Function(List<DownloadEntity> downloads)? loaded,
    TResult? Function(DownloadStorageEntity storage)? storageLoaded,
    TResult? Function(List<AudioEntity> suggestions)? smartLoaded,
    TResult? Function(String message)? actionSuccess,
    TResult? Function(String message)? error,
  }) {
    return actionSuccess?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int audioId)? downloading,
    TResult Function(List<DownloadEntity> downloads)? loaded,
    TResult Function(DownloadStorageEntity storage)? storageLoaded,
    TResult Function(List<AudioEntity> suggestions)? smartLoaded,
    TResult Function(String message)? actionSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (actionSuccess != null) {
      return actionSuccess(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DownloadInitial value) initial,
    required TResult Function(DownloadLoading value) loading,
    required TResult Function(DownloadDownloading value) downloading,
    required TResult Function(DownloadLoaded value) loaded,
    required TResult Function(DownloadStorageLoaded value) storageLoaded,
    required TResult Function(DownloadSmartLoaded value) smartLoaded,
    required TResult Function(DownloadActionSuccess value) actionSuccess,
    required TResult Function(DownloadError value) error,
  }) {
    return actionSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DownloadInitial value)? initial,
    TResult? Function(DownloadLoading value)? loading,
    TResult? Function(DownloadDownloading value)? downloading,
    TResult? Function(DownloadLoaded value)? loaded,
    TResult? Function(DownloadStorageLoaded value)? storageLoaded,
    TResult? Function(DownloadSmartLoaded value)? smartLoaded,
    TResult? Function(DownloadActionSuccess value)? actionSuccess,
    TResult? Function(DownloadError value)? error,
  }) {
    return actionSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DownloadInitial value)? initial,
    TResult Function(DownloadLoading value)? loading,
    TResult Function(DownloadDownloading value)? downloading,
    TResult Function(DownloadLoaded value)? loaded,
    TResult Function(DownloadStorageLoaded value)? storageLoaded,
    TResult Function(DownloadSmartLoaded value)? smartLoaded,
    TResult Function(DownloadActionSuccess value)? actionSuccess,
    TResult Function(DownloadError value)? error,
    required TResult orElse(),
  }) {
    if (actionSuccess != null) {
      return actionSuccess(this);
    }
    return orElse();
  }
}

abstract class DownloadActionSuccess implements DownloadState {
  const factory DownloadActionSuccess({required final String message}) =
      _$DownloadActionSuccessImpl;

  String get message;

  /// Create a copy of DownloadState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DownloadActionSuccessImplCopyWith<_$DownloadActionSuccessImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DownloadErrorImplCopyWith<$Res> {
  factory _$$DownloadErrorImplCopyWith(
    _$DownloadErrorImpl value,
    $Res Function(_$DownloadErrorImpl) then,
  ) = __$$DownloadErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$DownloadErrorImplCopyWithImpl<$Res>
    extends _$DownloadStateCopyWithImpl<$Res, _$DownloadErrorImpl>
    implements _$$DownloadErrorImplCopyWith<$Res> {
  __$$DownloadErrorImplCopyWithImpl(
    _$DownloadErrorImpl _value,
    $Res Function(_$DownloadErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DownloadState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$DownloadErrorImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$DownloadErrorImpl implements DownloadError {
  const _$DownloadErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'DownloadState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of DownloadState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadErrorImplCopyWith<_$DownloadErrorImpl> get copyWith =>
      __$$DownloadErrorImplCopyWithImpl<_$DownloadErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int audioId) downloading,
    required TResult Function(List<DownloadEntity> downloads) loaded,
    required TResult Function(DownloadStorageEntity storage) storageLoaded,
    required TResult Function(List<AudioEntity> suggestions) smartLoaded,
    required TResult Function(String message) actionSuccess,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int audioId)? downloading,
    TResult? Function(List<DownloadEntity> downloads)? loaded,
    TResult? Function(DownloadStorageEntity storage)? storageLoaded,
    TResult? Function(List<AudioEntity> suggestions)? smartLoaded,
    TResult? Function(String message)? actionSuccess,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int audioId)? downloading,
    TResult Function(List<DownloadEntity> downloads)? loaded,
    TResult Function(DownloadStorageEntity storage)? storageLoaded,
    TResult Function(List<AudioEntity> suggestions)? smartLoaded,
    TResult Function(String message)? actionSuccess,
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
    required TResult Function(DownloadInitial value) initial,
    required TResult Function(DownloadLoading value) loading,
    required TResult Function(DownloadDownloading value) downloading,
    required TResult Function(DownloadLoaded value) loaded,
    required TResult Function(DownloadStorageLoaded value) storageLoaded,
    required TResult Function(DownloadSmartLoaded value) smartLoaded,
    required TResult Function(DownloadActionSuccess value) actionSuccess,
    required TResult Function(DownloadError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DownloadInitial value)? initial,
    TResult? Function(DownloadLoading value)? loading,
    TResult? Function(DownloadDownloading value)? downloading,
    TResult? Function(DownloadLoaded value)? loaded,
    TResult? Function(DownloadStorageLoaded value)? storageLoaded,
    TResult? Function(DownloadSmartLoaded value)? smartLoaded,
    TResult? Function(DownloadActionSuccess value)? actionSuccess,
    TResult? Function(DownloadError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DownloadInitial value)? initial,
    TResult Function(DownloadLoading value)? loading,
    TResult Function(DownloadDownloading value)? downloading,
    TResult Function(DownloadLoaded value)? loaded,
    TResult Function(DownloadStorageLoaded value)? storageLoaded,
    TResult Function(DownloadSmartLoaded value)? smartLoaded,
    TResult Function(DownloadActionSuccess value)? actionSuccess,
    TResult Function(DownloadError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class DownloadError implements DownloadState {
  const factory DownloadError({required final String message}) =
      _$DownloadErrorImpl;

  String get message;

  /// Create a copy of DownloadState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DownloadErrorImplCopyWith<_$DownloadErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
