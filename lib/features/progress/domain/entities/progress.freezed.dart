// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'progress.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProgressEntity _$ProgressEntityFromJson(Map<String, dynamic> json) {
  return _ProgressEntity.fromJson(json);
}

/// @nodoc
mixin _$ProgressEntity {
  int get audioId => throw _privateConstructorUsedError;
  int get lastPosition => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  double get percentage => throw _privateConstructorUsedError;
  bool get completed => throw _privateConstructorUsedError;

  /// Serializes this ProgressEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProgressEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProgressEntityCopyWith<ProgressEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgressEntityCopyWith<$Res> {
  factory $ProgressEntityCopyWith(
    ProgressEntity value,
    $Res Function(ProgressEntity) then,
  ) = _$ProgressEntityCopyWithImpl<$Res, ProgressEntity>;
  @useResult
  $Res call({
    int audioId,
    int lastPosition,
    int duration,
    double percentage,
    bool completed,
  });
}

/// @nodoc
class _$ProgressEntityCopyWithImpl<$Res, $Val extends ProgressEntity>
    implements $ProgressEntityCopyWith<$Res> {
  _$ProgressEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProgressEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audioId = null,
    Object? lastPosition = null,
    Object? duration = null,
    Object? percentage = null,
    Object? completed = null,
  }) {
    return _then(
      _value.copyWith(
            audioId: null == audioId
                ? _value.audioId
                : audioId // ignore: cast_nullable_to_non_nullable
                      as int,
            lastPosition: null == lastPosition
                ? _value.lastPosition
                : lastPosition // ignore: cast_nullable_to_non_nullable
                      as int,
            duration: null == duration
                ? _value.duration
                : duration // ignore: cast_nullable_to_non_nullable
                      as int,
            percentage: null == percentage
                ? _value.percentage
                : percentage // ignore: cast_nullable_to_non_nullable
                      as double,
            completed: null == completed
                ? _value.completed
                : completed // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProgressEntityImplCopyWith<$Res>
    implements $ProgressEntityCopyWith<$Res> {
  factory _$$ProgressEntityImplCopyWith(
    _$ProgressEntityImpl value,
    $Res Function(_$ProgressEntityImpl) then,
  ) = __$$ProgressEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int audioId,
    int lastPosition,
    int duration,
    double percentage,
    bool completed,
  });
}

/// @nodoc
class __$$ProgressEntityImplCopyWithImpl<$Res>
    extends _$ProgressEntityCopyWithImpl<$Res, _$ProgressEntityImpl>
    implements _$$ProgressEntityImplCopyWith<$Res> {
  __$$ProgressEntityImplCopyWithImpl(
    _$ProgressEntityImpl _value,
    $Res Function(_$ProgressEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProgressEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audioId = null,
    Object? lastPosition = null,
    Object? duration = null,
    Object? percentage = null,
    Object? completed = null,
  }) {
    return _then(
      _$ProgressEntityImpl(
        audioId: null == audioId
            ? _value.audioId
            : audioId // ignore: cast_nullable_to_non_nullable
                  as int,
        lastPosition: null == lastPosition
            ? _value.lastPosition
            : lastPosition // ignore: cast_nullable_to_non_nullable
                  as int,
        duration: null == duration
            ? _value.duration
            : duration // ignore: cast_nullable_to_non_nullable
                  as int,
        percentage: null == percentage
            ? _value.percentage
            : percentage // ignore: cast_nullable_to_non_nullable
                  as double,
        completed: null == completed
            ? _value.completed
            : completed // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProgressEntityImpl implements _ProgressEntity {
  const _$ProgressEntityImpl({
    this.audioId = 0,
    this.lastPosition = 0,
    this.duration = 0,
    this.percentage = 0.0,
    this.completed = false,
  });

  factory _$ProgressEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProgressEntityImplFromJson(json);

  @override
  @JsonKey()
  final int audioId;
  @override
  @JsonKey()
  final int lastPosition;
  @override
  @JsonKey()
  final int duration;
  @override
  @JsonKey()
  final double percentage;
  @override
  @JsonKey()
  final bool completed;

  @override
  String toString() {
    return 'ProgressEntity(audioId: $audioId, lastPosition: $lastPosition, duration: $duration, percentage: $percentage, completed: $completed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgressEntityImpl &&
            (identical(other.audioId, audioId) || other.audioId == audioId) &&
            (identical(other.lastPosition, lastPosition) ||
                other.lastPosition == lastPosition) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.percentage, percentage) ||
                other.percentage == percentage) &&
            (identical(other.completed, completed) ||
                other.completed == completed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    audioId,
    lastPosition,
    duration,
    percentage,
    completed,
  );

  /// Create a copy of ProgressEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgressEntityImplCopyWith<_$ProgressEntityImpl> get copyWith =>
      __$$ProgressEntityImplCopyWithImpl<_$ProgressEntityImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProgressEntityImplToJson(this);
  }
}

abstract class _ProgressEntity implements ProgressEntity {
  const factory _ProgressEntity({
    final int audioId,
    final int lastPosition,
    final int duration,
    final double percentage,
    final bool completed,
  }) = _$ProgressEntityImpl;

  factory _ProgressEntity.fromJson(Map<String, dynamic> json) =
      _$ProgressEntityImpl.fromJson;

  @override
  int get audioId;
  @override
  int get lastPosition;
  @override
  int get duration;
  @override
  double get percentage;
  @override
  bool get completed;

  /// Create a copy of ProgressEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProgressEntityImplCopyWith<_$ProgressEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
