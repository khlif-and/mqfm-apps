// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'preferences.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PreferencesEntity _$PreferencesEntityFromJson(Map<String, dynamic> json) {
  return _PreferencesEntity.fromJson(json);
}

/// @nodoc
mixin _$PreferencesEntity {
  double get playbackSpeed => throw _privateConstructorUsedError;
  int get sleepTimerMinutes => throw _privateConstructorUsedError;
  bool get autoDownload => throw _privateConstructorUsedError;

  /// Serializes this PreferencesEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PreferencesEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PreferencesEntityCopyWith<PreferencesEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreferencesEntityCopyWith<$Res> {
  factory $PreferencesEntityCopyWith(
    PreferencesEntity value,
    $Res Function(PreferencesEntity) then,
  ) = _$PreferencesEntityCopyWithImpl<$Res, PreferencesEntity>;
  @useResult
  $Res call({double playbackSpeed, int sleepTimerMinutes, bool autoDownload});
}

/// @nodoc
class _$PreferencesEntityCopyWithImpl<$Res, $Val extends PreferencesEntity>
    implements $PreferencesEntityCopyWith<$Res> {
  _$PreferencesEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PreferencesEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playbackSpeed = null,
    Object? sleepTimerMinutes = null,
    Object? autoDownload = null,
  }) {
    return _then(
      _value.copyWith(
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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PreferencesEntityImplCopyWith<$Res>
    implements $PreferencesEntityCopyWith<$Res> {
  factory _$$PreferencesEntityImplCopyWith(
    _$PreferencesEntityImpl value,
    $Res Function(_$PreferencesEntityImpl) then,
  ) = __$$PreferencesEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double playbackSpeed, int sleepTimerMinutes, bool autoDownload});
}

/// @nodoc
class __$$PreferencesEntityImplCopyWithImpl<$Res>
    extends _$PreferencesEntityCopyWithImpl<$Res, _$PreferencesEntityImpl>
    implements _$$PreferencesEntityImplCopyWith<$Res> {
  __$$PreferencesEntityImplCopyWithImpl(
    _$PreferencesEntityImpl _value,
    $Res Function(_$PreferencesEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PreferencesEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playbackSpeed = null,
    Object? sleepTimerMinutes = null,
    Object? autoDownload = null,
  }) {
    return _then(
      _$PreferencesEntityImpl(
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
@JsonSerializable()
class _$PreferencesEntityImpl implements _PreferencesEntity {
  const _$PreferencesEntityImpl({
    this.playbackSpeed = 1.0,
    this.sleepTimerMinutes = 0,
    this.autoDownload = false,
  });

  factory _$PreferencesEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PreferencesEntityImplFromJson(json);

  @override
  @JsonKey()
  final double playbackSpeed;
  @override
  @JsonKey()
  final int sleepTimerMinutes;
  @override
  @JsonKey()
  final bool autoDownload;

  @override
  String toString() {
    return 'PreferencesEntity(playbackSpeed: $playbackSpeed, sleepTimerMinutes: $sleepTimerMinutes, autoDownload: $autoDownload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreferencesEntityImpl &&
            (identical(other.playbackSpeed, playbackSpeed) ||
                other.playbackSpeed == playbackSpeed) &&
            (identical(other.sleepTimerMinutes, sleepTimerMinutes) ||
                other.sleepTimerMinutes == sleepTimerMinutes) &&
            (identical(other.autoDownload, autoDownload) ||
                other.autoDownload == autoDownload));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, playbackSpeed, sleepTimerMinutes, autoDownload);

  /// Create a copy of PreferencesEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PreferencesEntityImplCopyWith<_$PreferencesEntityImpl> get copyWith =>
      __$$PreferencesEntityImplCopyWithImpl<_$PreferencesEntityImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PreferencesEntityImplToJson(this);
  }
}

abstract class _PreferencesEntity implements PreferencesEntity {
  const factory _PreferencesEntity({
    final double playbackSpeed,
    final int sleepTimerMinutes,
    final bool autoDownload,
  }) = _$PreferencesEntityImpl;

  factory _PreferencesEntity.fromJson(Map<String, dynamic> json) =
      _$PreferencesEntityImpl.fromJson;

  @override
  double get playbackSpeed;
  @override
  int get sleepTimerMinutes;
  @override
  bool get autoDownload;

  /// Create a copy of PreferencesEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PreferencesEntityImplCopyWith<_$PreferencesEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
