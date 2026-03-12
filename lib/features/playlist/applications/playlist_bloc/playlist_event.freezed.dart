// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'playlist_event.dart';

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
    required TResult Function(String name, int audioId) createFromAudio,
    required TResult Function(int id, String? name) update,
    required TResult Function(int id) delete,
    required TResult Function(int playlistId, int audioId) addAudio,
    required TResult Function(int playlistId, int audioId) removeAudio,
    required TResult Function(int id) share,
    required TResult Function(String query) search,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int id)? fetchDetail,
    TResult? Function(String name)? create,
    TResult? Function(String name, int audioId)? createFromAudio,
    TResult? Function(int id, String? name)? update,
    TResult? Function(int id)? delete,
    TResult? Function(int playlistId, int audioId)? addAudio,
    TResult? Function(int playlistId, int audioId)? removeAudio,
    TResult? Function(int id)? share,
    TResult? Function(String query)? search,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int id)? fetchDetail,
    TResult Function(String name)? create,
    TResult Function(String name, int audioId)? createFromAudio,
    TResult Function(int id, String? name)? update,
    TResult Function(int id)? delete,
    TResult Function(int playlistId, int audioId)? addAudio,
    TResult Function(int playlistId, int audioId)? removeAudio,
    TResult Function(int id)? share,
    TResult Function(String query)? search,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlaylistFetch value) fetch,
    required TResult Function(PlaylistFetchDetail value) fetchDetail,
    required TResult Function(PlaylistCreate value) create,
    required TResult Function(PlaylistCreateFromAudio value) createFromAudio,
    required TResult Function(PlaylistUpdate value) update,
    required TResult Function(PlaylistDelete value) delete,
    required TResult Function(PlaylistAddAudio value) addAudio,
    required TResult Function(PlaylistRemoveAudio value) removeAudio,
    required TResult Function(PlaylistShare value) share,
    required TResult Function(PlaylistSearch value) search,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlaylistFetch value)? fetch,
    TResult? Function(PlaylistFetchDetail value)? fetchDetail,
    TResult? Function(PlaylistCreate value)? create,
    TResult? Function(PlaylistCreateFromAudio value)? createFromAudio,
    TResult? Function(PlaylistUpdate value)? update,
    TResult? Function(PlaylistDelete value)? delete,
    TResult? Function(PlaylistAddAudio value)? addAudio,
    TResult? Function(PlaylistRemoveAudio value)? removeAudio,
    TResult? Function(PlaylistShare value)? share,
    TResult? Function(PlaylistSearch value)? search,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlaylistFetch value)? fetch,
    TResult Function(PlaylistFetchDetail value)? fetchDetail,
    TResult Function(PlaylistCreate value)? create,
    TResult Function(PlaylistCreateFromAudio value)? createFromAudio,
    TResult Function(PlaylistUpdate value)? update,
    TResult Function(PlaylistDelete value)? delete,
    TResult Function(PlaylistAddAudio value)? addAudio,
    TResult Function(PlaylistRemoveAudio value)? removeAudio,
    TResult Function(PlaylistShare value)? share,
    TResult Function(PlaylistSearch value)? search,
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
    required TResult Function(String name, int audioId) createFromAudio,
    required TResult Function(int id, String? name) update,
    required TResult Function(int id) delete,
    required TResult Function(int playlistId, int audioId) addAudio,
    required TResult Function(int playlistId, int audioId) removeAudio,
    required TResult Function(int id) share,
    required TResult Function(String query) search,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int id)? fetchDetail,
    TResult? Function(String name)? create,
    TResult? Function(String name, int audioId)? createFromAudio,
    TResult? Function(int id, String? name)? update,
    TResult? Function(int id)? delete,
    TResult? Function(int playlistId, int audioId)? addAudio,
    TResult? Function(int playlistId, int audioId)? removeAudio,
    TResult? Function(int id)? share,
    TResult? Function(String query)? search,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int id)? fetchDetail,
    TResult Function(String name)? create,
    TResult Function(String name, int audioId)? createFromAudio,
    TResult Function(int id, String? name)? update,
    TResult Function(int id)? delete,
    TResult Function(int playlistId, int audioId)? addAudio,
    TResult Function(int playlistId, int audioId)? removeAudio,
    TResult Function(int id)? share,
    TResult Function(String query)? search,
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
    required TResult Function(PlaylistCreateFromAudio value) createFromAudio,
    required TResult Function(PlaylistUpdate value) update,
    required TResult Function(PlaylistDelete value) delete,
    required TResult Function(PlaylistAddAudio value) addAudio,
    required TResult Function(PlaylistRemoveAudio value) removeAudio,
    required TResult Function(PlaylistShare value) share,
    required TResult Function(PlaylistSearch value) search,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlaylistFetch value)? fetch,
    TResult? Function(PlaylistFetchDetail value)? fetchDetail,
    TResult? Function(PlaylistCreate value)? create,
    TResult? Function(PlaylistCreateFromAudio value)? createFromAudio,
    TResult? Function(PlaylistUpdate value)? update,
    TResult? Function(PlaylistDelete value)? delete,
    TResult? Function(PlaylistAddAudio value)? addAudio,
    TResult? Function(PlaylistRemoveAudio value)? removeAudio,
    TResult? Function(PlaylistShare value)? share,
    TResult? Function(PlaylistSearch value)? search,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlaylistFetch value)? fetch,
    TResult Function(PlaylistFetchDetail value)? fetchDetail,
    TResult Function(PlaylistCreate value)? create,
    TResult Function(PlaylistCreateFromAudio value)? createFromAudio,
    TResult Function(PlaylistUpdate value)? update,
    TResult Function(PlaylistDelete value)? delete,
    TResult Function(PlaylistAddAudio value)? addAudio,
    TResult Function(PlaylistRemoveAudio value)? removeAudio,
    TResult Function(PlaylistShare value)? share,
    TResult Function(PlaylistSearch value)? search,
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
    required TResult Function(String name, int audioId) createFromAudio,
    required TResult Function(int id, String? name) update,
    required TResult Function(int id) delete,
    required TResult Function(int playlistId, int audioId) addAudio,
    required TResult Function(int playlistId, int audioId) removeAudio,
    required TResult Function(int id) share,
    required TResult Function(String query) search,
  }) {
    return fetchDetail(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int id)? fetchDetail,
    TResult? Function(String name)? create,
    TResult? Function(String name, int audioId)? createFromAudio,
    TResult? Function(int id, String? name)? update,
    TResult? Function(int id)? delete,
    TResult? Function(int playlistId, int audioId)? addAudio,
    TResult? Function(int playlistId, int audioId)? removeAudio,
    TResult? Function(int id)? share,
    TResult? Function(String query)? search,
  }) {
    return fetchDetail?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int id)? fetchDetail,
    TResult Function(String name)? create,
    TResult Function(String name, int audioId)? createFromAudio,
    TResult Function(int id, String? name)? update,
    TResult Function(int id)? delete,
    TResult Function(int playlistId, int audioId)? addAudio,
    TResult Function(int playlistId, int audioId)? removeAudio,
    TResult Function(int id)? share,
    TResult Function(String query)? search,
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
    required TResult Function(PlaylistCreateFromAudio value) createFromAudio,
    required TResult Function(PlaylistUpdate value) update,
    required TResult Function(PlaylistDelete value) delete,
    required TResult Function(PlaylistAddAudio value) addAudio,
    required TResult Function(PlaylistRemoveAudio value) removeAudio,
    required TResult Function(PlaylistShare value) share,
    required TResult Function(PlaylistSearch value) search,
  }) {
    return fetchDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlaylistFetch value)? fetch,
    TResult? Function(PlaylistFetchDetail value)? fetchDetail,
    TResult? Function(PlaylistCreate value)? create,
    TResult? Function(PlaylistCreateFromAudio value)? createFromAudio,
    TResult? Function(PlaylistUpdate value)? update,
    TResult? Function(PlaylistDelete value)? delete,
    TResult? Function(PlaylistAddAudio value)? addAudio,
    TResult? Function(PlaylistRemoveAudio value)? removeAudio,
    TResult? Function(PlaylistShare value)? share,
    TResult? Function(PlaylistSearch value)? search,
  }) {
    return fetchDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlaylistFetch value)? fetch,
    TResult Function(PlaylistFetchDetail value)? fetchDetail,
    TResult Function(PlaylistCreate value)? create,
    TResult Function(PlaylistCreateFromAudio value)? createFromAudio,
    TResult Function(PlaylistUpdate value)? update,
    TResult Function(PlaylistDelete value)? delete,
    TResult Function(PlaylistAddAudio value)? addAudio,
    TResult Function(PlaylistRemoveAudio value)? removeAudio,
    TResult Function(PlaylistShare value)? share,
    TResult Function(PlaylistSearch value)? search,
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
    required TResult Function(String name, int audioId) createFromAudio,
    required TResult Function(int id, String? name) update,
    required TResult Function(int id) delete,
    required TResult Function(int playlistId, int audioId) addAudio,
    required TResult Function(int playlistId, int audioId) removeAudio,
    required TResult Function(int id) share,
    required TResult Function(String query) search,
  }) {
    return create(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int id)? fetchDetail,
    TResult? Function(String name)? create,
    TResult? Function(String name, int audioId)? createFromAudio,
    TResult? Function(int id, String? name)? update,
    TResult? Function(int id)? delete,
    TResult? Function(int playlistId, int audioId)? addAudio,
    TResult? Function(int playlistId, int audioId)? removeAudio,
    TResult? Function(int id)? share,
    TResult? Function(String query)? search,
  }) {
    return create?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int id)? fetchDetail,
    TResult Function(String name)? create,
    TResult Function(String name, int audioId)? createFromAudio,
    TResult Function(int id, String? name)? update,
    TResult Function(int id)? delete,
    TResult Function(int playlistId, int audioId)? addAudio,
    TResult Function(int playlistId, int audioId)? removeAudio,
    TResult Function(int id)? share,
    TResult Function(String query)? search,
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
    required TResult Function(PlaylistCreateFromAudio value) createFromAudio,
    required TResult Function(PlaylistUpdate value) update,
    required TResult Function(PlaylistDelete value) delete,
    required TResult Function(PlaylistAddAudio value) addAudio,
    required TResult Function(PlaylistRemoveAudio value) removeAudio,
    required TResult Function(PlaylistShare value) share,
    required TResult Function(PlaylistSearch value) search,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlaylistFetch value)? fetch,
    TResult? Function(PlaylistFetchDetail value)? fetchDetail,
    TResult? Function(PlaylistCreate value)? create,
    TResult? Function(PlaylistCreateFromAudio value)? createFromAudio,
    TResult? Function(PlaylistUpdate value)? update,
    TResult? Function(PlaylistDelete value)? delete,
    TResult? Function(PlaylistAddAudio value)? addAudio,
    TResult? Function(PlaylistRemoveAudio value)? removeAudio,
    TResult? Function(PlaylistShare value)? share,
    TResult? Function(PlaylistSearch value)? search,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlaylistFetch value)? fetch,
    TResult Function(PlaylistFetchDetail value)? fetchDetail,
    TResult Function(PlaylistCreate value)? create,
    TResult Function(PlaylistCreateFromAudio value)? createFromAudio,
    TResult Function(PlaylistUpdate value)? update,
    TResult Function(PlaylistDelete value)? delete,
    TResult Function(PlaylistAddAudio value)? addAudio,
    TResult Function(PlaylistRemoveAudio value)? removeAudio,
    TResult Function(PlaylistShare value)? share,
    TResult Function(PlaylistSearch value)? search,
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
abstract class _$$PlaylistCreateFromAudioImplCopyWith<$Res> {
  factory _$$PlaylistCreateFromAudioImplCopyWith(
    _$PlaylistCreateFromAudioImpl value,
    $Res Function(_$PlaylistCreateFromAudioImpl) then,
  ) = __$$PlaylistCreateFromAudioImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, int audioId});
}

/// @nodoc
class __$$PlaylistCreateFromAudioImplCopyWithImpl<$Res>
    extends _$PlaylistEventCopyWithImpl<$Res, _$PlaylistCreateFromAudioImpl>
    implements _$$PlaylistCreateFromAudioImplCopyWith<$Res> {
  __$$PlaylistCreateFromAudioImplCopyWithImpl(
    _$PlaylistCreateFromAudioImpl _value,
    $Res Function(_$PlaylistCreateFromAudioImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlaylistEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? audioId = null}) {
    return _then(
      _$PlaylistCreateFromAudioImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        audioId: null == audioId
            ? _value.audioId
            : audioId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$PlaylistCreateFromAudioImpl implements PlaylistCreateFromAudio {
  const _$PlaylistCreateFromAudioImpl({
    required this.name,
    required this.audioId,
  });

  @override
  final String name;
  @override
  final int audioId;

  @override
  String toString() {
    return 'PlaylistEvent.createFromAudio(name: $name, audioId: $audioId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaylistCreateFromAudioImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.audioId, audioId) || other.audioId == audioId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, audioId);

  /// Create a copy of PlaylistEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaylistCreateFromAudioImplCopyWith<_$PlaylistCreateFromAudioImpl>
  get copyWith =>
      __$$PlaylistCreateFromAudioImplCopyWithImpl<
        _$PlaylistCreateFromAudioImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(int id) fetchDetail,
    required TResult Function(String name) create,
    required TResult Function(String name, int audioId) createFromAudio,
    required TResult Function(int id, String? name) update,
    required TResult Function(int id) delete,
    required TResult Function(int playlistId, int audioId) addAudio,
    required TResult Function(int playlistId, int audioId) removeAudio,
    required TResult Function(int id) share,
    required TResult Function(String query) search,
  }) {
    return createFromAudio(name, audioId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int id)? fetchDetail,
    TResult? Function(String name)? create,
    TResult? Function(String name, int audioId)? createFromAudio,
    TResult? Function(int id, String? name)? update,
    TResult? Function(int id)? delete,
    TResult? Function(int playlistId, int audioId)? addAudio,
    TResult? Function(int playlistId, int audioId)? removeAudio,
    TResult? Function(int id)? share,
    TResult? Function(String query)? search,
  }) {
    return createFromAudio?.call(name, audioId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int id)? fetchDetail,
    TResult Function(String name)? create,
    TResult Function(String name, int audioId)? createFromAudio,
    TResult Function(int id, String? name)? update,
    TResult Function(int id)? delete,
    TResult Function(int playlistId, int audioId)? addAudio,
    TResult Function(int playlistId, int audioId)? removeAudio,
    TResult Function(int id)? share,
    TResult Function(String query)? search,
    required TResult orElse(),
  }) {
    if (createFromAudio != null) {
      return createFromAudio(name, audioId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlaylistFetch value) fetch,
    required TResult Function(PlaylistFetchDetail value) fetchDetail,
    required TResult Function(PlaylistCreate value) create,
    required TResult Function(PlaylistCreateFromAudio value) createFromAudio,
    required TResult Function(PlaylistUpdate value) update,
    required TResult Function(PlaylistDelete value) delete,
    required TResult Function(PlaylistAddAudio value) addAudio,
    required TResult Function(PlaylistRemoveAudio value) removeAudio,
    required TResult Function(PlaylistShare value) share,
    required TResult Function(PlaylistSearch value) search,
  }) {
    return createFromAudio(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlaylistFetch value)? fetch,
    TResult? Function(PlaylistFetchDetail value)? fetchDetail,
    TResult? Function(PlaylistCreate value)? create,
    TResult? Function(PlaylistCreateFromAudio value)? createFromAudio,
    TResult? Function(PlaylistUpdate value)? update,
    TResult? Function(PlaylistDelete value)? delete,
    TResult? Function(PlaylistAddAudio value)? addAudio,
    TResult? Function(PlaylistRemoveAudio value)? removeAudio,
    TResult? Function(PlaylistShare value)? share,
    TResult? Function(PlaylistSearch value)? search,
  }) {
    return createFromAudio?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlaylistFetch value)? fetch,
    TResult Function(PlaylistFetchDetail value)? fetchDetail,
    TResult Function(PlaylistCreate value)? create,
    TResult Function(PlaylistCreateFromAudio value)? createFromAudio,
    TResult Function(PlaylistUpdate value)? update,
    TResult Function(PlaylistDelete value)? delete,
    TResult Function(PlaylistAddAudio value)? addAudio,
    TResult Function(PlaylistRemoveAudio value)? removeAudio,
    TResult Function(PlaylistShare value)? share,
    TResult Function(PlaylistSearch value)? search,
    required TResult orElse(),
  }) {
    if (createFromAudio != null) {
      return createFromAudio(this);
    }
    return orElse();
  }
}

abstract class PlaylistCreateFromAudio implements PlaylistEvent {
  const factory PlaylistCreateFromAudio({
    required final String name,
    required final int audioId,
  }) = _$PlaylistCreateFromAudioImpl;

  String get name;
  int get audioId;

  /// Create a copy of PlaylistEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlaylistCreateFromAudioImplCopyWith<_$PlaylistCreateFromAudioImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlaylistUpdateImplCopyWith<$Res> {
  factory _$$PlaylistUpdateImplCopyWith(
    _$PlaylistUpdateImpl value,
    $Res Function(_$PlaylistUpdateImpl) then,
  ) = __$$PlaylistUpdateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, String? name});
}

/// @nodoc
class __$$PlaylistUpdateImplCopyWithImpl<$Res>
    extends _$PlaylistEventCopyWithImpl<$Res, _$PlaylistUpdateImpl>
    implements _$$PlaylistUpdateImplCopyWith<$Res> {
  __$$PlaylistUpdateImplCopyWithImpl(
    _$PlaylistUpdateImpl _value,
    $Res Function(_$PlaylistUpdateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlaylistEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = freezed}) {
    return _then(
      _$PlaylistUpdateImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: freezed == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$PlaylistUpdateImpl implements PlaylistUpdate {
  const _$PlaylistUpdateImpl({required this.id, this.name});

  @override
  final int id;
  @override
  final String? name;

  @override
  String toString() {
    return 'PlaylistEvent.update(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaylistUpdateImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of PlaylistEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaylistUpdateImplCopyWith<_$PlaylistUpdateImpl> get copyWith =>
      __$$PlaylistUpdateImplCopyWithImpl<_$PlaylistUpdateImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(int id) fetchDetail,
    required TResult Function(String name) create,
    required TResult Function(String name, int audioId) createFromAudio,
    required TResult Function(int id, String? name) update,
    required TResult Function(int id) delete,
    required TResult Function(int playlistId, int audioId) addAudio,
    required TResult Function(int playlistId, int audioId) removeAudio,
    required TResult Function(int id) share,
    required TResult Function(String query) search,
  }) {
    return update(id, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int id)? fetchDetail,
    TResult? Function(String name)? create,
    TResult? Function(String name, int audioId)? createFromAudio,
    TResult? Function(int id, String? name)? update,
    TResult? Function(int id)? delete,
    TResult? Function(int playlistId, int audioId)? addAudio,
    TResult? Function(int playlistId, int audioId)? removeAudio,
    TResult? Function(int id)? share,
    TResult? Function(String query)? search,
  }) {
    return update?.call(id, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int id)? fetchDetail,
    TResult Function(String name)? create,
    TResult Function(String name, int audioId)? createFromAudio,
    TResult Function(int id, String? name)? update,
    TResult Function(int id)? delete,
    TResult Function(int playlistId, int audioId)? addAudio,
    TResult Function(int playlistId, int audioId)? removeAudio,
    TResult Function(int id)? share,
    TResult Function(String query)? search,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(id, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlaylistFetch value) fetch,
    required TResult Function(PlaylistFetchDetail value) fetchDetail,
    required TResult Function(PlaylistCreate value) create,
    required TResult Function(PlaylistCreateFromAudio value) createFromAudio,
    required TResult Function(PlaylistUpdate value) update,
    required TResult Function(PlaylistDelete value) delete,
    required TResult Function(PlaylistAddAudio value) addAudio,
    required TResult Function(PlaylistRemoveAudio value) removeAudio,
    required TResult Function(PlaylistShare value) share,
    required TResult Function(PlaylistSearch value) search,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlaylistFetch value)? fetch,
    TResult? Function(PlaylistFetchDetail value)? fetchDetail,
    TResult? Function(PlaylistCreate value)? create,
    TResult? Function(PlaylistCreateFromAudio value)? createFromAudio,
    TResult? Function(PlaylistUpdate value)? update,
    TResult? Function(PlaylistDelete value)? delete,
    TResult? Function(PlaylistAddAudio value)? addAudio,
    TResult? Function(PlaylistRemoveAudio value)? removeAudio,
    TResult? Function(PlaylistShare value)? share,
    TResult? Function(PlaylistSearch value)? search,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlaylistFetch value)? fetch,
    TResult Function(PlaylistFetchDetail value)? fetchDetail,
    TResult Function(PlaylistCreate value)? create,
    TResult Function(PlaylistCreateFromAudio value)? createFromAudio,
    TResult Function(PlaylistUpdate value)? update,
    TResult Function(PlaylistDelete value)? delete,
    TResult Function(PlaylistAddAudio value)? addAudio,
    TResult Function(PlaylistRemoveAudio value)? removeAudio,
    TResult Function(PlaylistShare value)? share,
    TResult Function(PlaylistSearch value)? search,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class PlaylistUpdate implements PlaylistEvent {
  const factory PlaylistUpdate({required final int id, final String? name}) =
      _$PlaylistUpdateImpl;

  int get id;
  String? get name;

  /// Create a copy of PlaylistEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlaylistUpdateImplCopyWith<_$PlaylistUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlaylistDeleteImplCopyWith<$Res> {
  factory _$$PlaylistDeleteImplCopyWith(
    _$PlaylistDeleteImpl value,
    $Res Function(_$PlaylistDeleteImpl) then,
  ) = __$$PlaylistDeleteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$PlaylistDeleteImplCopyWithImpl<$Res>
    extends _$PlaylistEventCopyWithImpl<$Res, _$PlaylistDeleteImpl>
    implements _$$PlaylistDeleteImplCopyWith<$Res> {
  __$$PlaylistDeleteImplCopyWithImpl(
    _$PlaylistDeleteImpl _value,
    $Res Function(_$PlaylistDeleteImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlaylistEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _$PlaylistDeleteImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$PlaylistDeleteImpl implements PlaylistDelete {
  const _$PlaylistDeleteImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'PlaylistEvent.delete(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaylistDeleteImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of PlaylistEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaylistDeleteImplCopyWith<_$PlaylistDeleteImpl> get copyWith =>
      __$$PlaylistDeleteImplCopyWithImpl<_$PlaylistDeleteImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(int id) fetchDetail,
    required TResult Function(String name) create,
    required TResult Function(String name, int audioId) createFromAudio,
    required TResult Function(int id, String? name) update,
    required TResult Function(int id) delete,
    required TResult Function(int playlistId, int audioId) addAudio,
    required TResult Function(int playlistId, int audioId) removeAudio,
    required TResult Function(int id) share,
    required TResult Function(String query) search,
  }) {
    return delete(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int id)? fetchDetail,
    TResult? Function(String name)? create,
    TResult? Function(String name, int audioId)? createFromAudio,
    TResult? Function(int id, String? name)? update,
    TResult? Function(int id)? delete,
    TResult? Function(int playlistId, int audioId)? addAudio,
    TResult? Function(int playlistId, int audioId)? removeAudio,
    TResult? Function(int id)? share,
    TResult? Function(String query)? search,
  }) {
    return delete?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int id)? fetchDetail,
    TResult Function(String name)? create,
    TResult Function(String name, int audioId)? createFromAudio,
    TResult Function(int id, String? name)? update,
    TResult Function(int id)? delete,
    TResult Function(int playlistId, int audioId)? addAudio,
    TResult Function(int playlistId, int audioId)? removeAudio,
    TResult Function(int id)? share,
    TResult Function(String query)? search,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlaylistFetch value) fetch,
    required TResult Function(PlaylistFetchDetail value) fetchDetail,
    required TResult Function(PlaylistCreate value) create,
    required TResult Function(PlaylistCreateFromAudio value) createFromAudio,
    required TResult Function(PlaylistUpdate value) update,
    required TResult Function(PlaylistDelete value) delete,
    required TResult Function(PlaylistAddAudio value) addAudio,
    required TResult Function(PlaylistRemoveAudio value) removeAudio,
    required TResult Function(PlaylistShare value) share,
    required TResult Function(PlaylistSearch value) search,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlaylistFetch value)? fetch,
    TResult? Function(PlaylistFetchDetail value)? fetchDetail,
    TResult? Function(PlaylistCreate value)? create,
    TResult? Function(PlaylistCreateFromAudio value)? createFromAudio,
    TResult? Function(PlaylistUpdate value)? update,
    TResult? Function(PlaylistDelete value)? delete,
    TResult? Function(PlaylistAddAudio value)? addAudio,
    TResult? Function(PlaylistRemoveAudio value)? removeAudio,
    TResult? Function(PlaylistShare value)? share,
    TResult? Function(PlaylistSearch value)? search,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlaylistFetch value)? fetch,
    TResult Function(PlaylistFetchDetail value)? fetchDetail,
    TResult Function(PlaylistCreate value)? create,
    TResult Function(PlaylistCreateFromAudio value)? createFromAudio,
    TResult Function(PlaylistUpdate value)? update,
    TResult Function(PlaylistDelete value)? delete,
    TResult Function(PlaylistAddAudio value)? addAudio,
    TResult Function(PlaylistRemoveAudio value)? removeAudio,
    TResult Function(PlaylistShare value)? share,
    TResult Function(PlaylistSearch value)? search,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class PlaylistDelete implements PlaylistEvent {
  const factory PlaylistDelete({required final int id}) = _$PlaylistDeleteImpl;

  int get id;

  /// Create a copy of PlaylistEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlaylistDeleteImplCopyWith<_$PlaylistDeleteImpl> get copyWith =>
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
    required TResult Function(String name, int audioId) createFromAudio,
    required TResult Function(int id, String? name) update,
    required TResult Function(int id) delete,
    required TResult Function(int playlistId, int audioId) addAudio,
    required TResult Function(int playlistId, int audioId) removeAudio,
    required TResult Function(int id) share,
    required TResult Function(String query) search,
  }) {
    return addAudio(playlistId, audioId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int id)? fetchDetail,
    TResult? Function(String name)? create,
    TResult? Function(String name, int audioId)? createFromAudio,
    TResult? Function(int id, String? name)? update,
    TResult? Function(int id)? delete,
    TResult? Function(int playlistId, int audioId)? addAudio,
    TResult? Function(int playlistId, int audioId)? removeAudio,
    TResult? Function(int id)? share,
    TResult? Function(String query)? search,
  }) {
    return addAudio?.call(playlistId, audioId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int id)? fetchDetail,
    TResult Function(String name)? create,
    TResult Function(String name, int audioId)? createFromAudio,
    TResult Function(int id, String? name)? update,
    TResult Function(int id)? delete,
    TResult Function(int playlistId, int audioId)? addAudio,
    TResult Function(int playlistId, int audioId)? removeAudio,
    TResult Function(int id)? share,
    TResult Function(String query)? search,
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
    required TResult Function(PlaylistCreateFromAudio value) createFromAudio,
    required TResult Function(PlaylistUpdate value) update,
    required TResult Function(PlaylistDelete value) delete,
    required TResult Function(PlaylistAddAudio value) addAudio,
    required TResult Function(PlaylistRemoveAudio value) removeAudio,
    required TResult Function(PlaylistShare value) share,
    required TResult Function(PlaylistSearch value) search,
  }) {
    return addAudio(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlaylistFetch value)? fetch,
    TResult? Function(PlaylistFetchDetail value)? fetchDetail,
    TResult? Function(PlaylistCreate value)? create,
    TResult? Function(PlaylistCreateFromAudio value)? createFromAudio,
    TResult? Function(PlaylistUpdate value)? update,
    TResult? Function(PlaylistDelete value)? delete,
    TResult? Function(PlaylistAddAudio value)? addAudio,
    TResult? Function(PlaylistRemoveAudio value)? removeAudio,
    TResult? Function(PlaylistShare value)? share,
    TResult? Function(PlaylistSearch value)? search,
  }) {
    return addAudio?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlaylistFetch value)? fetch,
    TResult Function(PlaylistFetchDetail value)? fetchDetail,
    TResult Function(PlaylistCreate value)? create,
    TResult Function(PlaylistCreateFromAudio value)? createFromAudio,
    TResult Function(PlaylistUpdate value)? update,
    TResult Function(PlaylistDelete value)? delete,
    TResult Function(PlaylistAddAudio value)? addAudio,
    TResult Function(PlaylistRemoveAudio value)? removeAudio,
    TResult Function(PlaylistShare value)? share,
    TResult Function(PlaylistSearch value)? search,
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

/// @nodoc
abstract class _$$PlaylistRemoveAudioImplCopyWith<$Res> {
  factory _$$PlaylistRemoveAudioImplCopyWith(
    _$PlaylistRemoveAudioImpl value,
    $Res Function(_$PlaylistRemoveAudioImpl) then,
  ) = __$$PlaylistRemoveAudioImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int playlistId, int audioId});
}

/// @nodoc
class __$$PlaylistRemoveAudioImplCopyWithImpl<$Res>
    extends _$PlaylistEventCopyWithImpl<$Res, _$PlaylistRemoveAudioImpl>
    implements _$$PlaylistRemoveAudioImplCopyWith<$Res> {
  __$$PlaylistRemoveAudioImplCopyWithImpl(
    _$PlaylistRemoveAudioImpl _value,
    $Res Function(_$PlaylistRemoveAudioImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlaylistEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? playlistId = null, Object? audioId = null}) {
    return _then(
      _$PlaylistRemoveAudioImpl(
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

class _$PlaylistRemoveAudioImpl implements PlaylistRemoveAudio {
  const _$PlaylistRemoveAudioImpl({
    required this.playlistId,
    required this.audioId,
  });

  @override
  final int playlistId;
  @override
  final int audioId;

  @override
  String toString() {
    return 'PlaylistEvent.removeAudio(playlistId: $playlistId, audioId: $audioId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaylistRemoveAudioImpl &&
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
  _$$PlaylistRemoveAudioImplCopyWith<_$PlaylistRemoveAudioImpl> get copyWith =>
      __$$PlaylistRemoveAudioImplCopyWithImpl<_$PlaylistRemoveAudioImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(int id) fetchDetail,
    required TResult Function(String name) create,
    required TResult Function(String name, int audioId) createFromAudio,
    required TResult Function(int id, String? name) update,
    required TResult Function(int id) delete,
    required TResult Function(int playlistId, int audioId) addAudio,
    required TResult Function(int playlistId, int audioId) removeAudio,
    required TResult Function(int id) share,
    required TResult Function(String query) search,
  }) {
    return removeAudio(playlistId, audioId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int id)? fetchDetail,
    TResult? Function(String name)? create,
    TResult? Function(String name, int audioId)? createFromAudio,
    TResult? Function(int id, String? name)? update,
    TResult? Function(int id)? delete,
    TResult? Function(int playlistId, int audioId)? addAudio,
    TResult? Function(int playlistId, int audioId)? removeAudio,
    TResult? Function(int id)? share,
    TResult? Function(String query)? search,
  }) {
    return removeAudio?.call(playlistId, audioId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int id)? fetchDetail,
    TResult Function(String name)? create,
    TResult Function(String name, int audioId)? createFromAudio,
    TResult Function(int id, String? name)? update,
    TResult Function(int id)? delete,
    TResult Function(int playlistId, int audioId)? addAudio,
    TResult Function(int playlistId, int audioId)? removeAudio,
    TResult Function(int id)? share,
    TResult Function(String query)? search,
    required TResult orElse(),
  }) {
    if (removeAudio != null) {
      return removeAudio(playlistId, audioId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlaylistFetch value) fetch,
    required TResult Function(PlaylistFetchDetail value) fetchDetail,
    required TResult Function(PlaylistCreate value) create,
    required TResult Function(PlaylistCreateFromAudio value) createFromAudio,
    required TResult Function(PlaylistUpdate value) update,
    required TResult Function(PlaylistDelete value) delete,
    required TResult Function(PlaylistAddAudio value) addAudio,
    required TResult Function(PlaylistRemoveAudio value) removeAudio,
    required TResult Function(PlaylistShare value) share,
    required TResult Function(PlaylistSearch value) search,
  }) {
    return removeAudio(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlaylistFetch value)? fetch,
    TResult? Function(PlaylistFetchDetail value)? fetchDetail,
    TResult? Function(PlaylistCreate value)? create,
    TResult? Function(PlaylistCreateFromAudio value)? createFromAudio,
    TResult? Function(PlaylistUpdate value)? update,
    TResult? Function(PlaylistDelete value)? delete,
    TResult? Function(PlaylistAddAudio value)? addAudio,
    TResult? Function(PlaylistRemoveAudio value)? removeAudio,
    TResult? Function(PlaylistShare value)? share,
    TResult? Function(PlaylistSearch value)? search,
  }) {
    return removeAudio?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlaylistFetch value)? fetch,
    TResult Function(PlaylistFetchDetail value)? fetchDetail,
    TResult Function(PlaylistCreate value)? create,
    TResult Function(PlaylistCreateFromAudio value)? createFromAudio,
    TResult Function(PlaylistUpdate value)? update,
    TResult Function(PlaylistDelete value)? delete,
    TResult Function(PlaylistAddAudio value)? addAudio,
    TResult Function(PlaylistRemoveAudio value)? removeAudio,
    TResult Function(PlaylistShare value)? share,
    TResult Function(PlaylistSearch value)? search,
    required TResult orElse(),
  }) {
    if (removeAudio != null) {
      return removeAudio(this);
    }
    return orElse();
  }
}

abstract class PlaylistRemoveAudio implements PlaylistEvent {
  const factory PlaylistRemoveAudio({
    required final int playlistId,
    required final int audioId,
  }) = _$PlaylistRemoveAudioImpl;

  int get playlistId;
  int get audioId;

  /// Create a copy of PlaylistEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlaylistRemoveAudioImplCopyWith<_$PlaylistRemoveAudioImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlaylistShareImplCopyWith<$Res> {
  factory _$$PlaylistShareImplCopyWith(
    _$PlaylistShareImpl value,
    $Res Function(_$PlaylistShareImpl) then,
  ) = __$$PlaylistShareImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$PlaylistShareImplCopyWithImpl<$Res>
    extends _$PlaylistEventCopyWithImpl<$Res, _$PlaylistShareImpl>
    implements _$$PlaylistShareImplCopyWith<$Res> {
  __$$PlaylistShareImplCopyWithImpl(
    _$PlaylistShareImpl _value,
    $Res Function(_$PlaylistShareImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlaylistEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _$PlaylistShareImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$PlaylistShareImpl implements PlaylistShare {
  const _$PlaylistShareImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'PlaylistEvent.share(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaylistShareImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of PlaylistEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaylistShareImplCopyWith<_$PlaylistShareImpl> get copyWith =>
      __$$PlaylistShareImplCopyWithImpl<_$PlaylistShareImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(int id) fetchDetail,
    required TResult Function(String name) create,
    required TResult Function(String name, int audioId) createFromAudio,
    required TResult Function(int id, String? name) update,
    required TResult Function(int id) delete,
    required TResult Function(int playlistId, int audioId) addAudio,
    required TResult Function(int playlistId, int audioId) removeAudio,
    required TResult Function(int id) share,
    required TResult Function(String query) search,
  }) {
    return share(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int id)? fetchDetail,
    TResult? Function(String name)? create,
    TResult? Function(String name, int audioId)? createFromAudio,
    TResult? Function(int id, String? name)? update,
    TResult? Function(int id)? delete,
    TResult? Function(int playlistId, int audioId)? addAudio,
    TResult? Function(int playlistId, int audioId)? removeAudio,
    TResult? Function(int id)? share,
    TResult? Function(String query)? search,
  }) {
    return share?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int id)? fetchDetail,
    TResult Function(String name)? create,
    TResult Function(String name, int audioId)? createFromAudio,
    TResult Function(int id, String? name)? update,
    TResult Function(int id)? delete,
    TResult Function(int playlistId, int audioId)? addAudio,
    TResult Function(int playlistId, int audioId)? removeAudio,
    TResult Function(int id)? share,
    TResult Function(String query)? search,
    required TResult orElse(),
  }) {
    if (share != null) {
      return share(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlaylistFetch value) fetch,
    required TResult Function(PlaylistFetchDetail value) fetchDetail,
    required TResult Function(PlaylistCreate value) create,
    required TResult Function(PlaylistCreateFromAudio value) createFromAudio,
    required TResult Function(PlaylistUpdate value) update,
    required TResult Function(PlaylistDelete value) delete,
    required TResult Function(PlaylistAddAudio value) addAudio,
    required TResult Function(PlaylistRemoveAudio value) removeAudio,
    required TResult Function(PlaylistShare value) share,
    required TResult Function(PlaylistSearch value) search,
  }) {
    return share(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlaylistFetch value)? fetch,
    TResult? Function(PlaylistFetchDetail value)? fetchDetail,
    TResult? Function(PlaylistCreate value)? create,
    TResult? Function(PlaylistCreateFromAudio value)? createFromAudio,
    TResult? Function(PlaylistUpdate value)? update,
    TResult? Function(PlaylistDelete value)? delete,
    TResult? Function(PlaylistAddAudio value)? addAudio,
    TResult? Function(PlaylistRemoveAudio value)? removeAudio,
    TResult? Function(PlaylistShare value)? share,
    TResult? Function(PlaylistSearch value)? search,
  }) {
    return share?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlaylistFetch value)? fetch,
    TResult Function(PlaylistFetchDetail value)? fetchDetail,
    TResult Function(PlaylistCreate value)? create,
    TResult Function(PlaylistCreateFromAudio value)? createFromAudio,
    TResult Function(PlaylistUpdate value)? update,
    TResult Function(PlaylistDelete value)? delete,
    TResult Function(PlaylistAddAudio value)? addAudio,
    TResult Function(PlaylistRemoveAudio value)? removeAudio,
    TResult Function(PlaylistShare value)? share,
    TResult Function(PlaylistSearch value)? search,
    required TResult orElse(),
  }) {
    if (share != null) {
      return share(this);
    }
    return orElse();
  }
}

abstract class PlaylistShare implements PlaylistEvent {
  const factory PlaylistShare({required final int id}) = _$PlaylistShareImpl;

  int get id;

  /// Create a copy of PlaylistEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlaylistShareImplCopyWith<_$PlaylistShareImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlaylistSearchImplCopyWith<$Res> {
  factory _$$PlaylistSearchImplCopyWith(
    _$PlaylistSearchImpl value,
    $Res Function(_$PlaylistSearchImpl) then,
  ) = __$$PlaylistSearchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$PlaylistSearchImplCopyWithImpl<$Res>
    extends _$PlaylistEventCopyWithImpl<$Res, _$PlaylistSearchImpl>
    implements _$$PlaylistSearchImplCopyWith<$Res> {
  __$$PlaylistSearchImplCopyWithImpl(
    _$PlaylistSearchImpl _value,
    $Res Function(_$PlaylistSearchImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlaylistEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? query = null}) {
    return _then(
      _$PlaylistSearchImpl(
        query: null == query
            ? _value.query
            : query // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$PlaylistSearchImpl implements PlaylistSearch {
  const _$PlaylistSearchImpl({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'PlaylistEvent.search(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaylistSearchImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of PlaylistEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaylistSearchImplCopyWith<_$PlaylistSearchImpl> get copyWith =>
      __$$PlaylistSearchImplCopyWithImpl<_$PlaylistSearchImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(int id) fetchDetail,
    required TResult Function(String name) create,
    required TResult Function(String name, int audioId) createFromAudio,
    required TResult Function(int id, String? name) update,
    required TResult Function(int id) delete,
    required TResult Function(int playlistId, int audioId) addAudio,
    required TResult Function(int playlistId, int audioId) removeAudio,
    required TResult Function(int id) share,
    required TResult Function(String query) search,
  }) {
    return search(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int id)? fetchDetail,
    TResult? Function(String name)? create,
    TResult? Function(String name, int audioId)? createFromAudio,
    TResult? Function(int id, String? name)? update,
    TResult? Function(int id)? delete,
    TResult? Function(int playlistId, int audioId)? addAudio,
    TResult? Function(int playlistId, int audioId)? removeAudio,
    TResult? Function(int id)? share,
    TResult? Function(String query)? search,
  }) {
    return search?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int id)? fetchDetail,
    TResult Function(String name)? create,
    TResult Function(String name, int audioId)? createFromAudio,
    TResult Function(int id, String? name)? update,
    TResult Function(int id)? delete,
    TResult Function(int playlistId, int audioId)? addAudio,
    TResult Function(int playlistId, int audioId)? removeAudio,
    TResult Function(int id)? share,
    TResult Function(String query)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlaylistFetch value) fetch,
    required TResult Function(PlaylistFetchDetail value) fetchDetail,
    required TResult Function(PlaylistCreate value) create,
    required TResult Function(PlaylistCreateFromAudio value) createFromAudio,
    required TResult Function(PlaylistUpdate value) update,
    required TResult Function(PlaylistDelete value) delete,
    required TResult Function(PlaylistAddAudio value) addAudio,
    required TResult Function(PlaylistRemoveAudio value) removeAudio,
    required TResult Function(PlaylistShare value) share,
    required TResult Function(PlaylistSearch value) search,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlaylistFetch value)? fetch,
    TResult? Function(PlaylistFetchDetail value)? fetchDetail,
    TResult? Function(PlaylistCreate value)? create,
    TResult? Function(PlaylistCreateFromAudio value)? createFromAudio,
    TResult? Function(PlaylistUpdate value)? update,
    TResult? Function(PlaylistDelete value)? delete,
    TResult? Function(PlaylistAddAudio value)? addAudio,
    TResult? Function(PlaylistRemoveAudio value)? removeAudio,
    TResult? Function(PlaylistShare value)? share,
    TResult? Function(PlaylistSearch value)? search,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlaylistFetch value)? fetch,
    TResult Function(PlaylistFetchDetail value)? fetchDetail,
    TResult Function(PlaylistCreate value)? create,
    TResult Function(PlaylistCreateFromAudio value)? createFromAudio,
    TResult Function(PlaylistUpdate value)? update,
    TResult Function(PlaylistDelete value)? delete,
    TResult Function(PlaylistAddAudio value)? addAudio,
    TResult Function(PlaylistRemoveAudio value)? removeAudio,
    TResult Function(PlaylistShare value)? share,
    TResult Function(PlaylistSearch value)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class PlaylistSearch implements PlaylistEvent {
  const factory PlaylistSearch({required final String query}) =
      _$PlaylistSearchImpl;

  String get query;

  /// Create a copy of PlaylistEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlaylistSearchImplCopyWith<_$PlaylistSearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
