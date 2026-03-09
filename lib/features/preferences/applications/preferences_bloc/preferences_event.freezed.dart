// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'preferences_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PreferencesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(
      double playbackSpeed,
      int sleepTimerMinutes,
      bool autoDownload,
    )
    update,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(
      double playbackSpeed,
      int sleepTimerMinutes,
      bool autoDownload,
    )?
    update,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(
      double playbackSpeed,
      int sleepTimerMinutes,
      bool autoDownload,
    )?
    update,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PreferencesFetch value) fetch,
    required TResult Function(PreferencesUpdate value) update,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PreferencesFetch value)? fetch,
    TResult? Function(PreferencesUpdate value)? update,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreferencesFetch value)? fetch,
    TResult Function(PreferencesUpdate value)? update,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreferencesEventCopyWith<$Res> {
  factory $PreferencesEventCopyWith(
    PreferencesEvent value,
    $Res Function(PreferencesEvent) then,
  ) = _$PreferencesEventCopyWithImpl<$Res, PreferencesEvent>;
}

/// @nodoc
class _$PreferencesEventCopyWithImpl<$Res, $Val extends PreferencesEvent>
    implements $PreferencesEventCopyWith<$Res> {
  _$PreferencesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PreferencesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PreferencesFetchImplCopyWith<$Res> {
  factory _$$PreferencesFetchImplCopyWith(
    _$PreferencesFetchImpl value,
    $Res Function(_$PreferencesFetchImpl) then,
  ) = __$$PreferencesFetchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PreferencesFetchImplCopyWithImpl<$Res>
    extends _$PreferencesEventCopyWithImpl<$Res, _$PreferencesFetchImpl>
    implements _$$PreferencesFetchImplCopyWith<$Res> {
  __$$PreferencesFetchImplCopyWithImpl(
    _$PreferencesFetchImpl _value,
    $Res Function(_$PreferencesFetchImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PreferencesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PreferencesFetchImpl implements PreferencesFetch {
  const _$PreferencesFetchImpl();

  @override
  String toString() {
    return 'PreferencesEvent.fetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PreferencesFetchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(
      double playbackSpeed,
      int sleepTimerMinutes,
      bool autoDownload,
    )
    update,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(
      double playbackSpeed,
      int sleepTimerMinutes,
      bool autoDownload,
    )?
    update,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(
      double playbackSpeed,
      int sleepTimerMinutes,
      bool autoDownload,
    )?
    update,
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
    required TResult Function(PreferencesFetch value) fetch,
    required TResult Function(PreferencesUpdate value) update,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PreferencesFetch value)? fetch,
    TResult? Function(PreferencesUpdate value)? update,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreferencesFetch value)? fetch,
    TResult Function(PreferencesUpdate value)? update,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class PreferencesFetch implements PreferencesEvent {
  const factory PreferencesFetch() = _$PreferencesFetchImpl;
}

/// @nodoc
abstract class _$$PreferencesUpdateImplCopyWith<$Res> {
  factory _$$PreferencesUpdateImplCopyWith(
    _$PreferencesUpdateImpl value,
    $Res Function(_$PreferencesUpdateImpl) then,
  ) = __$$PreferencesUpdateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double playbackSpeed, int sleepTimerMinutes, bool autoDownload});
}

/// @nodoc
class __$$PreferencesUpdateImplCopyWithImpl<$Res>
    extends _$PreferencesEventCopyWithImpl<$Res, _$PreferencesUpdateImpl>
    implements _$$PreferencesUpdateImplCopyWith<$Res> {
  __$$PreferencesUpdateImplCopyWithImpl(
    _$PreferencesUpdateImpl _value,
    $Res Function(_$PreferencesUpdateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PreferencesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playbackSpeed = null,
    Object? sleepTimerMinutes = null,
    Object? autoDownload = null,
  }) {
    return _then(
      _$PreferencesUpdateImpl(
        playbackSpeed: null == playbackSpeed
            ? _value.playbackSpeed
            : playbackSpeed // ignore: cast_nullable_to_non_nullable
                  as double,
        sleepTimerMinutes: null == sleepTimerMinutes
            ? _value.sleepTimerMinutes
            : sleepTimerMinutes // ignore: cast_nullable_to_non_nullable
                  as int,
        autoDownload: null == autoDownload
            ? _value.autoDownload
            : autoDownload // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$PreferencesUpdateImpl implements PreferencesUpdate {
  const _$PreferencesUpdateImpl({
    required this.playbackSpeed,
    required this.sleepTimerMinutes,
    required this.autoDownload,
  });

  @override
  final double playbackSpeed;
  @override
  final int sleepTimerMinutes;
  @override
  final bool autoDownload;

  @override
  String toString() {
    return 'PreferencesEvent.update(playbackSpeed: $playbackSpeed, sleepTimerMinutes: $sleepTimerMinutes, autoDownload: $autoDownload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreferencesUpdateImpl &&
            (identical(other.playbackSpeed, playbackSpeed) ||
                other.playbackSpeed == playbackSpeed) &&
            (identical(other.sleepTimerMinutes, sleepTimerMinutes) ||
                other.sleepTimerMinutes == sleepTimerMinutes) &&
            (identical(other.autoDownload, autoDownload) ||
                other.autoDownload == autoDownload));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, playbackSpeed, sleepTimerMinutes, autoDownload);

  /// Create a copy of PreferencesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PreferencesUpdateImplCopyWith<_$PreferencesUpdateImpl> get copyWith =>
      __$$PreferencesUpdateImplCopyWithImpl<_$PreferencesUpdateImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(
      double playbackSpeed,
      int sleepTimerMinutes,
      bool autoDownload,
    )
    update,
  }) {
    return update(playbackSpeed, sleepTimerMinutes, autoDownload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(
      double playbackSpeed,
      int sleepTimerMinutes,
      bool autoDownload,
    )?
    update,
  }) {
    return update?.call(playbackSpeed, sleepTimerMinutes, autoDownload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(
      double playbackSpeed,
      int sleepTimerMinutes,
      bool autoDownload,
    )?
    update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(playbackSpeed, sleepTimerMinutes, autoDownload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PreferencesFetch value) fetch,
    required TResult Function(PreferencesUpdate value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PreferencesFetch value)? fetch,
    TResult? Function(PreferencesUpdate value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreferencesFetch value)? fetch,
    TResult Function(PreferencesUpdate value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class PreferencesUpdate implements PreferencesEvent {
  const factory PreferencesUpdate({
    required final double playbackSpeed,
    required final int sleepTimerMinutes,
    required final bool autoDownload,
  }) = _$PreferencesUpdateImpl;

  double get playbackSpeed;
  int get sleepTimerMinutes;
  bool get autoDownload;

  /// Create a copy of PreferencesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PreferencesUpdateImplCopyWith<_$PreferencesUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
