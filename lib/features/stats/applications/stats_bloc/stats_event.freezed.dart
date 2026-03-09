// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stats_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$StatsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int audioId, int listenedSeconds) record,
    required TResult Function() fetchRecap,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int audioId, int listenedSeconds)? record,
    TResult? Function()? fetchRecap,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int audioId, int listenedSeconds)? record,
    TResult Function()? fetchRecap,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatsRecord value) record,
    required TResult Function(StatsFetchRecap value) fetchRecap,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatsRecord value)? record,
    TResult? Function(StatsFetchRecap value)? fetchRecap,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatsRecord value)? record,
    TResult Function(StatsFetchRecap value)? fetchRecap,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatsEventCopyWith<$Res> {
  factory $StatsEventCopyWith(
    StatsEvent value,
    $Res Function(StatsEvent) then,
  ) = _$StatsEventCopyWithImpl<$Res, StatsEvent>;
}

/// @nodoc
class _$StatsEventCopyWithImpl<$Res, $Val extends StatsEvent>
    implements $StatsEventCopyWith<$Res> {
  _$StatsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StatsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StatsRecordImplCopyWith<$Res> {
  factory _$$StatsRecordImplCopyWith(
    _$StatsRecordImpl value,
    $Res Function(_$StatsRecordImpl) then,
  ) = __$$StatsRecordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int audioId, int listenedSeconds});
}

/// @nodoc
class __$$StatsRecordImplCopyWithImpl<$Res>
    extends _$StatsEventCopyWithImpl<$Res, _$StatsRecordImpl>
    implements _$$StatsRecordImplCopyWith<$Res> {
  __$$StatsRecordImplCopyWithImpl(
    _$StatsRecordImpl _value,
    $Res Function(_$StatsRecordImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StatsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? audioId = null, Object? listenedSeconds = null}) {
    return _then(
      _$StatsRecordImpl(
        audioId: null == audioId
            ? _value.audioId
            : audioId // ignore: cast_nullable_to_non_nullable
                  as int,
        listenedSeconds: null == listenedSeconds
            ? _value.listenedSeconds
            : listenedSeconds // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$StatsRecordImpl implements StatsRecord {
  const _$StatsRecordImpl({
    required this.audioId,
    required this.listenedSeconds,
  });

  @override
  final int audioId;
  @override
  final int listenedSeconds;

  @override
  String toString() {
    return 'StatsEvent.record(audioId: $audioId, listenedSeconds: $listenedSeconds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatsRecordImpl &&
            (identical(other.audioId, audioId) || other.audioId == audioId) &&
            (identical(other.listenedSeconds, listenedSeconds) ||
                other.listenedSeconds == listenedSeconds));
  }

  @override
  int get hashCode => Object.hash(runtimeType, audioId, listenedSeconds);

  /// Create a copy of StatsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatsRecordImplCopyWith<_$StatsRecordImpl> get copyWith =>
      __$$StatsRecordImplCopyWithImpl<_$StatsRecordImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int audioId, int listenedSeconds) record,
    required TResult Function() fetchRecap,
  }) {
    return record(audioId, listenedSeconds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int audioId, int listenedSeconds)? record,
    TResult? Function()? fetchRecap,
  }) {
    return record?.call(audioId, listenedSeconds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int audioId, int listenedSeconds)? record,
    TResult Function()? fetchRecap,
    required TResult orElse(),
  }) {
    if (record != null) {
      return record(audioId, listenedSeconds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatsRecord value) record,
    required TResult Function(StatsFetchRecap value) fetchRecap,
  }) {
    return record(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatsRecord value)? record,
    TResult? Function(StatsFetchRecap value)? fetchRecap,
  }) {
    return record?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatsRecord value)? record,
    TResult Function(StatsFetchRecap value)? fetchRecap,
    required TResult orElse(),
  }) {
    if (record != null) {
      return record(this);
    }
    return orElse();
  }
}

abstract class StatsRecord implements StatsEvent {
  const factory StatsRecord({
    required final int audioId,
    required final int listenedSeconds,
  }) = _$StatsRecordImpl;

  int get audioId;
  int get listenedSeconds;

  /// Create a copy of StatsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatsRecordImplCopyWith<_$StatsRecordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatsFetchRecapImplCopyWith<$Res> {
  factory _$$StatsFetchRecapImplCopyWith(
    _$StatsFetchRecapImpl value,
    $Res Function(_$StatsFetchRecapImpl) then,
  ) = __$$StatsFetchRecapImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StatsFetchRecapImplCopyWithImpl<$Res>
    extends _$StatsEventCopyWithImpl<$Res, _$StatsFetchRecapImpl>
    implements _$$StatsFetchRecapImplCopyWith<$Res> {
  __$$StatsFetchRecapImplCopyWithImpl(
    _$StatsFetchRecapImpl _value,
    $Res Function(_$StatsFetchRecapImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StatsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StatsFetchRecapImpl implements StatsFetchRecap {
  const _$StatsFetchRecapImpl();

  @override
  String toString() {
    return 'StatsEvent.fetchRecap()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StatsFetchRecapImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int audioId, int listenedSeconds) record,
    required TResult Function() fetchRecap,
  }) {
    return fetchRecap();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int audioId, int listenedSeconds)? record,
    TResult? Function()? fetchRecap,
  }) {
    return fetchRecap?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int audioId, int listenedSeconds)? record,
    TResult Function()? fetchRecap,
    required TResult orElse(),
  }) {
    if (fetchRecap != null) {
      return fetchRecap();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatsRecord value) record,
    required TResult Function(StatsFetchRecap value) fetchRecap,
  }) {
    return fetchRecap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatsRecord value)? record,
    TResult? Function(StatsFetchRecap value)? fetchRecap,
  }) {
    return fetchRecap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatsRecord value)? record,
    TResult Function(StatsFetchRecap value)? fetchRecap,
    required TResult orElse(),
  }) {
    if (fetchRecap != null) {
      return fetchRecap(this);
    }
    return orElse();
  }
}

abstract class StatsFetchRecap implements StatsEvent {
  const factory StatsFetchRecap() = _$StatsFetchRecapImpl;
}
