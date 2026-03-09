// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clip_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ClipEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(int audioId, int startTime, int endTime) create,
    required TResult Function(int id) delete,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int audioId, int startTime, int endTime)? create,
    TResult? Function(int id)? delete,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int audioId, int startTime, int endTime)? create,
    TResult Function(int id)? delete,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClipFetch value) fetch,
    required TResult Function(ClipCreate value) create,
    required TResult Function(ClipDelete value) delete,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClipFetch value)? fetch,
    TResult? Function(ClipCreate value)? create,
    TResult? Function(ClipDelete value)? delete,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClipFetch value)? fetch,
    TResult Function(ClipCreate value)? create,
    TResult Function(ClipDelete value)? delete,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClipEventCopyWith<$Res> {
  factory $ClipEventCopyWith(ClipEvent value, $Res Function(ClipEvent) then) =
      _$ClipEventCopyWithImpl<$Res, ClipEvent>;
}

/// @nodoc
class _$ClipEventCopyWithImpl<$Res, $Val extends ClipEvent>
    implements $ClipEventCopyWith<$Res> {
  _$ClipEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClipEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ClipFetchImplCopyWith<$Res> {
  factory _$$ClipFetchImplCopyWith(
    _$ClipFetchImpl value,
    $Res Function(_$ClipFetchImpl) then,
  ) = __$$ClipFetchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClipFetchImplCopyWithImpl<$Res>
    extends _$ClipEventCopyWithImpl<$Res, _$ClipFetchImpl>
    implements _$$ClipFetchImplCopyWith<$Res> {
  __$$ClipFetchImplCopyWithImpl(
    _$ClipFetchImpl _value,
    $Res Function(_$ClipFetchImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ClipEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClipFetchImpl implements ClipFetch {
  const _$ClipFetchImpl();

  @override
  String toString() {
    return 'ClipEvent.fetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClipFetchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(int audioId, int startTime, int endTime) create,
    required TResult Function(int id) delete,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int audioId, int startTime, int endTime)? create,
    TResult? Function(int id)? delete,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int audioId, int startTime, int endTime)? create,
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
    required TResult Function(ClipFetch value) fetch,
    required TResult Function(ClipCreate value) create,
    required TResult Function(ClipDelete value) delete,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClipFetch value)? fetch,
    TResult? Function(ClipCreate value)? create,
    TResult? Function(ClipDelete value)? delete,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClipFetch value)? fetch,
    TResult Function(ClipCreate value)? create,
    TResult Function(ClipDelete value)? delete,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class ClipFetch implements ClipEvent {
  const factory ClipFetch() = _$ClipFetchImpl;
}

/// @nodoc
abstract class _$$ClipCreateImplCopyWith<$Res> {
  factory _$$ClipCreateImplCopyWith(
    _$ClipCreateImpl value,
    $Res Function(_$ClipCreateImpl) then,
  ) = __$$ClipCreateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int audioId, int startTime, int endTime});
}

/// @nodoc
class __$$ClipCreateImplCopyWithImpl<$Res>
    extends _$ClipEventCopyWithImpl<$Res, _$ClipCreateImpl>
    implements _$$ClipCreateImplCopyWith<$Res> {
  __$$ClipCreateImplCopyWithImpl(
    _$ClipCreateImpl _value,
    $Res Function(_$ClipCreateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ClipEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audioId = null,
    Object? startTime = null,
    Object? endTime = null,
  }) {
    return _then(
      _$ClipCreateImpl(
        audioId: null == audioId
            ? _value.audioId
            : audioId // ignore: cast_nullable_to_non_nullable
                  as int,
        startTime: null == startTime
            ? _value.startTime
            : startTime // ignore: cast_nullable_to_non_nullable
                  as int,
        endTime: null == endTime
            ? _value.endTime
            : endTime // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$ClipCreateImpl implements ClipCreate {
  const _$ClipCreateImpl({
    required this.audioId,
    required this.startTime,
    required this.endTime,
  });

  @override
  final int audioId;
  @override
  final int startTime;
  @override
  final int endTime;

  @override
  String toString() {
    return 'ClipEvent.create(audioId: $audioId, startTime: $startTime, endTime: $endTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClipCreateImpl &&
            (identical(other.audioId, audioId) || other.audioId == audioId) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, audioId, startTime, endTime);

  /// Create a copy of ClipEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClipCreateImplCopyWith<_$ClipCreateImpl> get copyWith =>
      __$$ClipCreateImplCopyWithImpl<_$ClipCreateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(int audioId, int startTime, int endTime) create,
    required TResult Function(int id) delete,
  }) {
    return create(audioId, startTime, endTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int audioId, int startTime, int endTime)? create,
    TResult? Function(int id)? delete,
  }) {
    return create?.call(audioId, startTime, endTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int audioId, int startTime, int endTime)? create,
    TResult Function(int id)? delete,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(audioId, startTime, endTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClipFetch value) fetch,
    required TResult Function(ClipCreate value) create,
    required TResult Function(ClipDelete value) delete,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClipFetch value)? fetch,
    TResult? Function(ClipCreate value)? create,
    TResult? Function(ClipDelete value)? delete,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClipFetch value)? fetch,
    TResult Function(ClipCreate value)? create,
    TResult Function(ClipDelete value)? delete,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class ClipCreate implements ClipEvent {
  const factory ClipCreate({
    required final int audioId,
    required final int startTime,
    required final int endTime,
  }) = _$ClipCreateImpl;

  int get audioId;
  int get startTime;
  int get endTime;

  /// Create a copy of ClipEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClipCreateImplCopyWith<_$ClipCreateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClipDeleteImplCopyWith<$Res> {
  factory _$$ClipDeleteImplCopyWith(
    _$ClipDeleteImpl value,
    $Res Function(_$ClipDeleteImpl) then,
  ) = __$$ClipDeleteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$ClipDeleteImplCopyWithImpl<$Res>
    extends _$ClipEventCopyWithImpl<$Res, _$ClipDeleteImpl>
    implements _$$ClipDeleteImplCopyWith<$Res> {
  __$$ClipDeleteImplCopyWithImpl(
    _$ClipDeleteImpl _value,
    $Res Function(_$ClipDeleteImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ClipEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _$ClipDeleteImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$ClipDeleteImpl implements ClipDelete {
  const _$ClipDeleteImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'ClipEvent.delete(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClipDeleteImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of ClipEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClipDeleteImplCopyWith<_$ClipDeleteImpl> get copyWith =>
      __$$ClipDeleteImplCopyWithImpl<_$ClipDeleteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(int audioId, int startTime, int endTime) create,
    required TResult Function(int id) delete,
  }) {
    return delete(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int audioId, int startTime, int endTime)? create,
    TResult? Function(int id)? delete,
  }) {
    return delete?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int audioId, int startTime, int endTime)? create,
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
    required TResult Function(ClipFetch value) fetch,
    required TResult Function(ClipCreate value) create,
    required TResult Function(ClipDelete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClipFetch value)? fetch,
    TResult? Function(ClipCreate value)? create,
    TResult? Function(ClipDelete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClipFetch value)? fetch,
    TResult Function(ClipCreate value)? create,
    TResult Function(ClipDelete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class ClipDelete implements ClipEvent {
  const factory ClipDelete({required final int id}) = _$ClipDeleteImpl;

  int get id;

  /// Create a copy of ClipEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClipDeleteImplCopyWith<_$ClipDeleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
