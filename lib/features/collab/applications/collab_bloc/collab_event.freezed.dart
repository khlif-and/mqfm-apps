// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collab_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$CollabEvent {
  int get playlistId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int playlistId) fetchCollaborators,
    required TResult Function(int playlistId, int userId) addCollaborator,
    required TResult Function(int playlistId, int userId) removeCollaborator,
    required TResult Function(int playlistId, int audioId) contributeAudio,
    required TResult Function(int playlistId) join,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int playlistId)? fetchCollaborators,
    TResult? Function(int playlistId, int userId)? addCollaborator,
    TResult? Function(int playlistId, int userId)? removeCollaborator,
    TResult? Function(int playlistId, int audioId)? contributeAudio,
    TResult? Function(int playlistId)? join,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int playlistId)? fetchCollaborators,
    TResult Function(int playlistId, int userId)? addCollaborator,
    TResult Function(int playlistId, int userId)? removeCollaborator,
    TResult Function(int playlistId, int audioId)? contributeAudio,
    TResult Function(int playlistId)? join,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CollabFetchCollaborators value)
    fetchCollaborators,
    required TResult Function(CollabAddCollaborator value) addCollaborator,
    required TResult Function(CollabRemoveCollaborator value)
    removeCollaborator,
    required TResult Function(CollabContributeAudio value) contributeAudio,
    required TResult Function(CollabJoin value) join,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CollabFetchCollaborators value)? fetchCollaborators,
    TResult? Function(CollabAddCollaborator value)? addCollaborator,
    TResult? Function(CollabRemoveCollaborator value)? removeCollaborator,
    TResult? Function(CollabContributeAudio value)? contributeAudio,
    TResult? Function(CollabJoin value)? join,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CollabFetchCollaborators value)? fetchCollaborators,
    TResult Function(CollabAddCollaborator value)? addCollaborator,
    TResult Function(CollabRemoveCollaborator value)? removeCollaborator,
    TResult Function(CollabContributeAudio value)? contributeAudio,
    TResult Function(CollabJoin value)? join,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of CollabEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CollabEventCopyWith<CollabEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollabEventCopyWith<$Res> {
  factory $CollabEventCopyWith(
    CollabEvent value,
    $Res Function(CollabEvent) then,
  ) = _$CollabEventCopyWithImpl<$Res, CollabEvent>;
  @useResult
  $Res call({int playlistId});
}

/// @nodoc
class _$CollabEventCopyWithImpl<$Res, $Val extends CollabEvent>
    implements $CollabEventCopyWith<$Res> {
  _$CollabEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CollabEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? playlistId = null}) {
    return _then(
      _value.copyWith(
            playlistId: null == playlistId
                ? _value.playlistId
                : playlistId // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CollabFetchCollaboratorsImplCopyWith<$Res>
    implements $CollabEventCopyWith<$Res> {
  factory _$$CollabFetchCollaboratorsImplCopyWith(
    _$CollabFetchCollaboratorsImpl value,
    $Res Function(_$CollabFetchCollaboratorsImpl) then,
  ) = __$$CollabFetchCollaboratorsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int playlistId});
}

/// @nodoc
class __$$CollabFetchCollaboratorsImplCopyWithImpl<$Res>
    extends _$CollabEventCopyWithImpl<$Res, _$CollabFetchCollaboratorsImpl>
    implements _$$CollabFetchCollaboratorsImplCopyWith<$Res> {
  __$$CollabFetchCollaboratorsImplCopyWithImpl(
    _$CollabFetchCollaboratorsImpl _value,
    $Res Function(_$CollabFetchCollaboratorsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CollabEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? playlistId = null}) {
    return _then(
      _$CollabFetchCollaboratorsImpl(
        playlistId: null == playlistId
            ? _value.playlistId
            : playlistId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$CollabFetchCollaboratorsImpl implements CollabFetchCollaborators {
  const _$CollabFetchCollaboratorsImpl({required this.playlistId});

  @override
  final int playlistId;

  @override
  String toString() {
    return 'CollabEvent.fetchCollaborators(playlistId: $playlistId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollabFetchCollaboratorsImpl &&
            (identical(other.playlistId, playlistId) ||
                other.playlistId == playlistId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, playlistId);

  /// Create a copy of CollabEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CollabFetchCollaboratorsImplCopyWith<_$CollabFetchCollaboratorsImpl>
  get copyWith =>
      __$$CollabFetchCollaboratorsImplCopyWithImpl<
        _$CollabFetchCollaboratorsImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int playlistId) fetchCollaborators,
    required TResult Function(int playlistId, int userId) addCollaborator,
    required TResult Function(int playlistId, int userId) removeCollaborator,
    required TResult Function(int playlistId, int audioId) contributeAudio,
    required TResult Function(int playlistId) join,
  }) {
    return fetchCollaborators(playlistId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int playlistId)? fetchCollaborators,
    TResult? Function(int playlistId, int userId)? addCollaborator,
    TResult? Function(int playlistId, int userId)? removeCollaborator,
    TResult? Function(int playlistId, int audioId)? contributeAudio,
    TResult? Function(int playlistId)? join,
  }) {
    return fetchCollaborators?.call(playlistId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int playlistId)? fetchCollaborators,
    TResult Function(int playlistId, int userId)? addCollaborator,
    TResult Function(int playlistId, int userId)? removeCollaborator,
    TResult Function(int playlistId, int audioId)? contributeAudio,
    TResult Function(int playlistId)? join,
    required TResult orElse(),
  }) {
    if (fetchCollaborators != null) {
      return fetchCollaborators(playlistId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CollabFetchCollaborators value)
    fetchCollaborators,
    required TResult Function(CollabAddCollaborator value) addCollaborator,
    required TResult Function(CollabRemoveCollaborator value)
    removeCollaborator,
    required TResult Function(CollabContributeAudio value) contributeAudio,
    required TResult Function(CollabJoin value) join,
  }) {
    return fetchCollaborators(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CollabFetchCollaborators value)? fetchCollaborators,
    TResult? Function(CollabAddCollaborator value)? addCollaborator,
    TResult? Function(CollabRemoveCollaborator value)? removeCollaborator,
    TResult? Function(CollabContributeAudio value)? contributeAudio,
    TResult? Function(CollabJoin value)? join,
  }) {
    return fetchCollaborators?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CollabFetchCollaborators value)? fetchCollaborators,
    TResult Function(CollabAddCollaborator value)? addCollaborator,
    TResult Function(CollabRemoveCollaborator value)? removeCollaborator,
    TResult Function(CollabContributeAudio value)? contributeAudio,
    TResult Function(CollabJoin value)? join,
    required TResult orElse(),
  }) {
    if (fetchCollaborators != null) {
      return fetchCollaborators(this);
    }
    return orElse();
  }
}

abstract class CollabFetchCollaborators implements CollabEvent {
  const factory CollabFetchCollaborators({required final int playlistId}) =
      _$CollabFetchCollaboratorsImpl;

  @override
  int get playlistId;

  /// Create a copy of CollabEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CollabFetchCollaboratorsImplCopyWith<_$CollabFetchCollaboratorsImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CollabAddCollaboratorImplCopyWith<$Res>
    implements $CollabEventCopyWith<$Res> {
  factory _$$CollabAddCollaboratorImplCopyWith(
    _$CollabAddCollaboratorImpl value,
    $Res Function(_$CollabAddCollaboratorImpl) then,
  ) = __$$CollabAddCollaboratorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int playlistId, int userId});
}

/// @nodoc
class __$$CollabAddCollaboratorImplCopyWithImpl<$Res>
    extends _$CollabEventCopyWithImpl<$Res, _$CollabAddCollaboratorImpl>
    implements _$$CollabAddCollaboratorImplCopyWith<$Res> {
  __$$CollabAddCollaboratorImplCopyWithImpl(
    _$CollabAddCollaboratorImpl _value,
    $Res Function(_$CollabAddCollaboratorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CollabEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? playlistId = null, Object? userId = null}) {
    return _then(
      _$CollabAddCollaboratorImpl(
        playlistId: null == playlistId
            ? _value.playlistId
            : playlistId // ignore: cast_nullable_to_non_nullable
                  as int,
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$CollabAddCollaboratorImpl implements CollabAddCollaborator {
  const _$CollabAddCollaboratorImpl({
    required this.playlistId,
    required this.userId,
  });

  @override
  final int playlistId;
  @override
  final int userId;

  @override
  String toString() {
    return 'CollabEvent.addCollaborator(playlistId: $playlistId, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollabAddCollaboratorImpl &&
            (identical(other.playlistId, playlistId) ||
                other.playlistId == playlistId) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, playlistId, userId);

  /// Create a copy of CollabEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CollabAddCollaboratorImplCopyWith<_$CollabAddCollaboratorImpl>
  get copyWith =>
      __$$CollabAddCollaboratorImplCopyWithImpl<_$CollabAddCollaboratorImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int playlistId) fetchCollaborators,
    required TResult Function(int playlistId, int userId) addCollaborator,
    required TResult Function(int playlistId, int userId) removeCollaborator,
    required TResult Function(int playlistId, int audioId) contributeAudio,
    required TResult Function(int playlistId) join,
  }) {
    return addCollaborator(playlistId, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int playlistId)? fetchCollaborators,
    TResult? Function(int playlistId, int userId)? addCollaborator,
    TResult? Function(int playlistId, int userId)? removeCollaborator,
    TResult? Function(int playlistId, int audioId)? contributeAudio,
    TResult? Function(int playlistId)? join,
  }) {
    return addCollaborator?.call(playlistId, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int playlistId)? fetchCollaborators,
    TResult Function(int playlistId, int userId)? addCollaborator,
    TResult Function(int playlistId, int userId)? removeCollaborator,
    TResult Function(int playlistId, int audioId)? contributeAudio,
    TResult Function(int playlistId)? join,
    required TResult orElse(),
  }) {
    if (addCollaborator != null) {
      return addCollaborator(playlistId, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CollabFetchCollaborators value)
    fetchCollaborators,
    required TResult Function(CollabAddCollaborator value) addCollaborator,
    required TResult Function(CollabRemoveCollaborator value)
    removeCollaborator,
    required TResult Function(CollabContributeAudio value) contributeAudio,
    required TResult Function(CollabJoin value) join,
  }) {
    return addCollaborator(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CollabFetchCollaborators value)? fetchCollaborators,
    TResult? Function(CollabAddCollaborator value)? addCollaborator,
    TResult? Function(CollabRemoveCollaborator value)? removeCollaborator,
    TResult? Function(CollabContributeAudio value)? contributeAudio,
    TResult? Function(CollabJoin value)? join,
  }) {
    return addCollaborator?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CollabFetchCollaborators value)? fetchCollaborators,
    TResult Function(CollabAddCollaborator value)? addCollaborator,
    TResult Function(CollabRemoveCollaborator value)? removeCollaborator,
    TResult Function(CollabContributeAudio value)? contributeAudio,
    TResult Function(CollabJoin value)? join,
    required TResult orElse(),
  }) {
    if (addCollaborator != null) {
      return addCollaborator(this);
    }
    return orElse();
  }
}

abstract class CollabAddCollaborator implements CollabEvent {
  const factory CollabAddCollaborator({
    required final int playlistId,
    required final int userId,
  }) = _$CollabAddCollaboratorImpl;

  @override
  int get playlistId;
  int get userId;

  /// Create a copy of CollabEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CollabAddCollaboratorImplCopyWith<_$CollabAddCollaboratorImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CollabRemoveCollaboratorImplCopyWith<$Res>
    implements $CollabEventCopyWith<$Res> {
  factory _$$CollabRemoveCollaboratorImplCopyWith(
    _$CollabRemoveCollaboratorImpl value,
    $Res Function(_$CollabRemoveCollaboratorImpl) then,
  ) = __$$CollabRemoveCollaboratorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int playlistId, int userId});
}

/// @nodoc
class __$$CollabRemoveCollaboratorImplCopyWithImpl<$Res>
    extends _$CollabEventCopyWithImpl<$Res, _$CollabRemoveCollaboratorImpl>
    implements _$$CollabRemoveCollaboratorImplCopyWith<$Res> {
  __$$CollabRemoveCollaboratorImplCopyWithImpl(
    _$CollabRemoveCollaboratorImpl _value,
    $Res Function(_$CollabRemoveCollaboratorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CollabEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? playlistId = null, Object? userId = null}) {
    return _then(
      _$CollabRemoveCollaboratorImpl(
        playlistId: null == playlistId
            ? _value.playlistId
            : playlistId // ignore: cast_nullable_to_non_nullable
                  as int,
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$CollabRemoveCollaboratorImpl implements CollabRemoveCollaborator {
  const _$CollabRemoveCollaboratorImpl({
    required this.playlistId,
    required this.userId,
  });

  @override
  final int playlistId;
  @override
  final int userId;

  @override
  String toString() {
    return 'CollabEvent.removeCollaborator(playlistId: $playlistId, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollabRemoveCollaboratorImpl &&
            (identical(other.playlistId, playlistId) ||
                other.playlistId == playlistId) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, playlistId, userId);

  /// Create a copy of CollabEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CollabRemoveCollaboratorImplCopyWith<_$CollabRemoveCollaboratorImpl>
  get copyWith =>
      __$$CollabRemoveCollaboratorImplCopyWithImpl<
        _$CollabRemoveCollaboratorImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int playlistId) fetchCollaborators,
    required TResult Function(int playlistId, int userId) addCollaborator,
    required TResult Function(int playlistId, int userId) removeCollaborator,
    required TResult Function(int playlistId, int audioId) contributeAudio,
    required TResult Function(int playlistId) join,
  }) {
    return removeCollaborator(playlistId, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int playlistId)? fetchCollaborators,
    TResult? Function(int playlistId, int userId)? addCollaborator,
    TResult? Function(int playlistId, int userId)? removeCollaborator,
    TResult? Function(int playlistId, int audioId)? contributeAudio,
    TResult? Function(int playlistId)? join,
  }) {
    return removeCollaborator?.call(playlistId, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int playlistId)? fetchCollaborators,
    TResult Function(int playlistId, int userId)? addCollaborator,
    TResult Function(int playlistId, int userId)? removeCollaborator,
    TResult Function(int playlistId, int audioId)? contributeAudio,
    TResult Function(int playlistId)? join,
    required TResult orElse(),
  }) {
    if (removeCollaborator != null) {
      return removeCollaborator(playlistId, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CollabFetchCollaborators value)
    fetchCollaborators,
    required TResult Function(CollabAddCollaborator value) addCollaborator,
    required TResult Function(CollabRemoveCollaborator value)
    removeCollaborator,
    required TResult Function(CollabContributeAudio value) contributeAudio,
    required TResult Function(CollabJoin value) join,
  }) {
    return removeCollaborator(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CollabFetchCollaborators value)? fetchCollaborators,
    TResult? Function(CollabAddCollaborator value)? addCollaborator,
    TResult? Function(CollabRemoveCollaborator value)? removeCollaborator,
    TResult? Function(CollabContributeAudio value)? contributeAudio,
    TResult? Function(CollabJoin value)? join,
  }) {
    return removeCollaborator?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CollabFetchCollaborators value)? fetchCollaborators,
    TResult Function(CollabAddCollaborator value)? addCollaborator,
    TResult Function(CollabRemoveCollaborator value)? removeCollaborator,
    TResult Function(CollabContributeAudio value)? contributeAudio,
    TResult Function(CollabJoin value)? join,
    required TResult orElse(),
  }) {
    if (removeCollaborator != null) {
      return removeCollaborator(this);
    }
    return orElse();
  }
}

abstract class CollabRemoveCollaborator implements CollabEvent {
  const factory CollabRemoveCollaborator({
    required final int playlistId,
    required final int userId,
  }) = _$CollabRemoveCollaboratorImpl;

  @override
  int get playlistId;
  int get userId;

  /// Create a copy of CollabEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CollabRemoveCollaboratorImplCopyWith<_$CollabRemoveCollaboratorImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CollabContributeAudioImplCopyWith<$Res>
    implements $CollabEventCopyWith<$Res> {
  factory _$$CollabContributeAudioImplCopyWith(
    _$CollabContributeAudioImpl value,
    $Res Function(_$CollabContributeAudioImpl) then,
  ) = __$$CollabContributeAudioImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int playlistId, int audioId});
}

/// @nodoc
class __$$CollabContributeAudioImplCopyWithImpl<$Res>
    extends _$CollabEventCopyWithImpl<$Res, _$CollabContributeAudioImpl>
    implements _$$CollabContributeAudioImplCopyWith<$Res> {
  __$$CollabContributeAudioImplCopyWithImpl(
    _$CollabContributeAudioImpl _value,
    $Res Function(_$CollabContributeAudioImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CollabEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? playlistId = null, Object? audioId = null}) {
    return _then(
      _$CollabContributeAudioImpl(
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

class _$CollabContributeAudioImpl implements CollabContributeAudio {
  const _$CollabContributeAudioImpl({
    required this.playlistId,
    required this.audioId,
  });

  @override
  final int playlistId;
  @override
  final int audioId;

  @override
  String toString() {
    return 'CollabEvent.contributeAudio(playlistId: $playlistId, audioId: $audioId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollabContributeAudioImpl &&
            (identical(other.playlistId, playlistId) ||
                other.playlistId == playlistId) &&
            (identical(other.audioId, audioId) || other.audioId == audioId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, playlistId, audioId);

  /// Create a copy of CollabEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CollabContributeAudioImplCopyWith<_$CollabContributeAudioImpl>
  get copyWith =>
      __$$CollabContributeAudioImplCopyWithImpl<_$CollabContributeAudioImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int playlistId) fetchCollaborators,
    required TResult Function(int playlistId, int userId) addCollaborator,
    required TResult Function(int playlistId, int userId) removeCollaborator,
    required TResult Function(int playlistId, int audioId) contributeAudio,
    required TResult Function(int playlistId) join,
  }) {
    return contributeAudio(playlistId, audioId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int playlistId)? fetchCollaborators,
    TResult? Function(int playlistId, int userId)? addCollaborator,
    TResult? Function(int playlistId, int userId)? removeCollaborator,
    TResult? Function(int playlistId, int audioId)? contributeAudio,
    TResult? Function(int playlistId)? join,
  }) {
    return contributeAudio?.call(playlistId, audioId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int playlistId)? fetchCollaborators,
    TResult Function(int playlistId, int userId)? addCollaborator,
    TResult Function(int playlistId, int userId)? removeCollaborator,
    TResult Function(int playlistId, int audioId)? contributeAudio,
    TResult Function(int playlistId)? join,
    required TResult orElse(),
  }) {
    if (contributeAudio != null) {
      return contributeAudio(playlistId, audioId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CollabFetchCollaborators value)
    fetchCollaborators,
    required TResult Function(CollabAddCollaborator value) addCollaborator,
    required TResult Function(CollabRemoveCollaborator value)
    removeCollaborator,
    required TResult Function(CollabContributeAudio value) contributeAudio,
    required TResult Function(CollabJoin value) join,
  }) {
    return contributeAudio(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CollabFetchCollaborators value)? fetchCollaborators,
    TResult? Function(CollabAddCollaborator value)? addCollaborator,
    TResult? Function(CollabRemoveCollaborator value)? removeCollaborator,
    TResult? Function(CollabContributeAudio value)? contributeAudio,
    TResult? Function(CollabJoin value)? join,
  }) {
    return contributeAudio?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CollabFetchCollaborators value)? fetchCollaborators,
    TResult Function(CollabAddCollaborator value)? addCollaborator,
    TResult Function(CollabRemoveCollaborator value)? removeCollaborator,
    TResult Function(CollabContributeAudio value)? contributeAudio,
    TResult Function(CollabJoin value)? join,
    required TResult orElse(),
  }) {
    if (contributeAudio != null) {
      return contributeAudio(this);
    }
    return orElse();
  }
}

abstract class CollabContributeAudio implements CollabEvent {
  const factory CollabContributeAudio({
    required final int playlistId,
    required final int audioId,
  }) = _$CollabContributeAudioImpl;

  @override
  int get playlistId;
  int get audioId;

  /// Create a copy of CollabEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CollabContributeAudioImplCopyWith<_$CollabContributeAudioImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CollabJoinImplCopyWith<$Res>
    implements $CollabEventCopyWith<$Res> {
  factory _$$CollabJoinImplCopyWith(
    _$CollabJoinImpl value,
    $Res Function(_$CollabJoinImpl) then,
  ) = __$$CollabJoinImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int playlistId});
}

/// @nodoc
class __$$CollabJoinImplCopyWithImpl<$Res>
    extends _$CollabEventCopyWithImpl<$Res, _$CollabJoinImpl>
    implements _$$CollabJoinImplCopyWith<$Res> {
  __$$CollabJoinImplCopyWithImpl(
    _$CollabJoinImpl _value,
    $Res Function(_$CollabJoinImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CollabEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? playlistId = null}) {
    return _then(
      _$CollabJoinImpl(
        playlistId: null == playlistId
            ? _value.playlistId
            : playlistId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$CollabJoinImpl implements CollabJoin {
  const _$CollabJoinImpl({required this.playlistId});

  @override
  final int playlistId;

  @override
  String toString() {
    return 'CollabEvent.join(playlistId: $playlistId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollabJoinImpl &&
            (identical(other.playlistId, playlistId) ||
                other.playlistId == playlistId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, playlistId);

  /// Create a copy of CollabEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CollabJoinImplCopyWith<_$CollabJoinImpl> get copyWith =>
      __$$CollabJoinImplCopyWithImpl<_$CollabJoinImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int playlistId) fetchCollaborators,
    required TResult Function(int playlistId, int userId) addCollaborator,
    required TResult Function(int playlistId, int userId) removeCollaborator,
    required TResult Function(int playlistId, int audioId) contributeAudio,
    required TResult Function(int playlistId) join,
  }) {
    return join(playlistId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int playlistId)? fetchCollaborators,
    TResult? Function(int playlistId, int userId)? addCollaborator,
    TResult? Function(int playlistId, int userId)? removeCollaborator,
    TResult? Function(int playlistId, int audioId)? contributeAudio,
    TResult? Function(int playlistId)? join,
  }) {
    return join?.call(playlistId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int playlistId)? fetchCollaborators,
    TResult Function(int playlistId, int userId)? addCollaborator,
    TResult Function(int playlistId, int userId)? removeCollaborator,
    TResult Function(int playlistId, int audioId)? contributeAudio,
    TResult Function(int playlistId)? join,
    required TResult orElse(),
  }) {
    if (join != null) {
      return join(playlistId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CollabFetchCollaborators value)
    fetchCollaborators,
    required TResult Function(CollabAddCollaborator value) addCollaborator,
    required TResult Function(CollabRemoveCollaborator value)
    removeCollaborator,
    required TResult Function(CollabContributeAudio value) contributeAudio,
    required TResult Function(CollabJoin value) join,
  }) {
    return join(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CollabFetchCollaborators value)? fetchCollaborators,
    TResult? Function(CollabAddCollaborator value)? addCollaborator,
    TResult? Function(CollabRemoveCollaborator value)? removeCollaborator,
    TResult? Function(CollabContributeAudio value)? contributeAudio,
    TResult? Function(CollabJoin value)? join,
  }) {
    return join?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CollabFetchCollaborators value)? fetchCollaborators,
    TResult Function(CollabAddCollaborator value)? addCollaborator,
    TResult Function(CollabRemoveCollaborator value)? removeCollaborator,
    TResult Function(CollabContributeAudio value)? contributeAudio,
    TResult Function(CollabJoin value)? join,
    required TResult orElse(),
  }) {
    if (join != null) {
      return join(this);
    }
    return orElse();
  }
}

abstract class CollabJoin implements CollabEvent {
  const factory CollabJoin({required final int playlistId}) = _$CollabJoinImpl;

  @override
  int get playlistId;

  /// Create a copy of CollabEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CollabJoinImplCopyWith<_$CollabJoinImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
