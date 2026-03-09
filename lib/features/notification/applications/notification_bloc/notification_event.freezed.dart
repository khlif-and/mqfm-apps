// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$NotificationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(int id) markRead,
    required TResult Function() markAllRead,
    required TResult Function() fetchUnreadCount,
    required TResult Function() fetchSettings,
    required TResult Function(
      bool dailyReminder,
      bool newContent,
      bool eventReminder,
    )
    updateSettings,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int id)? markRead,
    TResult? Function()? markAllRead,
    TResult? Function()? fetchUnreadCount,
    TResult? Function()? fetchSettings,
    TResult? Function(bool dailyReminder, bool newContent, bool eventReminder)?
    updateSettings,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int id)? markRead,
    TResult Function()? markAllRead,
    TResult Function()? fetchUnreadCount,
    TResult Function()? fetchSettings,
    TResult Function(bool dailyReminder, bool newContent, bool eventReminder)?
    updateSettings,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotificationFetch value) fetch,
    required TResult Function(NotificationMarkRead value) markRead,
    required TResult Function(NotificationMarkAllRead value) markAllRead,
    required TResult Function(NotificationFetchUnreadCount value)
    fetchUnreadCount,
    required TResult Function(NotificationFetchSettings value) fetchSettings,
    required TResult Function(NotificationUpdateSettings value) updateSettings,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotificationFetch value)? fetch,
    TResult? Function(NotificationMarkRead value)? markRead,
    TResult? Function(NotificationMarkAllRead value)? markAllRead,
    TResult? Function(NotificationFetchUnreadCount value)? fetchUnreadCount,
    TResult? Function(NotificationFetchSettings value)? fetchSettings,
    TResult? Function(NotificationUpdateSettings value)? updateSettings,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationFetch value)? fetch,
    TResult Function(NotificationMarkRead value)? markRead,
    TResult Function(NotificationMarkAllRead value)? markAllRead,
    TResult Function(NotificationFetchUnreadCount value)? fetchUnreadCount,
    TResult Function(NotificationFetchSettings value)? fetchSettings,
    TResult Function(NotificationUpdateSettings value)? updateSettings,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationEventCopyWith<$Res> {
  factory $NotificationEventCopyWith(
    NotificationEvent value,
    $Res Function(NotificationEvent) then,
  ) = _$NotificationEventCopyWithImpl<$Res, NotificationEvent>;
}

/// @nodoc
class _$NotificationEventCopyWithImpl<$Res, $Val extends NotificationEvent>
    implements $NotificationEventCopyWith<$Res> {
  _$NotificationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NotificationFetchImplCopyWith<$Res> {
  factory _$$NotificationFetchImplCopyWith(
    _$NotificationFetchImpl value,
    $Res Function(_$NotificationFetchImpl) then,
  ) = __$$NotificationFetchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotificationFetchImplCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res, _$NotificationFetchImpl>
    implements _$$NotificationFetchImplCopyWith<$Res> {
  __$$NotificationFetchImplCopyWithImpl(
    _$NotificationFetchImpl _value,
    $Res Function(_$NotificationFetchImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NotificationFetchImpl implements NotificationFetch {
  const _$NotificationFetchImpl();

  @override
  String toString() {
    return 'NotificationEvent.fetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotificationFetchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(int id) markRead,
    required TResult Function() markAllRead,
    required TResult Function() fetchUnreadCount,
    required TResult Function() fetchSettings,
    required TResult Function(
      bool dailyReminder,
      bool newContent,
      bool eventReminder,
    )
    updateSettings,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int id)? markRead,
    TResult? Function()? markAllRead,
    TResult? Function()? fetchUnreadCount,
    TResult? Function()? fetchSettings,
    TResult? Function(bool dailyReminder, bool newContent, bool eventReminder)?
    updateSettings,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int id)? markRead,
    TResult Function()? markAllRead,
    TResult Function()? fetchUnreadCount,
    TResult Function()? fetchSettings,
    TResult Function(bool dailyReminder, bool newContent, bool eventReminder)?
    updateSettings,
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
    required TResult Function(NotificationFetch value) fetch,
    required TResult Function(NotificationMarkRead value) markRead,
    required TResult Function(NotificationMarkAllRead value) markAllRead,
    required TResult Function(NotificationFetchUnreadCount value)
    fetchUnreadCount,
    required TResult Function(NotificationFetchSettings value) fetchSettings,
    required TResult Function(NotificationUpdateSettings value) updateSettings,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotificationFetch value)? fetch,
    TResult? Function(NotificationMarkRead value)? markRead,
    TResult? Function(NotificationMarkAllRead value)? markAllRead,
    TResult? Function(NotificationFetchUnreadCount value)? fetchUnreadCount,
    TResult? Function(NotificationFetchSettings value)? fetchSettings,
    TResult? Function(NotificationUpdateSettings value)? updateSettings,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationFetch value)? fetch,
    TResult Function(NotificationMarkRead value)? markRead,
    TResult Function(NotificationMarkAllRead value)? markAllRead,
    TResult Function(NotificationFetchUnreadCount value)? fetchUnreadCount,
    TResult Function(NotificationFetchSettings value)? fetchSettings,
    TResult Function(NotificationUpdateSettings value)? updateSettings,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class NotificationFetch implements NotificationEvent {
  const factory NotificationFetch() = _$NotificationFetchImpl;
}

/// @nodoc
abstract class _$$NotificationMarkReadImplCopyWith<$Res> {
  factory _$$NotificationMarkReadImplCopyWith(
    _$NotificationMarkReadImpl value,
    $Res Function(_$NotificationMarkReadImpl) then,
  ) = __$$NotificationMarkReadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$NotificationMarkReadImplCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res, _$NotificationMarkReadImpl>
    implements _$$NotificationMarkReadImplCopyWith<$Res> {
  __$$NotificationMarkReadImplCopyWithImpl(
    _$NotificationMarkReadImpl _value,
    $Res Function(_$NotificationMarkReadImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _$NotificationMarkReadImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$NotificationMarkReadImpl implements NotificationMarkRead {
  const _$NotificationMarkReadImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'NotificationEvent.markRead(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationMarkReadImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationMarkReadImplCopyWith<_$NotificationMarkReadImpl>
  get copyWith =>
      __$$NotificationMarkReadImplCopyWithImpl<_$NotificationMarkReadImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(int id) markRead,
    required TResult Function() markAllRead,
    required TResult Function() fetchUnreadCount,
    required TResult Function() fetchSettings,
    required TResult Function(
      bool dailyReminder,
      bool newContent,
      bool eventReminder,
    )
    updateSettings,
  }) {
    return markRead(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int id)? markRead,
    TResult? Function()? markAllRead,
    TResult? Function()? fetchUnreadCount,
    TResult? Function()? fetchSettings,
    TResult? Function(bool dailyReminder, bool newContent, bool eventReminder)?
    updateSettings,
  }) {
    return markRead?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int id)? markRead,
    TResult Function()? markAllRead,
    TResult Function()? fetchUnreadCount,
    TResult Function()? fetchSettings,
    TResult Function(bool dailyReminder, bool newContent, bool eventReminder)?
    updateSettings,
    required TResult orElse(),
  }) {
    if (markRead != null) {
      return markRead(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotificationFetch value) fetch,
    required TResult Function(NotificationMarkRead value) markRead,
    required TResult Function(NotificationMarkAllRead value) markAllRead,
    required TResult Function(NotificationFetchUnreadCount value)
    fetchUnreadCount,
    required TResult Function(NotificationFetchSettings value) fetchSettings,
    required TResult Function(NotificationUpdateSettings value) updateSettings,
  }) {
    return markRead(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotificationFetch value)? fetch,
    TResult? Function(NotificationMarkRead value)? markRead,
    TResult? Function(NotificationMarkAllRead value)? markAllRead,
    TResult? Function(NotificationFetchUnreadCount value)? fetchUnreadCount,
    TResult? Function(NotificationFetchSettings value)? fetchSettings,
    TResult? Function(NotificationUpdateSettings value)? updateSettings,
  }) {
    return markRead?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationFetch value)? fetch,
    TResult Function(NotificationMarkRead value)? markRead,
    TResult Function(NotificationMarkAllRead value)? markAllRead,
    TResult Function(NotificationFetchUnreadCount value)? fetchUnreadCount,
    TResult Function(NotificationFetchSettings value)? fetchSettings,
    TResult Function(NotificationUpdateSettings value)? updateSettings,
    required TResult orElse(),
  }) {
    if (markRead != null) {
      return markRead(this);
    }
    return orElse();
  }
}

abstract class NotificationMarkRead implements NotificationEvent {
  const factory NotificationMarkRead({required final int id}) =
      _$NotificationMarkReadImpl;

  int get id;

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationMarkReadImplCopyWith<_$NotificationMarkReadImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotificationMarkAllReadImplCopyWith<$Res> {
  factory _$$NotificationMarkAllReadImplCopyWith(
    _$NotificationMarkAllReadImpl value,
    $Res Function(_$NotificationMarkAllReadImpl) then,
  ) = __$$NotificationMarkAllReadImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotificationMarkAllReadImplCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res, _$NotificationMarkAllReadImpl>
    implements _$$NotificationMarkAllReadImplCopyWith<$Res> {
  __$$NotificationMarkAllReadImplCopyWithImpl(
    _$NotificationMarkAllReadImpl _value,
    $Res Function(_$NotificationMarkAllReadImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NotificationMarkAllReadImpl implements NotificationMarkAllRead {
  const _$NotificationMarkAllReadImpl();

  @override
  String toString() {
    return 'NotificationEvent.markAllRead()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationMarkAllReadImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(int id) markRead,
    required TResult Function() markAllRead,
    required TResult Function() fetchUnreadCount,
    required TResult Function() fetchSettings,
    required TResult Function(
      bool dailyReminder,
      bool newContent,
      bool eventReminder,
    )
    updateSettings,
  }) {
    return markAllRead();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int id)? markRead,
    TResult? Function()? markAllRead,
    TResult? Function()? fetchUnreadCount,
    TResult? Function()? fetchSettings,
    TResult? Function(bool dailyReminder, bool newContent, bool eventReminder)?
    updateSettings,
  }) {
    return markAllRead?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int id)? markRead,
    TResult Function()? markAllRead,
    TResult Function()? fetchUnreadCount,
    TResult Function()? fetchSettings,
    TResult Function(bool dailyReminder, bool newContent, bool eventReminder)?
    updateSettings,
    required TResult orElse(),
  }) {
    if (markAllRead != null) {
      return markAllRead();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotificationFetch value) fetch,
    required TResult Function(NotificationMarkRead value) markRead,
    required TResult Function(NotificationMarkAllRead value) markAllRead,
    required TResult Function(NotificationFetchUnreadCount value)
    fetchUnreadCount,
    required TResult Function(NotificationFetchSettings value) fetchSettings,
    required TResult Function(NotificationUpdateSettings value) updateSettings,
  }) {
    return markAllRead(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotificationFetch value)? fetch,
    TResult? Function(NotificationMarkRead value)? markRead,
    TResult? Function(NotificationMarkAllRead value)? markAllRead,
    TResult? Function(NotificationFetchUnreadCount value)? fetchUnreadCount,
    TResult? Function(NotificationFetchSettings value)? fetchSettings,
    TResult? Function(NotificationUpdateSettings value)? updateSettings,
  }) {
    return markAllRead?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationFetch value)? fetch,
    TResult Function(NotificationMarkRead value)? markRead,
    TResult Function(NotificationMarkAllRead value)? markAllRead,
    TResult Function(NotificationFetchUnreadCount value)? fetchUnreadCount,
    TResult Function(NotificationFetchSettings value)? fetchSettings,
    TResult Function(NotificationUpdateSettings value)? updateSettings,
    required TResult orElse(),
  }) {
    if (markAllRead != null) {
      return markAllRead(this);
    }
    return orElse();
  }
}

abstract class NotificationMarkAllRead implements NotificationEvent {
  const factory NotificationMarkAllRead() = _$NotificationMarkAllReadImpl;
}

/// @nodoc
abstract class _$$NotificationFetchUnreadCountImplCopyWith<$Res> {
  factory _$$NotificationFetchUnreadCountImplCopyWith(
    _$NotificationFetchUnreadCountImpl value,
    $Res Function(_$NotificationFetchUnreadCountImpl) then,
  ) = __$$NotificationFetchUnreadCountImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotificationFetchUnreadCountImplCopyWithImpl<$Res>
    extends
        _$NotificationEventCopyWithImpl<
          $Res,
          _$NotificationFetchUnreadCountImpl
        >
    implements _$$NotificationFetchUnreadCountImplCopyWith<$Res> {
  __$$NotificationFetchUnreadCountImplCopyWithImpl(
    _$NotificationFetchUnreadCountImpl _value,
    $Res Function(_$NotificationFetchUnreadCountImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NotificationFetchUnreadCountImpl
    implements NotificationFetchUnreadCount {
  const _$NotificationFetchUnreadCountImpl();

  @override
  String toString() {
    return 'NotificationEvent.fetchUnreadCount()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationFetchUnreadCountImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(int id) markRead,
    required TResult Function() markAllRead,
    required TResult Function() fetchUnreadCount,
    required TResult Function() fetchSettings,
    required TResult Function(
      bool dailyReminder,
      bool newContent,
      bool eventReminder,
    )
    updateSettings,
  }) {
    return fetchUnreadCount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int id)? markRead,
    TResult? Function()? markAllRead,
    TResult? Function()? fetchUnreadCount,
    TResult? Function()? fetchSettings,
    TResult? Function(bool dailyReminder, bool newContent, bool eventReminder)?
    updateSettings,
  }) {
    return fetchUnreadCount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int id)? markRead,
    TResult Function()? markAllRead,
    TResult Function()? fetchUnreadCount,
    TResult Function()? fetchSettings,
    TResult Function(bool dailyReminder, bool newContent, bool eventReminder)?
    updateSettings,
    required TResult orElse(),
  }) {
    if (fetchUnreadCount != null) {
      return fetchUnreadCount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotificationFetch value) fetch,
    required TResult Function(NotificationMarkRead value) markRead,
    required TResult Function(NotificationMarkAllRead value) markAllRead,
    required TResult Function(NotificationFetchUnreadCount value)
    fetchUnreadCount,
    required TResult Function(NotificationFetchSettings value) fetchSettings,
    required TResult Function(NotificationUpdateSettings value) updateSettings,
  }) {
    return fetchUnreadCount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotificationFetch value)? fetch,
    TResult? Function(NotificationMarkRead value)? markRead,
    TResult? Function(NotificationMarkAllRead value)? markAllRead,
    TResult? Function(NotificationFetchUnreadCount value)? fetchUnreadCount,
    TResult? Function(NotificationFetchSettings value)? fetchSettings,
    TResult? Function(NotificationUpdateSettings value)? updateSettings,
  }) {
    return fetchUnreadCount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationFetch value)? fetch,
    TResult Function(NotificationMarkRead value)? markRead,
    TResult Function(NotificationMarkAllRead value)? markAllRead,
    TResult Function(NotificationFetchUnreadCount value)? fetchUnreadCount,
    TResult Function(NotificationFetchSettings value)? fetchSettings,
    TResult Function(NotificationUpdateSettings value)? updateSettings,
    required TResult orElse(),
  }) {
    if (fetchUnreadCount != null) {
      return fetchUnreadCount(this);
    }
    return orElse();
  }
}

abstract class NotificationFetchUnreadCount implements NotificationEvent {
  const factory NotificationFetchUnreadCount() =
      _$NotificationFetchUnreadCountImpl;
}

/// @nodoc
abstract class _$$NotificationFetchSettingsImplCopyWith<$Res> {
  factory _$$NotificationFetchSettingsImplCopyWith(
    _$NotificationFetchSettingsImpl value,
    $Res Function(_$NotificationFetchSettingsImpl) then,
  ) = __$$NotificationFetchSettingsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotificationFetchSettingsImplCopyWithImpl<$Res>
    extends
        _$NotificationEventCopyWithImpl<$Res, _$NotificationFetchSettingsImpl>
    implements _$$NotificationFetchSettingsImplCopyWith<$Res> {
  __$$NotificationFetchSettingsImplCopyWithImpl(
    _$NotificationFetchSettingsImpl _value,
    $Res Function(_$NotificationFetchSettingsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NotificationFetchSettingsImpl implements NotificationFetchSettings {
  const _$NotificationFetchSettingsImpl();

  @override
  String toString() {
    return 'NotificationEvent.fetchSettings()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationFetchSettingsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(int id) markRead,
    required TResult Function() markAllRead,
    required TResult Function() fetchUnreadCount,
    required TResult Function() fetchSettings,
    required TResult Function(
      bool dailyReminder,
      bool newContent,
      bool eventReminder,
    )
    updateSettings,
  }) {
    return fetchSettings();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int id)? markRead,
    TResult? Function()? markAllRead,
    TResult? Function()? fetchUnreadCount,
    TResult? Function()? fetchSettings,
    TResult? Function(bool dailyReminder, bool newContent, bool eventReminder)?
    updateSettings,
  }) {
    return fetchSettings?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int id)? markRead,
    TResult Function()? markAllRead,
    TResult Function()? fetchUnreadCount,
    TResult Function()? fetchSettings,
    TResult Function(bool dailyReminder, bool newContent, bool eventReminder)?
    updateSettings,
    required TResult orElse(),
  }) {
    if (fetchSettings != null) {
      return fetchSettings();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotificationFetch value) fetch,
    required TResult Function(NotificationMarkRead value) markRead,
    required TResult Function(NotificationMarkAllRead value) markAllRead,
    required TResult Function(NotificationFetchUnreadCount value)
    fetchUnreadCount,
    required TResult Function(NotificationFetchSettings value) fetchSettings,
    required TResult Function(NotificationUpdateSettings value) updateSettings,
  }) {
    return fetchSettings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotificationFetch value)? fetch,
    TResult? Function(NotificationMarkRead value)? markRead,
    TResult? Function(NotificationMarkAllRead value)? markAllRead,
    TResult? Function(NotificationFetchUnreadCount value)? fetchUnreadCount,
    TResult? Function(NotificationFetchSettings value)? fetchSettings,
    TResult? Function(NotificationUpdateSettings value)? updateSettings,
  }) {
    return fetchSettings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationFetch value)? fetch,
    TResult Function(NotificationMarkRead value)? markRead,
    TResult Function(NotificationMarkAllRead value)? markAllRead,
    TResult Function(NotificationFetchUnreadCount value)? fetchUnreadCount,
    TResult Function(NotificationFetchSettings value)? fetchSettings,
    TResult Function(NotificationUpdateSettings value)? updateSettings,
    required TResult orElse(),
  }) {
    if (fetchSettings != null) {
      return fetchSettings(this);
    }
    return orElse();
  }
}

abstract class NotificationFetchSettings implements NotificationEvent {
  const factory NotificationFetchSettings() = _$NotificationFetchSettingsImpl;
}

/// @nodoc
abstract class _$$NotificationUpdateSettingsImplCopyWith<$Res> {
  factory _$$NotificationUpdateSettingsImplCopyWith(
    _$NotificationUpdateSettingsImpl value,
    $Res Function(_$NotificationUpdateSettingsImpl) then,
  ) = __$$NotificationUpdateSettingsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool dailyReminder, bool newContent, bool eventReminder});
}

/// @nodoc
class __$$NotificationUpdateSettingsImplCopyWithImpl<$Res>
    extends
        _$NotificationEventCopyWithImpl<$Res, _$NotificationUpdateSettingsImpl>
    implements _$$NotificationUpdateSettingsImplCopyWith<$Res> {
  __$$NotificationUpdateSettingsImplCopyWithImpl(
    _$NotificationUpdateSettingsImpl _value,
    $Res Function(_$NotificationUpdateSettingsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dailyReminder = null,
    Object? newContent = null,
    Object? eventReminder = null,
  }) {
    return _then(
      _$NotificationUpdateSettingsImpl(
        dailyReminder: null == dailyReminder
            ? _value.dailyReminder
            : dailyReminder // ignore: cast_nullable_to_non_nullable
                  as bool,
        newContent: null == newContent
            ? _value.newContent
            : newContent // ignore: cast_nullable_to_non_nullable
                  as bool,
        eventReminder: null == eventReminder
            ? _value.eventReminder
            : eventReminder // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$NotificationUpdateSettingsImpl implements NotificationUpdateSettings {
  const _$NotificationUpdateSettingsImpl({
    required this.dailyReminder,
    required this.newContent,
    required this.eventReminder,
  });

  @override
  final bool dailyReminder;
  @override
  final bool newContent;
  @override
  final bool eventReminder;

  @override
  String toString() {
    return 'NotificationEvent.updateSettings(dailyReminder: $dailyReminder, newContent: $newContent, eventReminder: $eventReminder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationUpdateSettingsImpl &&
            (identical(other.dailyReminder, dailyReminder) ||
                other.dailyReminder == dailyReminder) &&
            (identical(other.newContent, newContent) ||
                other.newContent == newContent) &&
            (identical(other.eventReminder, eventReminder) ||
                other.eventReminder == eventReminder));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, dailyReminder, newContent, eventReminder);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationUpdateSettingsImplCopyWith<_$NotificationUpdateSettingsImpl>
  get copyWith =>
      __$$NotificationUpdateSettingsImplCopyWithImpl<
        _$NotificationUpdateSettingsImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(int id) markRead,
    required TResult Function() markAllRead,
    required TResult Function() fetchUnreadCount,
    required TResult Function() fetchSettings,
    required TResult Function(
      bool dailyReminder,
      bool newContent,
      bool eventReminder,
    )
    updateSettings,
  }) {
    return updateSettings(dailyReminder, newContent, eventReminder);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int id)? markRead,
    TResult? Function()? markAllRead,
    TResult? Function()? fetchUnreadCount,
    TResult? Function()? fetchSettings,
    TResult? Function(bool dailyReminder, bool newContent, bool eventReminder)?
    updateSettings,
  }) {
    return updateSettings?.call(dailyReminder, newContent, eventReminder);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int id)? markRead,
    TResult Function()? markAllRead,
    TResult Function()? fetchUnreadCount,
    TResult Function()? fetchSettings,
    TResult Function(bool dailyReminder, bool newContent, bool eventReminder)?
    updateSettings,
    required TResult orElse(),
  }) {
    if (updateSettings != null) {
      return updateSettings(dailyReminder, newContent, eventReminder);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotificationFetch value) fetch,
    required TResult Function(NotificationMarkRead value) markRead,
    required TResult Function(NotificationMarkAllRead value) markAllRead,
    required TResult Function(NotificationFetchUnreadCount value)
    fetchUnreadCount,
    required TResult Function(NotificationFetchSettings value) fetchSettings,
    required TResult Function(NotificationUpdateSettings value) updateSettings,
  }) {
    return updateSettings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotificationFetch value)? fetch,
    TResult? Function(NotificationMarkRead value)? markRead,
    TResult? Function(NotificationMarkAllRead value)? markAllRead,
    TResult? Function(NotificationFetchUnreadCount value)? fetchUnreadCount,
    TResult? Function(NotificationFetchSettings value)? fetchSettings,
    TResult? Function(NotificationUpdateSettings value)? updateSettings,
  }) {
    return updateSettings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationFetch value)? fetch,
    TResult Function(NotificationMarkRead value)? markRead,
    TResult Function(NotificationMarkAllRead value)? markAllRead,
    TResult Function(NotificationFetchUnreadCount value)? fetchUnreadCount,
    TResult Function(NotificationFetchSettings value)? fetchSettings,
    TResult Function(NotificationUpdateSettings value)? updateSettings,
    required TResult orElse(),
  }) {
    if (updateSettings != null) {
      return updateSettings(this);
    }
    return orElse();
  }
}

abstract class NotificationUpdateSettings implements NotificationEvent {
  const factory NotificationUpdateSettings({
    required final bool dailyReminder,
    required final bool newContent,
    required final bool eventReminder,
  }) = _$NotificationUpdateSettingsImpl;

  bool get dailyReminder;
  bool get newContent;
  bool get eventReminder;

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationUpdateSettingsImplCopyWith<_$NotificationUpdateSettingsImpl>
  get copyWith => throw _privateConstructorUsedError;
}
