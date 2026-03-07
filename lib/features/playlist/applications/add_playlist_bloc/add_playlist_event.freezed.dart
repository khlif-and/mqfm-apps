// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_playlist_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PlaylistEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(int id) fetchDetail,
    required TResult Function(String name) create,
    required TResult Function(int playlistId, int audioId) addAudio,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int id)? fetchDetail,
    TResult? Function(String name)? create,
    TResult? Function(int playlistId, int audioId)? addAudio,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int id)? fetchDetail,
    TResult Function(String name)? create,
    TResult Function(int playlistId, int audioId)? addAudio,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlaylistFetch value) fetch,
    required TResult Function(PlaylistFetchDetail value) fetchDetail,
    required TResult Function(PlaylistCreate value) create,
    required TResult Function(PlaylistAddAudio value) addAudio,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlaylistFetch value)? fetch,
    TResult? Function(PlaylistFetchDetail value)? fetchDetail,
    TResult? Function(PlaylistCreate value)? create,
    TResult? Function(PlaylistAddAudio value)? addAudio,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlaylistFetch value)? fetch,
    TResult Function(PlaylistFetchDetail value)? fetchDetail,
    TResult Function(PlaylistCreate value)? create,
    TResult Function(PlaylistAddAudio value)? addAudio,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistEventCopyWith<$Res> {
  factory $PlaylistEventCopyWith(
    PlaylistEvent value,
    $Res Function(PlaylistEvent) then,
  ) = _$PlaylistEventCopyWithImpl<$Res, PlaylistEvent>;
}

/// @nodoc
class _$PlaylistEventCopyWithImpl<$Res, $Val extends PlaylistEvent>
    implements $PlaylistEventCopyWith<$Res> {
  _$PlaylistEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlaylistEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PlaylistFetchImplCopyWith<$Res> {
  factory _$$PlaylistFetchImplCopyWith(
    _$PlaylistFetchImpl value,
    $Res Function(_$PlaylistFetchImpl) then,
  ) = __$$PlaylistFetchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PlaylistFetchImplCopyWithImpl<$Res>
    extends _$PlaylistEventCopyWithImpl<$Res, _$PlaylistFetchImpl>
    implements _$$PlaylistFetchImplCopyWith<$Res> {
  __$$PlaylistFetchImplCopyWithImpl(
    _$PlaylistFetchImpl _value,
    $Res Function(_$PlaylistFetchImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlaylistEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PlaylistFetchImpl implements PlaylistFetch {
  const _$PlaylistFetchImpl();

  @override
  String toString() {
    return 'PlaylistEvent.fetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PlaylistFetchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(int id) fetchDetail,
    required TResult Function(String name) create,
    required TResult Function(int playlistId, int audioId) addAudio,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int id)? fetchDetail,
    TResult? Function(String name)? create,
    TResult? Function(int playlistId, int audioId)? addAudio,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int id)? fetchDetail,
    TResult Function(String name)? create,
    TResult Function(int playlistId, int audioId)? addAudio,
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
    required TResult Function(PlaylistFetch value) fetch,
    required TResult Function(PlaylistFetchDetail value) fetchDetail,
    required TResult Function(PlaylistCreate value) create,
    required TResult Function(PlaylistAddAudio value) addAudio,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlaylistFetch value)? fetch,
    TResult? Function(PlaylistFetchDetail value)? fetchDetail,
    TResult? Function(PlaylistCreate value)? create,
    TResult? Function(PlaylistAddAudio value)? addAudio,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlaylistFetch value)? fetch,
    TResult Function(PlaylistFetchDetail value)? fetchDetail,
    TResult Function(PlaylistCreate value)? create,
    TResult Function(PlaylistAddAudio value)? addAudio,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class PlaylistFetch implements PlaylistEvent {
  const factory PlaylistFetch() = _$PlaylistFetchImpl;
}

/// @nodoc
abstract class _$$PlaylistFetchDetailImplCopyWith<$Res> {
  factory _$$PlaylistFetchDetailImplCopyWith(
    _$PlaylistFetchDetailImpl value,
    $Res Function(_$PlaylistFetchDetailImpl) then,
  ) = __$$PlaylistFetchDetailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$PlaylistFetchDetailImplCopyWithImpl<$Res>
    extends _$PlaylistEventCopyWithImpl<$Res, _$PlaylistFetchDetailImpl>
    implements _$$PlaylistFetchDetailImplCopyWith<$Res> {
  __$$PlaylistFetchDetailImplCopyWithImpl(
    _$PlaylistFetchDetailImpl _value,
    $Res Function(_$PlaylistFetchDetailImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlaylistEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _$PlaylistFetchDetailImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$PlaylistFetchDetailImpl implements PlaylistFetchDetail {
  const _$PlaylistFetchDetailImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'PlaylistEvent.fetchDetail(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaylistFetchDetailImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of PlaylistEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaylistFetchDetailImplCopyWith<_$PlaylistFetchDetailImpl> get copyWith =>
      __$$PlaylistFetchDetailImplCopyWithImpl<_$PlaylistFetchDetailImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(int id) fetchDetail,
    required TResult Function(String name) create,
    required TResult Function(int playlistId, int audioId) addAudio,
  }) {
    return fetchDetail(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int id)? fetchDetail,
    TResult? Function(String name)? create,
    TResult? Function(int playlistId, int audioId)? addAudio,
  }) {
    return fetchDetail?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int id)? fetchDetail,
    TResult Function(String name)? create,
    TResult Function(int playlistId, int audioId)? addAudio,
    required TResult orElse(),
  }) {
    if (fetchDetail != null) {
      return fetchDetail(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlaylistFetch value) fetch,
    required TResult Function(PlaylistFetchDetail value) fetchDetail,
    required TResult Function(PlaylistCreate value) create,
    required TResult Function(PlaylistAddAudio value) addAudio,
  }) {
    return fetchDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlaylistFetch value)? fetch,
    TResult? Function(PlaylistFetchDetail value)? fetchDetail,
    TResult? Function(PlaylistCreate value)? create,
    TResult? Function(PlaylistAddAudio value)? addAudio,
  }) {
    return fetchDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlaylistFetch value)? fetch,
    TResult Function(PlaylistFetchDetail value)? fetchDetail,
    TResult Function(PlaylistCreate value)? create,
    TResult Function(PlaylistAddAudio value)? addAudio,
    required TResult orElse(),
  }) {
    if (fetchDetail != null) {
      return fetchDetail(this);
    }
    return orElse();
  }
}

abstract class PlaylistFetchDetail implements PlaylistEvent {
  const factory PlaylistFetchDetail({required final int id}) =
      _$PlaylistFetchDetailImpl;

  int get id;

  /// Create a copy of PlaylistEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlaylistFetchDetailImplCopyWith<_$PlaylistFetchDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlaylistCreateImplCopyWith<$Res> {
  factory _$$PlaylistCreateImplCopyWith(
    _$PlaylistCreateImpl value,
    $Res Function(_$PlaylistCreateImpl) then,
  ) = __$$PlaylistCreateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$PlaylistCreateImplCopyWithImpl<$Res>
    extends _$PlaylistEventCopyWithImpl<$Res, _$PlaylistCreateImpl>
    implements _$$PlaylistCreateImplCopyWith<$Res> {
  __$$PlaylistCreateImplCopyWithImpl(
    _$PlaylistCreateImpl _value,
    $Res Function(_$PlaylistCreateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlaylistEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null}) {
    return _then(
      _$PlaylistCreateImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$PlaylistCreateImpl implements PlaylistCreate {
  const _$PlaylistCreateImpl({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'PlaylistEvent.create(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaylistCreateImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of PlaylistEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaylistCreateImplCopyWith<_$PlaylistCreateImpl> get copyWith =>
      __$$PlaylistCreateImplCopyWithImpl<_$PlaylistCreateImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(int id) fetchDetail,
    required TResult Function(String name) create,
    required TResult Function(int playlistId, int audioId) addAudio,
  }) {
    return create(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int id)? fetchDetail,
    TResult? Function(String name)? create,
    TResult? Function(int playlistId, int audioId)? addAudio,
  }) {
    return create?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int id)? fetchDetail,
    TResult Function(String name)? create,
    TResult Function(int playlistId, int audioId)? addAudio,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlaylistFetch value) fetch,
    required TResult Function(PlaylistFetchDetail value) fetchDetail,
    required TResult Function(PlaylistCreate value) create,
    required TResult Function(PlaylistAddAudio value) addAudio,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlaylistFetch value)? fetch,
    TResult? Function(PlaylistFetchDetail value)? fetchDetail,
    TResult? Function(PlaylistCreate value)? create,
    TResult? Function(PlaylistAddAudio value)? addAudio,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlaylistFetch value)? fetch,
    TResult Function(PlaylistFetchDetail value)? fetchDetail,
    TResult Function(PlaylistCreate value)? create,
    TResult Function(PlaylistAddAudio value)? addAudio,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class PlaylistCreate implements PlaylistEvent {
  const factory PlaylistCreate({required final String name}) =
      _$PlaylistCreateImpl;

  String get name;

  /// Create a copy of PlaylistEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlaylistCreateImplCopyWith<_$PlaylistCreateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlaylistAddAudioImplCopyWith<$Res> {
  factory _$$PlaylistAddAudioImplCopyWith(
    _$PlaylistAddAudioImpl value,
    $Res Function(_$PlaylistAddAudioImpl) then,
  ) = __$$PlaylistAddAudioImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int playlistId, int audioId});
}

/// @nodoc
class __$$PlaylistAddAudioImplCopyWithImpl<$Res>
    extends _$PlaylistEventCopyWithImpl<$Res, _$PlaylistAddAudioImpl>
    implements _$$PlaylistAddAudioImplCopyWith<$Res> {
  __$$PlaylistAddAudioImplCopyWithImpl(
    _$PlaylistAddAudioImpl _value,
    $Res Function(_$PlaylistAddAudioImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlaylistEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? playlistId = null, Object? audioId = null}) {
    return _then(
      _$PlaylistAddAudioImpl(
        playlistId: null == playlistId
            ? _value.playlistId
            : playlistId // ignore: cast_nullable_to_non_nullable
                  as int,
        audioId: null == audioId
            ? _value.audioId
            : audioId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$PlaylistAddAudioImpl implements PlaylistAddAudio {
  const _$PlaylistAddAudioImpl({
    required this.playlistId,
    required this.audioId,
  });

  @override
  final int playlistId;
  @override
  final int audioId;

  @override
  String toString() {
    return 'PlaylistEvent.addAudio(playlistId: $playlistId, audioId: $audioId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaylistAddAudioImpl &&
            (identical(other.playlistId, playlistId) ||
                other.playlistId == playlistId) &&
            (identical(other.audioId, audioId) || other.audioId == audioId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, playlistId, audioId);

  /// Create a copy of PlaylistEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaylistAddAudioImplCopyWith<_$PlaylistAddAudioImpl> get copyWith =>
      __$$PlaylistAddAudioImplCopyWithImpl<_$PlaylistAddAudioImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(int id) fetchDetail,
    required TResult Function(String name) create,
    required TResult Function(int playlistId, int audioId) addAudio,
  }) {
    return addAudio(playlistId, audioId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int id)? fetchDetail,
    TResult? Function(String name)? create,
    TResult? Function(int playlistId, int audioId)? addAudio,
  }) {
    return addAudio?.call(playlistId, audioId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int id)? fetchDetail,
    TResult Function(String name)? create,
    TResult Function(int playlistId, int audioId)? addAudio,
    required TResult orElse(),
  }) {
    if (addAudio != null) {
      return addAudio(playlistId, audioId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlaylistFetch value) fetch,
    required TResult Function(PlaylistFetchDetail value) fetchDetail,
    required TResult Function(PlaylistCreate value) create,
    required TResult Function(PlaylistAddAudio value) addAudio,
  }) {
    return addAudio(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlaylistFetch value)? fetch,
    TResult? Function(PlaylistFetchDetail value)? fetchDetail,
    TResult? Function(PlaylistCreate value)? create,
    TResult? Function(PlaylistAddAudio value)? addAudio,
  }) {
    return addAudio?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlaylistFetch value)? fetch,
    TResult Function(PlaylistFetchDetail value)? fetchDetail,
    TResult Function(PlaylistCreate value)? create,
    TResult Function(PlaylistAddAudio value)? addAudio,
    required TResult orElse(),
  }) {
    if (addAudio != null) {
      return addAudio(this);
    }
    return orElse();
  }
}

abstract class PlaylistAddAudio implements PlaylistEvent {
  const factory PlaylistAddAudio({
    required final int playlistId,
    required final int audioId,
  }) = _$PlaylistAddAudioImpl;

  int get playlistId;
  int get audioId;

  /// Create a copy of PlaylistEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlaylistAddAudioImplCopyWith<_$PlaylistAddAudioImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
