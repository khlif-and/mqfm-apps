// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$EventEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchUpcoming,
    required TResult Function(int id) fetchDetail,
    required TResult Function(int id) rsvp,
    required TResult Function(int id) cancelRsvp,
    required TResult Function() fetchMyRsvps,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchUpcoming,
    TResult? Function(int id)? fetchDetail,
    TResult? Function(int id)? rsvp,
    TResult? Function(int id)? cancelRsvp,
    TResult? Function()? fetchMyRsvps,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchUpcoming,
    TResult Function(int id)? fetchDetail,
    TResult Function(int id)? rsvp,
    TResult Function(int id)? cancelRsvp,
    TResult Function()? fetchMyRsvps,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EventFetchUpcoming value) fetchUpcoming,
    required TResult Function(EventFetchDetail value) fetchDetail,
    required TResult Function(EventRsvp value) rsvp,
    required TResult Function(EventCancelRsvp value) cancelRsvp,
    required TResult Function(EventFetchMyRsvps value) fetchMyRsvps,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EventFetchUpcoming value)? fetchUpcoming,
    TResult? Function(EventFetchDetail value)? fetchDetail,
    TResult? Function(EventRsvp value)? rsvp,
    TResult? Function(EventCancelRsvp value)? cancelRsvp,
    TResult? Function(EventFetchMyRsvps value)? fetchMyRsvps,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EventFetchUpcoming value)? fetchUpcoming,
    TResult Function(EventFetchDetail value)? fetchDetail,
    TResult Function(EventRsvp value)? rsvp,
    TResult Function(EventCancelRsvp value)? cancelRsvp,
    TResult Function(EventFetchMyRsvps value)? fetchMyRsvps,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventEventCopyWith<$Res> {
  factory $EventEventCopyWith(
    EventEvent value,
    $Res Function(EventEvent) then,
  ) = _$EventEventCopyWithImpl<$Res, EventEvent>;
}

/// @nodoc
class _$EventEventCopyWithImpl<$Res, $Val extends EventEvent>
    implements $EventEventCopyWith<$Res> {
  _$EventEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EventEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$EventFetchUpcomingImplCopyWith<$Res> {
  factory _$$EventFetchUpcomingImplCopyWith(
    _$EventFetchUpcomingImpl value,
    $Res Function(_$EventFetchUpcomingImpl) then,
  ) = __$$EventFetchUpcomingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EventFetchUpcomingImplCopyWithImpl<$Res>
    extends _$EventEventCopyWithImpl<$Res, _$EventFetchUpcomingImpl>
    implements _$$EventFetchUpcomingImplCopyWith<$Res> {
  __$$EventFetchUpcomingImplCopyWithImpl(
    _$EventFetchUpcomingImpl _value,
    $Res Function(_$EventFetchUpcomingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EventEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EventFetchUpcomingImpl implements EventFetchUpcoming {
  const _$EventFetchUpcomingImpl();

  @override
  String toString() {
    return 'EventEvent.fetchUpcoming()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EventFetchUpcomingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchUpcoming,
    required TResult Function(int id) fetchDetail,
    required TResult Function(int id) rsvp,
    required TResult Function(int id) cancelRsvp,
    required TResult Function() fetchMyRsvps,
  }) {
    return fetchUpcoming();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchUpcoming,
    TResult? Function(int id)? fetchDetail,
    TResult? Function(int id)? rsvp,
    TResult? Function(int id)? cancelRsvp,
    TResult? Function()? fetchMyRsvps,
  }) {
    return fetchUpcoming?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchUpcoming,
    TResult Function(int id)? fetchDetail,
    TResult Function(int id)? rsvp,
    TResult Function(int id)? cancelRsvp,
    TResult Function()? fetchMyRsvps,
    required TResult orElse(),
  }) {
    if (fetchUpcoming != null) {
      return fetchUpcoming();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EventFetchUpcoming value) fetchUpcoming,
    required TResult Function(EventFetchDetail value) fetchDetail,
    required TResult Function(EventRsvp value) rsvp,
    required TResult Function(EventCancelRsvp value) cancelRsvp,
    required TResult Function(EventFetchMyRsvps value) fetchMyRsvps,
  }) {
    return fetchUpcoming(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EventFetchUpcoming value)? fetchUpcoming,
    TResult? Function(EventFetchDetail value)? fetchDetail,
    TResult? Function(EventRsvp value)? rsvp,
    TResult? Function(EventCancelRsvp value)? cancelRsvp,
    TResult? Function(EventFetchMyRsvps value)? fetchMyRsvps,
  }) {
    return fetchUpcoming?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EventFetchUpcoming value)? fetchUpcoming,
    TResult Function(EventFetchDetail value)? fetchDetail,
    TResult Function(EventRsvp value)? rsvp,
    TResult Function(EventCancelRsvp value)? cancelRsvp,
    TResult Function(EventFetchMyRsvps value)? fetchMyRsvps,
    required TResult orElse(),
  }) {
    if (fetchUpcoming != null) {
      return fetchUpcoming(this);
    }
    return orElse();
  }
}

abstract class EventFetchUpcoming implements EventEvent {
  const factory EventFetchUpcoming() = _$EventFetchUpcomingImpl;
}

/// @nodoc
abstract class _$$EventFetchDetailImplCopyWith<$Res> {
  factory _$$EventFetchDetailImplCopyWith(
    _$EventFetchDetailImpl value,
    $Res Function(_$EventFetchDetailImpl) then,
  ) = __$$EventFetchDetailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$EventFetchDetailImplCopyWithImpl<$Res>
    extends _$EventEventCopyWithImpl<$Res, _$EventFetchDetailImpl>
    implements _$$EventFetchDetailImplCopyWith<$Res> {
  __$$EventFetchDetailImplCopyWithImpl(
    _$EventFetchDetailImpl _value,
    $Res Function(_$EventFetchDetailImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EventEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _$EventFetchDetailImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$EventFetchDetailImpl implements EventFetchDetail {
  const _$EventFetchDetailImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'EventEvent.fetchDetail(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventFetchDetailImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of EventEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventFetchDetailImplCopyWith<_$EventFetchDetailImpl> get copyWith =>
      __$$EventFetchDetailImplCopyWithImpl<_$EventFetchDetailImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchUpcoming,
    required TResult Function(int id) fetchDetail,
    required TResult Function(int id) rsvp,
    required TResult Function(int id) cancelRsvp,
    required TResult Function() fetchMyRsvps,
  }) {
    return fetchDetail(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchUpcoming,
    TResult? Function(int id)? fetchDetail,
    TResult? Function(int id)? rsvp,
    TResult? Function(int id)? cancelRsvp,
    TResult? Function()? fetchMyRsvps,
  }) {
    return fetchDetail?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchUpcoming,
    TResult Function(int id)? fetchDetail,
    TResult Function(int id)? rsvp,
    TResult Function(int id)? cancelRsvp,
    TResult Function()? fetchMyRsvps,
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
    required TResult Function(EventFetchUpcoming value) fetchUpcoming,
    required TResult Function(EventFetchDetail value) fetchDetail,
    required TResult Function(EventRsvp value) rsvp,
    required TResult Function(EventCancelRsvp value) cancelRsvp,
    required TResult Function(EventFetchMyRsvps value) fetchMyRsvps,
  }) {
    return fetchDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EventFetchUpcoming value)? fetchUpcoming,
    TResult? Function(EventFetchDetail value)? fetchDetail,
    TResult? Function(EventRsvp value)? rsvp,
    TResult? Function(EventCancelRsvp value)? cancelRsvp,
    TResult? Function(EventFetchMyRsvps value)? fetchMyRsvps,
  }) {
    return fetchDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EventFetchUpcoming value)? fetchUpcoming,
    TResult Function(EventFetchDetail value)? fetchDetail,
    TResult Function(EventRsvp value)? rsvp,
    TResult Function(EventCancelRsvp value)? cancelRsvp,
    TResult Function(EventFetchMyRsvps value)? fetchMyRsvps,
    required TResult orElse(),
  }) {
    if (fetchDetail != null) {
      return fetchDetail(this);
    }
    return orElse();
  }
}

abstract class EventFetchDetail implements EventEvent {
  const factory EventFetchDetail({required final int id}) =
      _$EventFetchDetailImpl;

  int get id;

  /// Create a copy of EventEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventFetchDetailImplCopyWith<_$EventFetchDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EventRsvpImplCopyWith<$Res> {
  factory _$$EventRsvpImplCopyWith(
    _$EventRsvpImpl value,
    $Res Function(_$EventRsvpImpl) then,
  ) = __$$EventRsvpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$EventRsvpImplCopyWithImpl<$Res>
    extends _$EventEventCopyWithImpl<$Res, _$EventRsvpImpl>
    implements _$$EventRsvpImplCopyWith<$Res> {
  __$$EventRsvpImplCopyWithImpl(
    _$EventRsvpImpl _value,
    $Res Function(_$EventRsvpImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EventEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _$EventRsvpImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$EventRsvpImpl implements EventRsvp {
  const _$EventRsvpImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'EventEvent.rsvp(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventRsvpImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of EventEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventRsvpImplCopyWith<_$EventRsvpImpl> get copyWith =>
      __$$EventRsvpImplCopyWithImpl<_$EventRsvpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchUpcoming,
    required TResult Function(int id) fetchDetail,
    required TResult Function(int id) rsvp,
    required TResult Function(int id) cancelRsvp,
    required TResult Function() fetchMyRsvps,
  }) {
    return rsvp(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchUpcoming,
    TResult? Function(int id)? fetchDetail,
    TResult? Function(int id)? rsvp,
    TResult? Function(int id)? cancelRsvp,
    TResult? Function()? fetchMyRsvps,
  }) {
    return rsvp?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchUpcoming,
    TResult Function(int id)? fetchDetail,
    TResult Function(int id)? rsvp,
    TResult Function(int id)? cancelRsvp,
    TResult Function()? fetchMyRsvps,
    required TResult orElse(),
  }) {
    if (rsvp != null) {
      return rsvp(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EventFetchUpcoming value) fetchUpcoming,
    required TResult Function(EventFetchDetail value) fetchDetail,
    required TResult Function(EventRsvp value) rsvp,
    required TResult Function(EventCancelRsvp value) cancelRsvp,
    required TResult Function(EventFetchMyRsvps value) fetchMyRsvps,
  }) {
    return rsvp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EventFetchUpcoming value)? fetchUpcoming,
    TResult? Function(EventFetchDetail value)? fetchDetail,
    TResult? Function(EventRsvp value)? rsvp,
    TResult? Function(EventCancelRsvp value)? cancelRsvp,
    TResult? Function(EventFetchMyRsvps value)? fetchMyRsvps,
  }) {
    return rsvp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EventFetchUpcoming value)? fetchUpcoming,
    TResult Function(EventFetchDetail value)? fetchDetail,
    TResult Function(EventRsvp value)? rsvp,
    TResult Function(EventCancelRsvp value)? cancelRsvp,
    TResult Function(EventFetchMyRsvps value)? fetchMyRsvps,
    required TResult orElse(),
  }) {
    if (rsvp != null) {
      return rsvp(this);
    }
    return orElse();
  }
}

abstract class EventRsvp implements EventEvent {
  const factory EventRsvp({required final int id}) = _$EventRsvpImpl;

  int get id;

  /// Create a copy of EventEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventRsvpImplCopyWith<_$EventRsvpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EventCancelRsvpImplCopyWith<$Res> {
  factory _$$EventCancelRsvpImplCopyWith(
    _$EventCancelRsvpImpl value,
    $Res Function(_$EventCancelRsvpImpl) then,
  ) = __$$EventCancelRsvpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$EventCancelRsvpImplCopyWithImpl<$Res>
    extends _$EventEventCopyWithImpl<$Res, _$EventCancelRsvpImpl>
    implements _$$EventCancelRsvpImplCopyWith<$Res> {
  __$$EventCancelRsvpImplCopyWithImpl(
    _$EventCancelRsvpImpl _value,
    $Res Function(_$EventCancelRsvpImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EventEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _$EventCancelRsvpImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$EventCancelRsvpImpl implements EventCancelRsvp {
  const _$EventCancelRsvpImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'EventEvent.cancelRsvp(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventCancelRsvpImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of EventEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventCancelRsvpImplCopyWith<_$EventCancelRsvpImpl> get copyWith =>
      __$$EventCancelRsvpImplCopyWithImpl<_$EventCancelRsvpImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchUpcoming,
    required TResult Function(int id) fetchDetail,
    required TResult Function(int id) rsvp,
    required TResult Function(int id) cancelRsvp,
    required TResult Function() fetchMyRsvps,
  }) {
    return cancelRsvp(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchUpcoming,
    TResult? Function(int id)? fetchDetail,
    TResult? Function(int id)? rsvp,
    TResult? Function(int id)? cancelRsvp,
    TResult? Function()? fetchMyRsvps,
  }) {
    return cancelRsvp?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchUpcoming,
    TResult Function(int id)? fetchDetail,
    TResult Function(int id)? rsvp,
    TResult Function(int id)? cancelRsvp,
    TResult Function()? fetchMyRsvps,
    required TResult orElse(),
  }) {
    if (cancelRsvp != null) {
      return cancelRsvp(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EventFetchUpcoming value) fetchUpcoming,
    required TResult Function(EventFetchDetail value) fetchDetail,
    required TResult Function(EventRsvp value) rsvp,
    required TResult Function(EventCancelRsvp value) cancelRsvp,
    required TResult Function(EventFetchMyRsvps value) fetchMyRsvps,
  }) {
    return cancelRsvp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EventFetchUpcoming value)? fetchUpcoming,
    TResult? Function(EventFetchDetail value)? fetchDetail,
    TResult? Function(EventRsvp value)? rsvp,
    TResult? Function(EventCancelRsvp value)? cancelRsvp,
    TResult? Function(EventFetchMyRsvps value)? fetchMyRsvps,
  }) {
    return cancelRsvp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EventFetchUpcoming value)? fetchUpcoming,
    TResult Function(EventFetchDetail value)? fetchDetail,
    TResult Function(EventRsvp value)? rsvp,
    TResult Function(EventCancelRsvp value)? cancelRsvp,
    TResult Function(EventFetchMyRsvps value)? fetchMyRsvps,
    required TResult orElse(),
  }) {
    if (cancelRsvp != null) {
      return cancelRsvp(this);
    }
    return orElse();
  }
}

abstract class EventCancelRsvp implements EventEvent {
  const factory EventCancelRsvp({required final int id}) =
      _$EventCancelRsvpImpl;

  int get id;

  /// Create a copy of EventEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventCancelRsvpImplCopyWith<_$EventCancelRsvpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EventFetchMyRsvpsImplCopyWith<$Res> {
  factory _$$EventFetchMyRsvpsImplCopyWith(
    _$EventFetchMyRsvpsImpl value,
    $Res Function(_$EventFetchMyRsvpsImpl) then,
  ) = __$$EventFetchMyRsvpsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EventFetchMyRsvpsImplCopyWithImpl<$Res>
    extends _$EventEventCopyWithImpl<$Res, _$EventFetchMyRsvpsImpl>
    implements _$$EventFetchMyRsvpsImplCopyWith<$Res> {
  __$$EventFetchMyRsvpsImplCopyWithImpl(
    _$EventFetchMyRsvpsImpl _value,
    $Res Function(_$EventFetchMyRsvpsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EventEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EventFetchMyRsvpsImpl implements EventFetchMyRsvps {
  const _$EventFetchMyRsvpsImpl();

  @override
  String toString() {
    return 'EventEvent.fetchMyRsvps()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EventFetchMyRsvpsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchUpcoming,
    required TResult Function(int id) fetchDetail,
    required TResult Function(int id) rsvp,
    required TResult Function(int id) cancelRsvp,
    required TResult Function() fetchMyRsvps,
  }) {
    return fetchMyRsvps();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchUpcoming,
    TResult? Function(int id)? fetchDetail,
    TResult? Function(int id)? rsvp,
    TResult? Function(int id)? cancelRsvp,
    TResult? Function()? fetchMyRsvps,
  }) {
    return fetchMyRsvps?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchUpcoming,
    TResult Function(int id)? fetchDetail,
    TResult Function(int id)? rsvp,
    TResult Function(int id)? cancelRsvp,
    TResult Function()? fetchMyRsvps,
    required TResult orElse(),
  }) {
    if (fetchMyRsvps != null) {
      return fetchMyRsvps();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EventFetchUpcoming value) fetchUpcoming,
    required TResult Function(EventFetchDetail value) fetchDetail,
    required TResult Function(EventRsvp value) rsvp,
    required TResult Function(EventCancelRsvp value) cancelRsvp,
    required TResult Function(EventFetchMyRsvps value) fetchMyRsvps,
  }) {
    return fetchMyRsvps(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EventFetchUpcoming value)? fetchUpcoming,
    TResult? Function(EventFetchDetail value)? fetchDetail,
    TResult? Function(EventRsvp value)? rsvp,
    TResult? Function(EventCancelRsvp value)? cancelRsvp,
    TResult? Function(EventFetchMyRsvps value)? fetchMyRsvps,
  }) {
    return fetchMyRsvps?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EventFetchUpcoming value)? fetchUpcoming,
    TResult Function(EventFetchDetail value)? fetchDetail,
    TResult Function(EventRsvp value)? rsvp,
    TResult Function(EventCancelRsvp value)? cancelRsvp,
    TResult Function(EventFetchMyRsvps value)? fetchMyRsvps,
    required TResult orElse(),
  }) {
    if (fetchMyRsvps != null) {
      return fetchMyRsvps(this);
    }
    return orElse();
  }
}

abstract class EventFetchMyRsvps implements EventEvent {
  const factory EventFetchMyRsvps() = _$EventFetchMyRsvpsImpl;
}
