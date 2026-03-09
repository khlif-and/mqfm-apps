// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$NotificationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<NotificationEntity> notifications) loaded,
    required TResult Function(int count) unreadCount,
    required TResult Function(NotificationSettingsEntity settings)
    settingsLoaded,
    required TResult Function(String message) actionSuccess,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<NotificationEntity> notifications)? loaded,
    TResult? Function(int count)? unreadCount,
    TResult? Function(NotificationSettingsEntity settings)? settingsLoaded,
    TResult? Function(String message)? actionSuccess,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NotificationEntity> notifications)? loaded,
    TResult Function(int count)? unreadCount,
    TResult Function(NotificationSettingsEntity settings)? settingsLoaded,
    TResult Function(String message)? actionSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotificationInitial value) initial,
    required TResult Function(NotificationLoading value) loading,
    required TResult Function(NotificationLoaded value) loaded,
    required TResult Function(NotificationUnreadCount value) unreadCount,
    required TResult Function(NotificationSettingsLoaded value) settingsLoaded,
    required TResult Function(NotificationActionSuccess value) actionSuccess,
    required TResult Function(NotificationError value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotificationInitial value)? initial,
    TResult? Function(NotificationLoading value)? loading,
    TResult? Function(NotificationLoaded value)? loaded,
    TResult? Function(NotificationUnreadCount value)? unreadCount,
    TResult? Function(NotificationSettingsLoaded value)? settingsLoaded,
    TResult? Function(NotificationActionSuccess value)? actionSuccess,
    TResult? Function(NotificationError value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationInitial value)? initial,
    TResult Function(NotificationLoading value)? loading,
    TResult Function(NotificationLoaded value)? loaded,
    TResult Function(NotificationUnreadCount value)? unreadCount,
    TResult Function(NotificationSettingsLoaded value)? settingsLoaded,
    TResult Function(NotificationActionSuccess value)? actionSuccess,
    TResult Function(NotificationError value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationStateCopyWith<$Res> {
  factory $NotificationStateCopyWith(
    NotificationState value,
    $Res Function(NotificationState) then,
  ) = _$NotificationStateCopyWithImpl<$Res, NotificationState>;
}

/// @nodoc
class _$NotificationStateCopyWithImpl<$Res, $Val extends NotificationState>
    implements $NotificationStateCopyWith<$Res> {
  _$NotificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NotificationInitialImplCopyWith<$Res> {
  factory _$$NotificationInitialImplCopyWith(
    _$NotificationInitialImpl value,
    $Res Function(_$NotificationInitialImpl) then,
  ) = __$$NotificationInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotificationInitialImplCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$NotificationInitialImpl>
    implements _$$NotificationInitialImplCopyWith<$Res> {
  __$$NotificationInitialImplCopyWithImpl(
    _$NotificationInitialImpl _value,
    $Res Function(_$NotificationInitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NotificationInitialImpl implements NotificationInitial {
  const _$NotificationInitialImpl();

  @override
  String toString() {
    return 'NotificationState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<NotificationEntity> notifications) loaded,
    required TResult Function(int count) unreadCount,
    required TResult Function(NotificationSettingsEntity settings)
    settingsLoaded,
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
    TResult? Function(List<NotificationEntity> notifications)? loaded,
    TResult? Function(int count)? unreadCount,
    TResult? Function(NotificationSettingsEntity settings)? settingsLoaded,
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
    TResult Function(List<NotificationEntity> notifications)? loaded,
    TResult Function(int count)? unreadCount,
    TResult Function(NotificationSettingsEntity settings)? settingsLoaded,
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
    required TResult Function(NotificationInitial value) initial,
    required TResult Function(NotificationLoading value) loading,
    required TResult Function(NotificationLoaded value) loaded,
    required TResult Function(NotificationUnreadCount value) unreadCount,
    required TResult Function(NotificationSettingsLoaded value) settingsLoaded,
    required TResult Function(NotificationActionSuccess value) actionSuccess,
    required TResult Function(NotificationError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotificationInitial value)? initial,
    TResult? Function(NotificationLoading value)? loading,
    TResult? Function(NotificationLoaded value)? loaded,
    TResult? Function(NotificationUnreadCount value)? unreadCount,
    TResult? Function(NotificationSettingsLoaded value)? settingsLoaded,
    TResult? Function(NotificationActionSuccess value)? actionSuccess,
    TResult? Function(NotificationError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationInitial value)? initial,
    TResult Function(NotificationLoading value)? loading,
    TResult Function(NotificationLoaded value)? loaded,
    TResult Function(NotificationUnreadCount value)? unreadCount,
    TResult Function(NotificationSettingsLoaded value)? settingsLoaded,
    TResult Function(NotificationActionSuccess value)? actionSuccess,
    TResult Function(NotificationError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class NotificationInitial implements NotificationState {
  const factory NotificationInitial() = _$NotificationInitialImpl;
}

/// @nodoc
abstract class _$$NotificationLoadingImplCopyWith<$Res> {
  factory _$$NotificationLoadingImplCopyWith(
    _$NotificationLoadingImpl value,
    $Res Function(_$NotificationLoadingImpl) then,
  ) = __$$NotificationLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotificationLoadingImplCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$NotificationLoadingImpl>
    implements _$$NotificationLoadingImplCopyWith<$Res> {
  __$$NotificationLoadingImplCopyWithImpl(
    _$NotificationLoadingImpl _value,
    $Res Function(_$NotificationLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NotificationLoadingImpl implements NotificationLoading {
  const _$NotificationLoadingImpl();

  @override
  String toString() {
    return 'NotificationState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<NotificationEntity> notifications) loaded,
    required TResult Function(int count) unreadCount,
    required TResult Function(NotificationSettingsEntity settings)
    settingsLoaded,
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
    TResult? Function(List<NotificationEntity> notifications)? loaded,
    TResult? Function(int count)? unreadCount,
    TResult? Function(NotificationSettingsEntity settings)? settingsLoaded,
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
    TResult Function(List<NotificationEntity> notifications)? loaded,
    TResult Function(int count)? unreadCount,
    TResult Function(NotificationSettingsEntity settings)? settingsLoaded,
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
    required TResult Function(NotificationInitial value) initial,
    required TResult Function(NotificationLoading value) loading,
    required TResult Function(NotificationLoaded value) loaded,
    required TResult Function(NotificationUnreadCount value) unreadCount,
    required TResult Function(NotificationSettingsLoaded value) settingsLoaded,
    required TResult Function(NotificationActionSuccess value) actionSuccess,
    required TResult Function(NotificationError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotificationInitial value)? initial,
    TResult? Function(NotificationLoading value)? loading,
    TResult? Function(NotificationLoaded value)? loaded,
    TResult? Function(NotificationUnreadCount value)? unreadCount,
    TResult? Function(NotificationSettingsLoaded value)? settingsLoaded,
    TResult? Function(NotificationActionSuccess value)? actionSuccess,
    TResult? Function(NotificationError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationInitial value)? initial,
    TResult Function(NotificationLoading value)? loading,
    TResult Function(NotificationLoaded value)? loaded,
    TResult Function(NotificationUnreadCount value)? unreadCount,
    TResult Function(NotificationSettingsLoaded value)? settingsLoaded,
    TResult Function(NotificationActionSuccess value)? actionSuccess,
    TResult Function(NotificationError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class NotificationLoading implements NotificationState {
  const factory NotificationLoading() = _$NotificationLoadingImpl;
}

/// @nodoc
abstract class _$$NotificationLoadedImplCopyWith<$Res> {
  factory _$$NotificationLoadedImplCopyWith(
    _$NotificationLoadedImpl value,
    $Res Function(_$NotificationLoadedImpl) then,
  ) = __$$NotificationLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<NotificationEntity> notifications});
}

/// @nodoc
class __$$NotificationLoadedImplCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$NotificationLoadedImpl>
    implements _$$NotificationLoadedImplCopyWith<$Res> {
  __$$NotificationLoadedImplCopyWithImpl(
    _$NotificationLoadedImpl _value,
    $Res Function(_$NotificationLoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? notifications = null}) {
    return _then(
      _$NotificationLoadedImpl(
        notifications: null == notifications
            ? _value._notifications
            : notifications // ignore: cast_nullable_to_non_nullable
                  as List<NotificationEntity>,
      ),
    );
  }
}

/// @nodoc

class _$NotificationLoadedImpl implements NotificationLoaded {
  const _$NotificationLoadedImpl({
    required final List<NotificationEntity> notifications,
  }) : _notifications = notifications;

  final List<NotificationEntity> _notifications;
  @override
  List<NotificationEntity> get notifications {
    if (_notifications is EqualUnmodifiableListView) return _notifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notifications);
  }

  @override
  String toString() {
    return 'NotificationState.loaded(notifications: $notifications)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationLoadedImpl &&
            const DeepCollectionEquality().equals(
              other._notifications,
              _notifications,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_notifications),
  );

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationLoadedImplCopyWith<_$NotificationLoadedImpl> get copyWith =>
      __$$NotificationLoadedImplCopyWithImpl<_$NotificationLoadedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<NotificationEntity> notifications) loaded,
    required TResult Function(int count) unreadCount,
    required TResult Function(NotificationSettingsEntity settings)
    settingsLoaded,
    required TResult Function(String message) actionSuccess,
    required TResult Function(String message) error,
  }) {
    return loaded(notifications);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<NotificationEntity> notifications)? loaded,
    TResult? Function(int count)? unreadCount,
    TResult? Function(NotificationSettingsEntity settings)? settingsLoaded,
    TResult? Function(String message)? actionSuccess,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(notifications);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NotificationEntity> notifications)? loaded,
    TResult Function(int count)? unreadCount,
    TResult Function(NotificationSettingsEntity settings)? settingsLoaded,
    TResult Function(String message)? actionSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(notifications);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotificationInitial value) initial,
    required TResult Function(NotificationLoading value) loading,
    required TResult Function(NotificationLoaded value) loaded,
    required TResult Function(NotificationUnreadCount value) unreadCount,
    required TResult Function(NotificationSettingsLoaded value) settingsLoaded,
    required TResult Function(NotificationActionSuccess value) actionSuccess,
    required TResult Function(NotificationError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotificationInitial value)? initial,
    TResult? Function(NotificationLoading value)? loading,
    TResult? Function(NotificationLoaded value)? loaded,
    TResult? Function(NotificationUnreadCount value)? unreadCount,
    TResult? Function(NotificationSettingsLoaded value)? settingsLoaded,
    TResult? Function(NotificationActionSuccess value)? actionSuccess,
    TResult? Function(NotificationError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationInitial value)? initial,
    TResult Function(NotificationLoading value)? loading,
    TResult Function(NotificationLoaded value)? loaded,
    TResult Function(NotificationUnreadCount value)? unreadCount,
    TResult Function(NotificationSettingsLoaded value)? settingsLoaded,
    TResult Function(NotificationActionSuccess value)? actionSuccess,
    TResult Function(NotificationError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class NotificationLoaded implements NotificationState {
  const factory NotificationLoaded({
    required final List<NotificationEntity> notifications,
  }) = _$NotificationLoadedImpl;

  List<NotificationEntity> get notifications;

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationLoadedImplCopyWith<_$NotificationLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotificationUnreadCountImplCopyWith<$Res> {
  factory _$$NotificationUnreadCountImplCopyWith(
    _$NotificationUnreadCountImpl value,
    $Res Function(_$NotificationUnreadCountImpl) then,
  ) = __$$NotificationUnreadCountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int count});
}

/// @nodoc
class __$$NotificationUnreadCountImplCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$NotificationUnreadCountImpl>
    implements _$$NotificationUnreadCountImplCopyWith<$Res> {
  __$$NotificationUnreadCountImplCopyWithImpl(
    _$NotificationUnreadCountImpl _value,
    $Res Function(_$NotificationUnreadCountImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? count = null}) {
    return _then(
      _$NotificationUnreadCountImpl(
        count: null == count
            ? _value.count
            : count // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$NotificationUnreadCountImpl implements NotificationUnreadCount {
  const _$NotificationUnreadCountImpl({required this.count});

  @override
  final int count;

  @override
  String toString() {
    return 'NotificationState.unreadCount(count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationUnreadCountImpl &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, count);

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationUnreadCountImplCopyWith<_$NotificationUnreadCountImpl>
  get copyWith =>
      __$$NotificationUnreadCountImplCopyWithImpl<
        _$NotificationUnreadCountImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<NotificationEntity> notifications) loaded,
    required TResult Function(int count) unreadCount,
    required TResult Function(NotificationSettingsEntity settings)
    settingsLoaded,
    required TResult Function(String message) actionSuccess,
    required TResult Function(String message) error,
  }) {
    return unreadCount(count);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<NotificationEntity> notifications)? loaded,
    TResult? Function(int count)? unreadCount,
    TResult? Function(NotificationSettingsEntity settings)? settingsLoaded,
    TResult? Function(String message)? actionSuccess,
    TResult? Function(String message)? error,
  }) {
    return unreadCount?.call(count);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NotificationEntity> notifications)? loaded,
    TResult Function(int count)? unreadCount,
    TResult Function(NotificationSettingsEntity settings)? settingsLoaded,
    TResult Function(String message)? actionSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (unreadCount != null) {
      return unreadCount(count);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotificationInitial value) initial,
    required TResult Function(NotificationLoading value) loading,
    required TResult Function(NotificationLoaded value) loaded,
    required TResult Function(NotificationUnreadCount value) unreadCount,
    required TResult Function(NotificationSettingsLoaded value) settingsLoaded,
    required TResult Function(NotificationActionSuccess value) actionSuccess,
    required TResult Function(NotificationError value) error,
  }) {
    return unreadCount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotificationInitial value)? initial,
    TResult? Function(NotificationLoading value)? loading,
    TResult? Function(NotificationLoaded value)? loaded,
    TResult? Function(NotificationUnreadCount value)? unreadCount,
    TResult? Function(NotificationSettingsLoaded value)? settingsLoaded,
    TResult? Function(NotificationActionSuccess value)? actionSuccess,
    TResult? Function(NotificationError value)? error,
  }) {
    return unreadCount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationInitial value)? initial,
    TResult Function(NotificationLoading value)? loading,
    TResult Function(NotificationLoaded value)? loaded,
    TResult Function(NotificationUnreadCount value)? unreadCount,
    TResult Function(NotificationSettingsLoaded value)? settingsLoaded,
    TResult Function(NotificationActionSuccess value)? actionSuccess,
    TResult Function(NotificationError value)? error,
    required TResult orElse(),
  }) {
    if (unreadCount != null) {
      return unreadCount(this);
    }
    return orElse();
  }
}

abstract class NotificationUnreadCount implements NotificationState {
  const factory NotificationUnreadCount({required final int count}) =
      _$NotificationUnreadCountImpl;

  int get count;

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationUnreadCountImplCopyWith<_$NotificationUnreadCountImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotificationSettingsLoadedImplCopyWith<$Res> {
  factory _$$NotificationSettingsLoadedImplCopyWith(
    _$NotificationSettingsLoadedImpl value,
    $Res Function(_$NotificationSettingsLoadedImpl) then,
  ) = __$$NotificationSettingsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NotificationSettingsEntity settings});

  $NotificationSettingsEntityCopyWith<$Res> get settings;
}

/// @nodoc
class __$$NotificationSettingsLoadedImplCopyWithImpl<$Res>
    extends
        _$NotificationStateCopyWithImpl<$Res, _$NotificationSettingsLoadedImpl>
    implements _$$NotificationSettingsLoadedImplCopyWith<$Res> {
  __$$NotificationSettingsLoadedImplCopyWithImpl(
    _$NotificationSettingsLoadedImpl _value,
    $Res Function(_$NotificationSettingsLoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? settings = null}) {
    return _then(
      _$NotificationSettingsLoadedImpl(
        settings: null == settings
            ? _value.settings
            : settings // ignore: cast_nullable_to_non_nullable
                  as NotificationSettingsEntity,
      ),
    );
  }

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NotificationSettingsEntityCopyWith<$Res> get settings {
    return $NotificationSettingsEntityCopyWith<$Res>(_value.settings, (value) {
      return _then(_value.copyWith(settings: value));
    });
  }
}

/// @nodoc

class _$NotificationSettingsLoadedImpl implements NotificationSettingsLoaded {
  const _$NotificationSettingsLoadedImpl({required this.settings});

  @override
  final NotificationSettingsEntity settings;

  @override
  String toString() {
    return 'NotificationState.settingsLoaded(settings: $settings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationSettingsLoadedImpl &&
            (identical(other.settings, settings) ||
                other.settings == settings));
  }

  @override
  int get hashCode => Object.hash(runtimeType, settings);

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationSettingsLoadedImplCopyWith<_$NotificationSettingsLoadedImpl>
  get copyWith =>
      __$$NotificationSettingsLoadedImplCopyWithImpl<
        _$NotificationSettingsLoadedImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<NotificationEntity> notifications) loaded,
    required TResult Function(int count) unreadCount,
    required TResult Function(NotificationSettingsEntity settings)
    settingsLoaded,
    required TResult Function(String message) actionSuccess,
    required TResult Function(String message) error,
  }) {
    return settingsLoaded(settings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<NotificationEntity> notifications)? loaded,
    TResult? Function(int count)? unreadCount,
    TResult? Function(NotificationSettingsEntity settings)? settingsLoaded,
    TResult? Function(String message)? actionSuccess,
    TResult? Function(String message)? error,
  }) {
    return settingsLoaded?.call(settings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NotificationEntity> notifications)? loaded,
    TResult Function(int count)? unreadCount,
    TResult Function(NotificationSettingsEntity settings)? settingsLoaded,
    TResult Function(String message)? actionSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (settingsLoaded != null) {
      return settingsLoaded(settings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotificationInitial value) initial,
    required TResult Function(NotificationLoading value) loading,
    required TResult Function(NotificationLoaded value) loaded,
    required TResult Function(NotificationUnreadCount value) unreadCount,
    required TResult Function(NotificationSettingsLoaded value) settingsLoaded,
    required TResult Function(NotificationActionSuccess value) actionSuccess,
    required TResult Function(NotificationError value) error,
  }) {
    return settingsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotificationInitial value)? initial,
    TResult? Function(NotificationLoading value)? loading,
    TResult? Function(NotificationLoaded value)? loaded,
    TResult? Function(NotificationUnreadCount value)? unreadCount,
    TResult? Function(NotificationSettingsLoaded value)? settingsLoaded,
    TResult? Function(NotificationActionSuccess value)? actionSuccess,
    TResult? Function(NotificationError value)? error,
  }) {
    return settingsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationInitial value)? initial,
    TResult Function(NotificationLoading value)? loading,
    TResult Function(NotificationLoaded value)? loaded,
    TResult Function(NotificationUnreadCount value)? unreadCount,
    TResult Function(NotificationSettingsLoaded value)? settingsLoaded,
    TResult Function(NotificationActionSuccess value)? actionSuccess,
    TResult Function(NotificationError value)? error,
    required TResult orElse(),
  }) {
    if (settingsLoaded != null) {
      return settingsLoaded(this);
    }
    return orElse();
  }
}

abstract class NotificationSettingsLoaded implements NotificationState {
  const factory NotificationSettingsLoaded({
    required final NotificationSettingsEntity settings,
  }) = _$NotificationSettingsLoadedImpl;

  NotificationSettingsEntity get settings;

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationSettingsLoadedImplCopyWith<_$NotificationSettingsLoadedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotificationActionSuccessImplCopyWith<$Res> {
  factory _$$NotificationActionSuccessImplCopyWith(
    _$NotificationActionSuccessImpl value,
    $Res Function(_$NotificationActionSuccessImpl) then,
  ) = __$$NotificationActionSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$NotificationActionSuccessImplCopyWithImpl<$Res>
    extends
        _$NotificationStateCopyWithImpl<$Res, _$NotificationActionSuccessImpl>
    implements _$$NotificationActionSuccessImplCopyWith<$Res> {
  __$$NotificationActionSuccessImplCopyWithImpl(
    _$NotificationActionSuccessImpl _value,
    $Res Function(_$NotificationActionSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$NotificationActionSuccessImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$NotificationActionSuccessImpl implements NotificationActionSuccess {
  const _$NotificationActionSuccessImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'NotificationState.actionSuccess(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationActionSuccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationActionSuccessImplCopyWith<_$NotificationActionSuccessImpl>
  get copyWith =>
      __$$NotificationActionSuccessImplCopyWithImpl<
        _$NotificationActionSuccessImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<NotificationEntity> notifications) loaded,
    required TResult Function(int count) unreadCount,
    required TResult Function(NotificationSettingsEntity settings)
    settingsLoaded,
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
    TResult? Function(List<NotificationEntity> notifications)? loaded,
    TResult? Function(int count)? unreadCount,
    TResult? Function(NotificationSettingsEntity settings)? settingsLoaded,
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
    TResult Function(List<NotificationEntity> notifications)? loaded,
    TResult Function(int count)? unreadCount,
    TResult Function(NotificationSettingsEntity settings)? settingsLoaded,
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
    required TResult Function(NotificationInitial value) initial,
    required TResult Function(NotificationLoading value) loading,
    required TResult Function(NotificationLoaded value) loaded,
    required TResult Function(NotificationUnreadCount value) unreadCount,
    required TResult Function(NotificationSettingsLoaded value) settingsLoaded,
    required TResult Function(NotificationActionSuccess value) actionSuccess,
    required TResult Function(NotificationError value) error,
  }) {
    return actionSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotificationInitial value)? initial,
    TResult? Function(NotificationLoading value)? loading,
    TResult? Function(NotificationLoaded value)? loaded,
    TResult? Function(NotificationUnreadCount value)? unreadCount,
    TResult? Function(NotificationSettingsLoaded value)? settingsLoaded,
    TResult? Function(NotificationActionSuccess value)? actionSuccess,
    TResult? Function(NotificationError value)? error,
  }) {
    return actionSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationInitial value)? initial,
    TResult Function(NotificationLoading value)? loading,
    TResult Function(NotificationLoaded value)? loaded,
    TResult Function(NotificationUnreadCount value)? unreadCount,
    TResult Function(NotificationSettingsLoaded value)? settingsLoaded,
    TResult Function(NotificationActionSuccess value)? actionSuccess,
    TResult Function(NotificationError value)? error,
    required TResult orElse(),
  }) {
    if (actionSuccess != null) {
      return actionSuccess(this);
    }
    return orElse();
  }
}

abstract class NotificationActionSuccess implements NotificationState {
  const factory NotificationActionSuccess({required final String message}) =
      _$NotificationActionSuccessImpl;

  String get message;

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationActionSuccessImplCopyWith<_$NotificationActionSuccessImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotificationErrorImplCopyWith<$Res> {
  factory _$$NotificationErrorImplCopyWith(
    _$NotificationErrorImpl value,
    $Res Function(_$NotificationErrorImpl) then,
  ) = __$$NotificationErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$NotificationErrorImplCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$NotificationErrorImpl>
    implements _$$NotificationErrorImplCopyWith<$Res> {
  __$$NotificationErrorImplCopyWithImpl(
    _$NotificationErrorImpl _value,
    $Res Function(_$NotificationErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$NotificationErrorImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$NotificationErrorImpl implements NotificationError {
  const _$NotificationErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'NotificationState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationErrorImplCopyWith<_$NotificationErrorImpl> get copyWith =>
      __$$NotificationErrorImplCopyWithImpl<_$NotificationErrorImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<NotificationEntity> notifications) loaded,
    required TResult Function(int count) unreadCount,
    required TResult Function(NotificationSettingsEntity settings)
    settingsLoaded,
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
    TResult? Function(List<NotificationEntity> notifications)? loaded,
    TResult? Function(int count)? unreadCount,
    TResult? Function(NotificationSettingsEntity settings)? settingsLoaded,
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
    TResult Function(List<NotificationEntity> notifications)? loaded,
    TResult Function(int count)? unreadCount,
    TResult Function(NotificationSettingsEntity settings)? settingsLoaded,
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
    required TResult Function(NotificationInitial value) initial,
    required TResult Function(NotificationLoading value) loading,
    required TResult Function(NotificationLoaded value) loaded,
    required TResult Function(NotificationUnreadCount value) unreadCount,
    required TResult Function(NotificationSettingsLoaded value) settingsLoaded,
    required TResult Function(NotificationActionSuccess value) actionSuccess,
    required TResult Function(NotificationError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotificationInitial value)? initial,
    TResult? Function(NotificationLoading value)? loading,
    TResult? Function(NotificationLoaded value)? loaded,
    TResult? Function(NotificationUnreadCount value)? unreadCount,
    TResult? Function(NotificationSettingsLoaded value)? settingsLoaded,
    TResult? Function(NotificationActionSuccess value)? actionSuccess,
    TResult? Function(NotificationError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationInitial value)? initial,
    TResult Function(NotificationLoading value)? loading,
    TResult Function(NotificationLoaded value)? loaded,
    TResult Function(NotificationUnreadCount value)? unreadCount,
    TResult Function(NotificationSettingsLoaded value)? settingsLoaded,
    TResult Function(NotificationActionSuccess value)? actionSuccess,
    TResult Function(NotificationError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class NotificationError implements NotificationState {
  const factory NotificationError({required final String message}) =
      _$NotificationErrorImpl;

  String get message;

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationErrorImplCopyWith<_$NotificationErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
