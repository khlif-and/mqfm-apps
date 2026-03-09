// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$EventState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<EventEntity> events) loaded,
    required TResult Function(EventEntity event) detail,
    required TResult Function(String message) actionSuccess,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<EventEntity> events)? loaded,
    TResult? Function(EventEntity event)? detail,
    TResult? Function(String message)? actionSuccess,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<EventEntity> events)? loaded,
    TResult Function(EventEntity event)? detail,
    TResult Function(String message)? actionSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EventInitial value) initial,
    required TResult Function(EventLoading value) loading,
    required TResult Function(EventLoaded value) loaded,
    required TResult Function(EventDetail value) detail,
    required TResult Function(EventActionSuccess value) actionSuccess,
    required TResult Function(EventError value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EventInitial value)? initial,
    TResult? Function(EventLoading value)? loading,
    TResult? Function(EventLoaded value)? loaded,
    TResult? Function(EventDetail value)? detail,
    TResult? Function(EventActionSuccess value)? actionSuccess,
    TResult? Function(EventError value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EventInitial value)? initial,
    TResult Function(EventLoading value)? loading,
    TResult Function(EventLoaded value)? loaded,
    TResult Function(EventDetail value)? detail,
    TResult Function(EventActionSuccess value)? actionSuccess,
    TResult Function(EventError value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventStateCopyWith<$Res> {
  factory $EventStateCopyWith(
    EventState value,
    $Res Function(EventState) then,
  ) = _$EventStateCopyWithImpl<$Res, EventState>;
}

/// @nodoc
class _$EventStateCopyWithImpl<$Res, $Val extends EventState>
    implements $EventStateCopyWith<$Res> {
  _$EventStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EventState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$EventInitialImplCopyWith<$Res> {
  factory _$$EventInitialImplCopyWith(
    _$EventInitialImpl value,
    $Res Function(_$EventInitialImpl) then,
  ) = __$$EventInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EventInitialImplCopyWithImpl<$Res>
    extends _$EventStateCopyWithImpl<$Res, _$EventInitialImpl>
    implements _$$EventInitialImplCopyWith<$Res> {
  __$$EventInitialImplCopyWithImpl(
    _$EventInitialImpl _value,
    $Res Function(_$EventInitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EventState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EventInitialImpl implements EventInitial {
  const _$EventInitialImpl();

  @override
  String toString() {
    return 'EventState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EventInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<EventEntity> events) loaded,
    required TResult Function(EventEntity event) detail,
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
    TResult? Function(List<EventEntity> events)? loaded,
    TResult? Function(EventEntity event)? detail,
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
    TResult Function(List<EventEntity> events)? loaded,
    TResult Function(EventEntity event)? detail,
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
    required TResult Function(EventInitial value) initial,
    required TResult Function(EventLoading value) loading,
    required TResult Function(EventLoaded value) loaded,
    required TResult Function(EventDetail value) detail,
    required TResult Function(EventActionSuccess value) actionSuccess,
    required TResult Function(EventError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EventInitial value)? initial,
    TResult? Function(EventLoading value)? loading,
    TResult? Function(EventLoaded value)? loaded,
    TResult? Function(EventDetail value)? detail,
    TResult? Function(EventActionSuccess value)? actionSuccess,
    TResult? Function(EventError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EventInitial value)? initial,
    TResult Function(EventLoading value)? loading,
    TResult Function(EventLoaded value)? loaded,
    TResult Function(EventDetail value)? detail,
    TResult Function(EventActionSuccess value)? actionSuccess,
    TResult Function(EventError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class EventInitial implements EventState {
  const factory EventInitial() = _$EventInitialImpl;
}

/// @nodoc
abstract class _$$EventLoadingImplCopyWith<$Res> {
  factory _$$EventLoadingImplCopyWith(
    _$EventLoadingImpl value,
    $Res Function(_$EventLoadingImpl) then,
  ) = __$$EventLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EventLoadingImplCopyWithImpl<$Res>
    extends _$EventStateCopyWithImpl<$Res, _$EventLoadingImpl>
    implements _$$EventLoadingImplCopyWith<$Res> {
  __$$EventLoadingImplCopyWithImpl(
    _$EventLoadingImpl _value,
    $Res Function(_$EventLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EventState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EventLoadingImpl implements EventLoading {
  const _$EventLoadingImpl();

  @override
  String toString() {
    return 'EventState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EventLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<EventEntity> events) loaded,
    required TResult Function(EventEntity event) detail,
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
    TResult? Function(List<EventEntity> events)? loaded,
    TResult? Function(EventEntity event)? detail,
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
    TResult Function(List<EventEntity> events)? loaded,
    TResult Function(EventEntity event)? detail,
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
    required TResult Function(EventInitial value) initial,
    required TResult Function(EventLoading value) loading,
    required TResult Function(EventLoaded value) loaded,
    required TResult Function(EventDetail value) detail,
    required TResult Function(EventActionSuccess value) actionSuccess,
    required TResult Function(EventError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EventInitial value)? initial,
    TResult? Function(EventLoading value)? loading,
    TResult? Function(EventLoaded value)? loaded,
    TResult? Function(EventDetail value)? detail,
    TResult? Function(EventActionSuccess value)? actionSuccess,
    TResult? Function(EventError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EventInitial value)? initial,
    TResult Function(EventLoading value)? loading,
    TResult Function(EventLoaded value)? loaded,
    TResult Function(EventDetail value)? detail,
    TResult Function(EventActionSuccess value)? actionSuccess,
    TResult Function(EventError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class EventLoading implements EventState {
  const factory EventLoading() = _$EventLoadingImpl;
}

/// @nodoc
abstract class _$$EventLoadedImplCopyWith<$Res> {
  factory _$$EventLoadedImplCopyWith(
    _$EventLoadedImpl value,
    $Res Function(_$EventLoadedImpl) then,
  ) = __$$EventLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<EventEntity> events});
}

/// @nodoc
class __$$EventLoadedImplCopyWithImpl<$Res>
    extends _$EventStateCopyWithImpl<$Res, _$EventLoadedImpl>
    implements _$$EventLoadedImplCopyWith<$Res> {
  __$$EventLoadedImplCopyWithImpl(
    _$EventLoadedImpl _value,
    $Res Function(_$EventLoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EventState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? events = null}) {
    return _then(
      _$EventLoadedImpl(
        events: null == events
            ? _value._events
            : events // ignore: cast_nullable_to_non_nullable
                  as List<EventEntity>,
      ),
    );
  }
}

/// @nodoc

class _$EventLoadedImpl implements EventLoaded {
  const _$EventLoadedImpl({required final List<EventEntity> events})
    : _events = events;

  final List<EventEntity> _events;
  @override
  List<EventEntity> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @override
  String toString() {
    return 'EventState.loaded(events: $events)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventLoadedImpl &&
            const DeepCollectionEquality().equals(other._events, _events));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_events));

  /// Create a copy of EventState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventLoadedImplCopyWith<_$EventLoadedImpl> get copyWith =>
      __$$EventLoadedImplCopyWithImpl<_$EventLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<EventEntity> events) loaded,
    required TResult Function(EventEntity event) detail,
    required TResult Function(String message) actionSuccess,
    required TResult Function(String message) error,
  }) {
    return loaded(events);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<EventEntity> events)? loaded,
    TResult? Function(EventEntity event)? detail,
    TResult? Function(String message)? actionSuccess,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(events);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<EventEntity> events)? loaded,
    TResult Function(EventEntity event)? detail,
    TResult Function(String message)? actionSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(events);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EventInitial value) initial,
    required TResult Function(EventLoading value) loading,
    required TResult Function(EventLoaded value) loaded,
    required TResult Function(EventDetail value) detail,
    required TResult Function(EventActionSuccess value) actionSuccess,
    required TResult Function(EventError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EventInitial value)? initial,
    TResult? Function(EventLoading value)? loading,
    TResult? Function(EventLoaded value)? loaded,
    TResult? Function(EventDetail value)? detail,
    TResult? Function(EventActionSuccess value)? actionSuccess,
    TResult? Function(EventError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EventInitial value)? initial,
    TResult Function(EventLoading value)? loading,
    TResult Function(EventLoaded value)? loaded,
    TResult Function(EventDetail value)? detail,
    TResult Function(EventActionSuccess value)? actionSuccess,
    TResult Function(EventError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class EventLoaded implements EventState {
  const factory EventLoaded({required final List<EventEntity> events}) =
      _$EventLoadedImpl;

  List<EventEntity> get events;

  /// Create a copy of EventState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventLoadedImplCopyWith<_$EventLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EventDetailImplCopyWith<$Res> {
  factory _$$EventDetailImplCopyWith(
    _$EventDetailImpl value,
    $Res Function(_$EventDetailImpl) then,
  ) = __$$EventDetailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EventEntity event});

  $EventEntityCopyWith<$Res> get event;
}

/// @nodoc
class __$$EventDetailImplCopyWithImpl<$Res>
    extends _$EventStateCopyWithImpl<$Res, _$EventDetailImpl>
    implements _$$EventDetailImplCopyWith<$Res> {
  __$$EventDetailImplCopyWithImpl(
    _$EventDetailImpl _value,
    $Res Function(_$EventDetailImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EventState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? event = null}) {
    return _then(
      _$EventDetailImpl(
        event: null == event
            ? _value.event
            : event // ignore: cast_nullable_to_non_nullable
                  as EventEntity,
      ),
    );
  }

  /// Create a copy of EventState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EventEntityCopyWith<$Res> get event {
    return $EventEntityCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value));
    });
  }
}

/// @nodoc

class _$EventDetailImpl implements EventDetail {
  const _$EventDetailImpl({required this.event});

  @override
  final EventEntity event;

  @override
  String toString() {
    return 'EventState.detail(event: $event)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventDetailImpl &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, event);

  /// Create a copy of EventState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventDetailImplCopyWith<_$EventDetailImpl> get copyWith =>
      __$$EventDetailImplCopyWithImpl<_$EventDetailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<EventEntity> events) loaded,
    required TResult Function(EventEntity event) detail,
    required TResult Function(String message) actionSuccess,
    required TResult Function(String message) error,
  }) {
    return detail(event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<EventEntity> events)? loaded,
    TResult? Function(EventEntity event)? detail,
    TResult? Function(String message)? actionSuccess,
    TResult? Function(String message)? error,
  }) {
    return detail?.call(event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<EventEntity> events)? loaded,
    TResult Function(EventEntity event)? detail,
    TResult Function(String message)? actionSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (detail != null) {
      return detail(event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EventInitial value) initial,
    required TResult Function(EventLoading value) loading,
    required TResult Function(EventLoaded value) loaded,
    required TResult Function(EventDetail value) detail,
    required TResult Function(EventActionSuccess value) actionSuccess,
    required TResult Function(EventError value) error,
  }) {
    return detail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EventInitial value)? initial,
    TResult? Function(EventLoading value)? loading,
    TResult? Function(EventLoaded value)? loaded,
    TResult? Function(EventDetail value)? detail,
    TResult? Function(EventActionSuccess value)? actionSuccess,
    TResult? Function(EventError value)? error,
  }) {
    return detail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EventInitial value)? initial,
    TResult Function(EventLoading value)? loading,
    TResult Function(EventLoaded value)? loaded,
    TResult Function(EventDetail value)? detail,
    TResult Function(EventActionSuccess value)? actionSuccess,
    TResult Function(EventError value)? error,
    required TResult orElse(),
  }) {
    if (detail != null) {
      return detail(this);
    }
    return orElse();
  }
}

abstract class EventDetail implements EventState {
  const factory EventDetail({required final EventEntity event}) =
      _$EventDetailImpl;

  EventEntity get event;

  /// Create a copy of EventState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventDetailImplCopyWith<_$EventDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EventActionSuccessImplCopyWith<$Res> {
  factory _$$EventActionSuccessImplCopyWith(
    _$EventActionSuccessImpl value,
    $Res Function(_$EventActionSuccessImpl) then,
  ) = __$$EventActionSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$EventActionSuccessImplCopyWithImpl<$Res>
    extends _$EventStateCopyWithImpl<$Res, _$EventActionSuccessImpl>
    implements _$$EventActionSuccessImplCopyWith<$Res> {
  __$$EventActionSuccessImplCopyWithImpl(
    _$EventActionSuccessImpl _value,
    $Res Function(_$EventActionSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EventState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$EventActionSuccessImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$EventActionSuccessImpl implements EventActionSuccess {
  const _$EventActionSuccessImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'EventState.actionSuccess(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventActionSuccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of EventState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventActionSuccessImplCopyWith<_$EventActionSuccessImpl> get copyWith =>
      __$$EventActionSuccessImplCopyWithImpl<_$EventActionSuccessImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<EventEntity> events) loaded,
    required TResult Function(EventEntity event) detail,
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
    TResult? Function(List<EventEntity> events)? loaded,
    TResult? Function(EventEntity event)? detail,
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
    TResult Function(List<EventEntity> events)? loaded,
    TResult Function(EventEntity event)? detail,
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
    required TResult Function(EventInitial value) initial,
    required TResult Function(EventLoading value) loading,
    required TResult Function(EventLoaded value) loaded,
    required TResult Function(EventDetail value) detail,
    required TResult Function(EventActionSuccess value) actionSuccess,
    required TResult Function(EventError value) error,
  }) {
    return actionSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EventInitial value)? initial,
    TResult? Function(EventLoading value)? loading,
    TResult? Function(EventLoaded value)? loaded,
    TResult? Function(EventDetail value)? detail,
    TResult? Function(EventActionSuccess value)? actionSuccess,
    TResult? Function(EventError value)? error,
  }) {
    return actionSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EventInitial value)? initial,
    TResult Function(EventLoading value)? loading,
    TResult Function(EventLoaded value)? loaded,
    TResult Function(EventDetail value)? detail,
    TResult Function(EventActionSuccess value)? actionSuccess,
    TResult Function(EventError value)? error,
    required TResult orElse(),
  }) {
    if (actionSuccess != null) {
      return actionSuccess(this);
    }
    return orElse();
  }
}

abstract class EventActionSuccess implements EventState {
  const factory EventActionSuccess({required final String message}) =
      _$EventActionSuccessImpl;

  String get message;

  /// Create a copy of EventState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventActionSuccessImplCopyWith<_$EventActionSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EventErrorImplCopyWith<$Res> {
  factory _$$EventErrorImplCopyWith(
    _$EventErrorImpl value,
    $Res Function(_$EventErrorImpl) then,
  ) = __$$EventErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$EventErrorImplCopyWithImpl<$Res>
    extends _$EventStateCopyWithImpl<$Res, _$EventErrorImpl>
    implements _$$EventErrorImplCopyWith<$Res> {
  __$$EventErrorImplCopyWithImpl(
    _$EventErrorImpl _value,
    $Res Function(_$EventErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EventState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$EventErrorImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$EventErrorImpl implements EventError {
  const _$EventErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'EventState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of EventState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventErrorImplCopyWith<_$EventErrorImpl> get copyWith =>
      __$$EventErrorImplCopyWithImpl<_$EventErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<EventEntity> events) loaded,
    required TResult Function(EventEntity event) detail,
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
    TResult? Function(List<EventEntity> events)? loaded,
    TResult? Function(EventEntity event)? detail,
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
    TResult Function(List<EventEntity> events)? loaded,
    TResult Function(EventEntity event)? detail,
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
    required TResult Function(EventInitial value) initial,
    required TResult Function(EventLoading value) loading,
    required TResult Function(EventLoaded value) loaded,
    required TResult Function(EventDetail value) detail,
    required TResult Function(EventActionSuccess value) actionSuccess,
    required TResult Function(EventError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EventInitial value)? initial,
    TResult? Function(EventLoading value)? loading,
    TResult? Function(EventLoaded value)? loaded,
    TResult? Function(EventDetail value)? detail,
    TResult? Function(EventActionSuccess value)? actionSuccess,
    TResult? Function(EventError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EventInitial value)? initial,
    TResult Function(EventLoading value)? loading,
    TResult Function(EventLoaded value)? loaded,
    TResult Function(EventDetail value)? detail,
    TResult Function(EventActionSuccess value)? actionSuccess,
    TResult Function(EventError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class EventError implements EventState {
  const factory EventError({required final String message}) = _$EventErrorImpl;

  String get message;

  /// Create a copy of EventState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventErrorImplCopyWith<_$EventErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
