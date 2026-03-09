// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bookmark_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$BookmarkEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(int audioId) fetchByAudio,
    required TResult Function(int audioId, int positionSeconds, String label)
    create,
    required TResult Function(int id) delete,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int audioId)? fetchByAudio,
    TResult? Function(int audioId, int positionSeconds, String label)? create,
    TResult? Function(int id)? delete,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int audioId)? fetchByAudio,
    TResult Function(int audioId, int positionSeconds, String label)? create,
    TResult Function(int id)? delete,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookmarkFetch value) fetch,
    required TResult Function(BookmarkFetchByAudio value) fetchByAudio,
    required TResult Function(BookmarkCreate value) create,
    required TResult Function(BookmarkDelete value) delete,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookmarkFetch value)? fetch,
    TResult? Function(BookmarkFetchByAudio value)? fetchByAudio,
    TResult? Function(BookmarkCreate value)? create,
    TResult? Function(BookmarkDelete value)? delete,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookmarkFetch value)? fetch,
    TResult Function(BookmarkFetchByAudio value)? fetchByAudio,
    TResult Function(BookmarkCreate value)? create,
    TResult Function(BookmarkDelete value)? delete,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarkEventCopyWith<$Res> {
  factory $BookmarkEventCopyWith(
    BookmarkEvent value,
    $Res Function(BookmarkEvent) then,
  ) = _$BookmarkEventCopyWithImpl<$Res, BookmarkEvent>;
}

/// @nodoc
class _$BookmarkEventCopyWithImpl<$Res, $Val extends BookmarkEvent>
    implements $BookmarkEventCopyWith<$Res> {
  _$BookmarkEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookmarkEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$BookmarkFetchImplCopyWith<$Res> {
  factory _$$BookmarkFetchImplCopyWith(
    _$BookmarkFetchImpl value,
    $Res Function(_$BookmarkFetchImpl) then,
  ) = __$$BookmarkFetchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BookmarkFetchImplCopyWithImpl<$Res>
    extends _$BookmarkEventCopyWithImpl<$Res, _$BookmarkFetchImpl>
    implements _$$BookmarkFetchImplCopyWith<$Res> {
  __$$BookmarkFetchImplCopyWithImpl(
    _$BookmarkFetchImpl _value,
    $Res Function(_$BookmarkFetchImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BookmarkEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$BookmarkFetchImpl implements BookmarkFetch {
  const _$BookmarkFetchImpl();

  @override
  String toString() {
    return 'BookmarkEvent.fetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BookmarkFetchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(int audioId) fetchByAudio,
    required TResult Function(int audioId, int positionSeconds, String label)
    create,
    required TResult Function(int id) delete,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int audioId)? fetchByAudio,
    TResult? Function(int audioId, int positionSeconds, String label)? create,
    TResult? Function(int id)? delete,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int audioId)? fetchByAudio,
    TResult Function(int audioId, int positionSeconds, String label)? create,
    TResult Function(int id)? delete,
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
    required TResult Function(BookmarkFetch value) fetch,
    required TResult Function(BookmarkFetchByAudio value) fetchByAudio,
    required TResult Function(BookmarkCreate value) create,
    required TResult Function(BookmarkDelete value) delete,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookmarkFetch value)? fetch,
    TResult? Function(BookmarkFetchByAudio value)? fetchByAudio,
    TResult? Function(BookmarkCreate value)? create,
    TResult? Function(BookmarkDelete value)? delete,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookmarkFetch value)? fetch,
    TResult Function(BookmarkFetchByAudio value)? fetchByAudio,
    TResult Function(BookmarkCreate value)? create,
    TResult Function(BookmarkDelete value)? delete,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class BookmarkFetch implements BookmarkEvent {
  const factory BookmarkFetch() = _$BookmarkFetchImpl;
}

/// @nodoc
abstract class _$$BookmarkFetchByAudioImplCopyWith<$Res> {
  factory _$$BookmarkFetchByAudioImplCopyWith(
    _$BookmarkFetchByAudioImpl value,
    $Res Function(_$BookmarkFetchByAudioImpl) then,
  ) = __$$BookmarkFetchByAudioImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int audioId});
}

/// @nodoc
class __$$BookmarkFetchByAudioImplCopyWithImpl<$Res>
    extends _$BookmarkEventCopyWithImpl<$Res, _$BookmarkFetchByAudioImpl>
    implements _$$BookmarkFetchByAudioImplCopyWith<$Res> {
  __$$BookmarkFetchByAudioImplCopyWithImpl(
    _$BookmarkFetchByAudioImpl _value,
    $Res Function(_$BookmarkFetchByAudioImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BookmarkEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? audioId = null}) {
    return _then(
      _$BookmarkFetchByAudioImpl(
        audioId: null == audioId
            ? _value.audioId
            : audioId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$BookmarkFetchByAudioImpl implements BookmarkFetchByAudio {
  const _$BookmarkFetchByAudioImpl({required this.audioId});

  @override
  final int audioId;

  @override
  String toString() {
    return 'BookmarkEvent.fetchByAudio(audioId: $audioId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookmarkFetchByAudioImpl &&
            (identical(other.audioId, audioId) || other.audioId == audioId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, audioId);

  /// Create a copy of BookmarkEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookmarkFetchByAudioImplCopyWith<_$BookmarkFetchByAudioImpl>
  get copyWith =>
      __$$BookmarkFetchByAudioImplCopyWithImpl<_$BookmarkFetchByAudioImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(int audioId) fetchByAudio,
    required TResult Function(int audioId, int positionSeconds, String label)
    create,
    required TResult Function(int id) delete,
  }) {
    return fetchByAudio(audioId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int audioId)? fetchByAudio,
    TResult? Function(int audioId, int positionSeconds, String label)? create,
    TResult? Function(int id)? delete,
  }) {
    return fetchByAudio?.call(audioId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int audioId)? fetchByAudio,
    TResult Function(int audioId, int positionSeconds, String label)? create,
    TResult Function(int id)? delete,
    required TResult orElse(),
  }) {
    if (fetchByAudio != null) {
      return fetchByAudio(audioId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookmarkFetch value) fetch,
    required TResult Function(BookmarkFetchByAudio value) fetchByAudio,
    required TResult Function(BookmarkCreate value) create,
    required TResult Function(BookmarkDelete value) delete,
  }) {
    return fetchByAudio(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookmarkFetch value)? fetch,
    TResult? Function(BookmarkFetchByAudio value)? fetchByAudio,
    TResult? Function(BookmarkCreate value)? create,
    TResult? Function(BookmarkDelete value)? delete,
  }) {
    return fetchByAudio?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookmarkFetch value)? fetch,
    TResult Function(BookmarkFetchByAudio value)? fetchByAudio,
    TResult Function(BookmarkCreate value)? create,
    TResult Function(BookmarkDelete value)? delete,
    required TResult orElse(),
  }) {
    if (fetchByAudio != null) {
      return fetchByAudio(this);
    }
    return orElse();
  }
}

abstract class BookmarkFetchByAudio implements BookmarkEvent {
  const factory BookmarkFetchByAudio({required final int audioId}) =
      _$BookmarkFetchByAudioImpl;

  int get audioId;

  /// Create a copy of BookmarkEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookmarkFetchByAudioImplCopyWith<_$BookmarkFetchByAudioImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookmarkCreateImplCopyWith<$Res> {
  factory _$$BookmarkCreateImplCopyWith(
    _$BookmarkCreateImpl value,
    $Res Function(_$BookmarkCreateImpl) then,
  ) = __$$BookmarkCreateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int audioId, int positionSeconds, String label});
}

/// @nodoc
class __$$BookmarkCreateImplCopyWithImpl<$Res>
    extends _$BookmarkEventCopyWithImpl<$Res, _$BookmarkCreateImpl>
    implements _$$BookmarkCreateImplCopyWith<$Res> {
  __$$BookmarkCreateImplCopyWithImpl(
    _$BookmarkCreateImpl _value,
    $Res Function(_$BookmarkCreateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BookmarkEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audioId = null,
    Object? positionSeconds = null,
    Object? label = null,
  }) {
    return _then(
      _$BookmarkCreateImpl(
        audioId: null == audioId
            ? _value.audioId
            : audioId // ignore: cast_nullable_to_non_nullable
                  as int,
        positionSeconds: null == positionSeconds
            ? _value.positionSeconds
            : positionSeconds // ignore: cast_nullable_to_non_nullable
                  as int,
        label: null == label
            ? _value.label
            : label // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$BookmarkCreateImpl implements BookmarkCreate {
  const _$BookmarkCreateImpl({
    required this.audioId,
    required this.positionSeconds,
    required this.label,
  });

  @override
  final int audioId;
  @override
  final int positionSeconds;
  @override
  final String label;

  @override
  String toString() {
    return 'BookmarkEvent.create(audioId: $audioId, positionSeconds: $positionSeconds, label: $label)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookmarkCreateImpl &&
            (identical(other.audioId, audioId) || other.audioId == audioId) &&
            (identical(other.positionSeconds, positionSeconds) ||
                other.positionSeconds == positionSeconds) &&
            (identical(other.label, label) || other.label == label));
  }

  @override
  int get hashCode => Object.hash(runtimeType, audioId, positionSeconds, label);

  /// Create a copy of BookmarkEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookmarkCreateImplCopyWith<_$BookmarkCreateImpl> get copyWith =>
      __$$BookmarkCreateImplCopyWithImpl<_$BookmarkCreateImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(int audioId) fetchByAudio,
    required TResult Function(int audioId, int positionSeconds, String label)
    create,
    required TResult Function(int id) delete,
  }) {
    return create(audioId, positionSeconds, label);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int audioId)? fetchByAudio,
    TResult? Function(int audioId, int positionSeconds, String label)? create,
    TResult? Function(int id)? delete,
  }) {
    return create?.call(audioId, positionSeconds, label);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int audioId)? fetchByAudio,
    TResult Function(int audioId, int positionSeconds, String label)? create,
    TResult Function(int id)? delete,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(audioId, positionSeconds, label);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookmarkFetch value) fetch,
    required TResult Function(BookmarkFetchByAudio value) fetchByAudio,
    required TResult Function(BookmarkCreate value) create,
    required TResult Function(BookmarkDelete value) delete,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookmarkFetch value)? fetch,
    TResult? Function(BookmarkFetchByAudio value)? fetchByAudio,
    TResult? Function(BookmarkCreate value)? create,
    TResult? Function(BookmarkDelete value)? delete,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookmarkFetch value)? fetch,
    TResult Function(BookmarkFetchByAudio value)? fetchByAudio,
    TResult Function(BookmarkCreate value)? create,
    TResult Function(BookmarkDelete value)? delete,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class BookmarkCreate implements BookmarkEvent {
  const factory BookmarkCreate({
    required final int audioId,
    required final int positionSeconds,
    required final String label,
  }) = _$BookmarkCreateImpl;

  int get audioId;
  int get positionSeconds;
  String get label;

  /// Create a copy of BookmarkEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookmarkCreateImplCopyWith<_$BookmarkCreateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookmarkDeleteImplCopyWith<$Res> {
  factory _$$BookmarkDeleteImplCopyWith(
    _$BookmarkDeleteImpl value,
    $Res Function(_$BookmarkDeleteImpl) then,
  ) = __$$BookmarkDeleteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$BookmarkDeleteImplCopyWithImpl<$Res>
    extends _$BookmarkEventCopyWithImpl<$Res, _$BookmarkDeleteImpl>
    implements _$$BookmarkDeleteImplCopyWith<$Res> {
  __$$BookmarkDeleteImplCopyWithImpl(
    _$BookmarkDeleteImpl _value,
    $Res Function(_$BookmarkDeleteImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BookmarkEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _$BookmarkDeleteImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$BookmarkDeleteImpl implements BookmarkDelete {
  const _$BookmarkDeleteImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'BookmarkEvent.delete(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookmarkDeleteImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of BookmarkEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookmarkDeleteImplCopyWith<_$BookmarkDeleteImpl> get copyWith =>
      __$$BookmarkDeleteImplCopyWithImpl<_$BookmarkDeleteImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(int audioId) fetchByAudio,
    required TResult Function(int audioId, int positionSeconds, String label)
    create,
    required TResult Function(int id) delete,
  }) {
    return delete(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int audioId)? fetchByAudio,
    TResult? Function(int audioId, int positionSeconds, String label)? create,
    TResult? Function(int id)? delete,
  }) {
    return delete?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int audioId)? fetchByAudio,
    TResult Function(int audioId, int positionSeconds, String label)? create,
    TResult Function(int id)? delete,
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
    required TResult Function(BookmarkFetch value) fetch,
    required TResult Function(BookmarkFetchByAudio value) fetchByAudio,
    required TResult Function(BookmarkCreate value) create,
    required TResult Function(BookmarkDelete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookmarkFetch value)? fetch,
    TResult? Function(BookmarkFetchByAudio value)? fetchByAudio,
    TResult? Function(BookmarkCreate value)? create,
    TResult? Function(BookmarkDelete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookmarkFetch value)? fetch,
    TResult Function(BookmarkFetchByAudio value)? fetchByAudio,
    TResult Function(BookmarkCreate value)? create,
    TResult Function(BookmarkDelete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class BookmarkDelete implements BookmarkEvent {
  const factory BookmarkDelete({required final int id}) = _$BookmarkDeleteImpl;

  int get id;

  /// Create a copy of BookmarkEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookmarkDeleteImplCopyWith<_$BookmarkDeleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
