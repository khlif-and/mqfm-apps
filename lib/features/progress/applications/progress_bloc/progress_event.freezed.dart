// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'progress_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ProgressEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int audioId, int lastPosition, int duration) save,
    required TResult Function() fetchAll,
    required TResult Function() fetchCompleted,
    required TResult Function(int audioId) fetchByAudio,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int audioId, int lastPosition, int duration)? save,
    TResult? Function()? fetchAll,
    TResult? Function()? fetchCompleted,
    TResult? Function(int audioId)? fetchByAudio,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int audioId, int lastPosition, int duration)? save,
    TResult Function()? fetchAll,
    TResult Function()? fetchCompleted,
    TResult Function(int audioId)? fetchByAudio,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProgressSave value) save,
    required TResult Function(ProgressFetchAll value) fetchAll,
    required TResult Function(ProgressFetchCompleted value) fetchCompleted,
    required TResult Function(ProgressFetchByAudio value) fetchByAudio,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgressSave value)? save,
    TResult? Function(ProgressFetchAll value)? fetchAll,
    TResult? Function(ProgressFetchCompleted value)? fetchCompleted,
    TResult? Function(ProgressFetchByAudio value)? fetchByAudio,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgressSave value)? save,
    TResult Function(ProgressFetchAll value)? fetchAll,
    TResult Function(ProgressFetchCompleted value)? fetchCompleted,
    TResult Function(ProgressFetchByAudio value)? fetchByAudio,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgressEventCopyWith<$Res> {
  factory $ProgressEventCopyWith(
    ProgressEvent value,
    $Res Function(ProgressEvent) then,
  ) = _$ProgressEventCopyWithImpl<$Res, ProgressEvent>;
}

/// @nodoc
class _$ProgressEventCopyWithImpl<$Res, $Val extends ProgressEvent>
    implements $ProgressEventCopyWith<$Res> {
  _$ProgressEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProgressEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ProgressSaveImplCopyWith<$Res> {
  factory _$$ProgressSaveImplCopyWith(
    _$ProgressSaveImpl value,
    $Res Function(_$ProgressSaveImpl) then,
  ) = __$$ProgressSaveImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int audioId, int lastPosition, int duration});
}

/// @nodoc
class __$$ProgressSaveImplCopyWithImpl<$Res>
    extends _$ProgressEventCopyWithImpl<$Res, _$ProgressSaveImpl>
    implements _$$ProgressSaveImplCopyWith<$Res> {
  __$$ProgressSaveImplCopyWithImpl(
    _$ProgressSaveImpl _value,
    $Res Function(_$ProgressSaveImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProgressEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audioId = null,
    Object? lastPosition = null,
    Object? duration = null,
  }) {
    return _then(
      _$ProgressSaveImpl(
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
      ),
    );
  }
}

/// @nodoc

class _$ProgressSaveImpl implements ProgressSave {
  const _$ProgressSaveImpl({
    required this.audioId,
    required this.lastPosition,
    required this.duration,
  });

  @override
  final int audioId;
  @override
  final int lastPosition;
  @override
  final int duration;

  @override
  String toString() {
    return 'ProgressEvent.save(audioId: $audioId, lastPosition: $lastPosition, duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgressSaveImpl &&
            (identical(other.audioId, audioId) || other.audioId == audioId) &&
            (identical(other.lastPosition, lastPosition) ||
                other.lastPosition == lastPosition) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, audioId, lastPosition, duration);

  /// Create a copy of ProgressEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgressSaveImplCopyWith<_$ProgressSaveImpl> get copyWith =>
      __$$ProgressSaveImplCopyWithImpl<_$ProgressSaveImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int audioId, int lastPosition, int duration) save,
    required TResult Function() fetchAll,
    required TResult Function() fetchCompleted,
    required TResult Function(int audioId) fetchByAudio,
  }) {
    return save(audioId, lastPosition, duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int audioId, int lastPosition, int duration)? save,
    TResult? Function()? fetchAll,
    TResult? Function()? fetchCompleted,
    TResult? Function(int audioId)? fetchByAudio,
  }) {
    return save?.call(audioId, lastPosition, duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int audioId, int lastPosition, int duration)? save,
    TResult Function()? fetchAll,
    TResult Function()? fetchCompleted,
    TResult Function(int audioId)? fetchByAudio,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(audioId, lastPosition, duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProgressSave value) save,
    required TResult Function(ProgressFetchAll value) fetchAll,
    required TResult Function(ProgressFetchCompleted value) fetchCompleted,
    required TResult Function(ProgressFetchByAudio value) fetchByAudio,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgressSave value)? save,
    TResult? Function(ProgressFetchAll value)? fetchAll,
    TResult? Function(ProgressFetchCompleted value)? fetchCompleted,
    TResult? Function(ProgressFetchByAudio value)? fetchByAudio,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgressSave value)? save,
    TResult Function(ProgressFetchAll value)? fetchAll,
    TResult Function(ProgressFetchCompleted value)? fetchCompleted,
    TResult Function(ProgressFetchByAudio value)? fetchByAudio,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class ProgressSave implements ProgressEvent {
  const factory ProgressSave({
    required final int audioId,
    required final int lastPosition,
    required final int duration,
  }) = _$ProgressSaveImpl;

  int get audioId;
  int get lastPosition;
  int get duration;

  /// Create a copy of ProgressEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProgressSaveImplCopyWith<_$ProgressSaveImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProgressFetchAllImplCopyWith<$Res> {
  factory _$$ProgressFetchAllImplCopyWith(
    _$ProgressFetchAllImpl value,
    $Res Function(_$ProgressFetchAllImpl) then,
  ) = __$$ProgressFetchAllImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProgressFetchAllImplCopyWithImpl<$Res>
    extends _$ProgressEventCopyWithImpl<$Res, _$ProgressFetchAllImpl>
    implements _$$ProgressFetchAllImplCopyWith<$Res> {
  __$$ProgressFetchAllImplCopyWithImpl(
    _$ProgressFetchAllImpl _value,
    $Res Function(_$ProgressFetchAllImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProgressEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProgressFetchAllImpl implements ProgressFetchAll {
  const _$ProgressFetchAllImpl();

  @override
  String toString() {
    return 'ProgressEvent.fetchAll()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProgressFetchAllImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int audioId, int lastPosition, int duration) save,
    required TResult Function() fetchAll,
    required TResult Function() fetchCompleted,
    required TResult Function(int audioId) fetchByAudio,
  }) {
    return fetchAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int audioId, int lastPosition, int duration)? save,
    TResult? Function()? fetchAll,
    TResult? Function()? fetchCompleted,
    TResult? Function(int audioId)? fetchByAudio,
  }) {
    return fetchAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int audioId, int lastPosition, int duration)? save,
    TResult Function()? fetchAll,
    TResult Function()? fetchCompleted,
    TResult Function(int audioId)? fetchByAudio,
    required TResult orElse(),
  }) {
    if (fetchAll != null) {
      return fetchAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProgressSave value) save,
    required TResult Function(ProgressFetchAll value) fetchAll,
    required TResult Function(ProgressFetchCompleted value) fetchCompleted,
    required TResult Function(ProgressFetchByAudio value) fetchByAudio,
  }) {
    return fetchAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgressSave value)? save,
    TResult? Function(ProgressFetchAll value)? fetchAll,
    TResult? Function(ProgressFetchCompleted value)? fetchCompleted,
    TResult? Function(ProgressFetchByAudio value)? fetchByAudio,
  }) {
    return fetchAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgressSave value)? save,
    TResult Function(ProgressFetchAll value)? fetchAll,
    TResult Function(ProgressFetchCompleted value)? fetchCompleted,
    TResult Function(ProgressFetchByAudio value)? fetchByAudio,
    required TResult orElse(),
  }) {
    if (fetchAll != null) {
      return fetchAll(this);
    }
    return orElse();
  }
}

abstract class ProgressFetchAll implements ProgressEvent {
  const factory ProgressFetchAll() = _$ProgressFetchAllImpl;
}

/// @nodoc
abstract class _$$ProgressFetchCompletedImplCopyWith<$Res> {
  factory _$$ProgressFetchCompletedImplCopyWith(
    _$ProgressFetchCompletedImpl value,
    $Res Function(_$ProgressFetchCompletedImpl) then,
  ) = __$$ProgressFetchCompletedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProgressFetchCompletedImplCopyWithImpl<$Res>
    extends _$ProgressEventCopyWithImpl<$Res, _$ProgressFetchCompletedImpl>
    implements _$$ProgressFetchCompletedImplCopyWith<$Res> {
  __$$ProgressFetchCompletedImplCopyWithImpl(
    _$ProgressFetchCompletedImpl _value,
    $Res Function(_$ProgressFetchCompletedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProgressEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProgressFetchCompletedImpl implements ProgressFetchCompleted {
  const _$ProgressFetchCompletedImpl();

  @override
  String toString() {
    return 'ProgressEvent.fetchCompleted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgressFetchCompletedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int audioId, int lastPosition, int duration) save,
    required TResult Function() fetchAll,
    required TResult Function() fetchCompleted,
    required TResult Function(int audioId) fetchByAudio,
  }) {
    return fetchCompleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int audioId, int lastPosition, int duration)? save,
    TResult? Function()? fetchAll,
    TResult? Function()? fetchCompleted,
    TResult? Function(int audioId)? fetchByAudio,
  }) {
    return fetchCompleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int audioId, int lastPosition, int duration)? save,
    TResult Function()? fetchAll,
    TResult Function()? fetchCompleted,
    TResult Function(int audioId)? fetchByAudio,
    required TResult orElse(),
  }) {
    if (fetchCompleted != null) {
      return fetchCompleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProgressSave value) save,
    required TResult Function(ProgressFetchAll value) fetchAll,
    required TResult Function(ProgressFetchCompleted value) fetchCompleted,
    required TResult Function(ProgressFetchByAudio value) fetchByAudio,
  }) {
    return fetchCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgressSave value)? save,
    TResult? Function(ProgressFetchAll value)? fetchAll,
    TResult? Function(ProgressFetchCompleted value)? fetchCompleted,
    TResult? Function(ProgressFetchByAudio value)? fetchByAudio,
  }) {
    return fetchCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgressSave value)? save,
    TResult Function(ProgressFetchAll value)? fetchAll,
    TResult Function(ProgressFetchCompleted value)? fetchCompleted,
    TResult Function(ProgressFetchByAudio value)? fetchByAudio,
    required TResult orElse(),
  }) {
    if (fetchCompleted != null) {
      return fetchCompleted(this);
    }
    return orElse();
  }
}

abstract class ProgressFetchCompleted implements ProgressEvent {
  const factory ProgressFetchCompleted() = _$ProgressFetchCompletedImpl;
}

/// @nodoc
abstract class _$$ProgressFetchByAudioImplCopyWith<$Res> {
  factory _$$ProgressFetchByAudioImplCopyWith(
    _$ProgressFetchByAudioImpl value,
    $Res Function(_$ProgressFetchByAudioImpl) then,
  ) = __$$ProgressFetchByAudioImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int audioId});
}

/// @nodoc
class __$$ProgressFetchByAudioImplCopyWithImpl<$Res>
    extends _$ProgressEventCopyWithImpl<$Res, _$ProgressFetchByAudioImpl>
    implements _$$ProgressFetchByAudioImplCopyWith<$Res> {
  __$$ProgressFetchByAudioImplCopyWithImpl(
    _$ProgressFetchByAudioImpl _value,
    $Res Function(_$ProgressFetchByAudioImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProgressEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? audioId = null}) {
    return _then(
      _$ProgressFetchByAudioImpl(
        audioId: null == audioId
            ? _value.audioId
            : audioId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$ProgressFetchByAudioImpl implements ProgressFetchByAudio {
  const _$ProgressFetchByAudioImpl({required this.audioId});

  @override
  final int audioId;

  @override
  String toString() {
    return 'ProgressEvent.fetchByAudio(audioId: $audioId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgressFetchByAudioImpl &&
            (identical(other.audioId, audioId) || other.audioId == audioId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, audioId);

  /// Create a copy of ProgressEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgressFetchByAudioImplCopyWith<_$ProgressFetchByAudioImpl>
  get copyWith =>
      __$$ProgressFetchByAudioImplCopyWithImpl<_$ProgressFetchByAudioImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int audioId, int lastPosition, int duration) save,
    required TResult Function() fetchAll,
    required TResult Function() fetchCompleted,
    required TResult Function(int audioId) fetchByAudio,
  }) {
    return fetchByAudio(audioId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int audioId, int lastPosition, int duration)? save,
    TResult? Function()? fetchAll,
    TResult? Function()? fetchCompleted,
    TResult? Function(int audioId)? fetchByAudio,
  }) {
    return fetchByAudio?.call(audioId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int audioId, int lastPosition, int duration)? save,
    TResult Function()? fetchAll,
    TResult Function()? fetchCompleted,
    TResult Function(int audioId)? fetchByAudio,
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
    required TResult Function(ProgressSave value) save,
    required TResult Function(ProgressFetchAll value) fetchAll,
    required TResult Function(ProgressFetchCompleted value) fetchCompleted,
    required TResult Function(ProgressFetchByAudio value) fetchByAudio,
  }) {
    return fetchByAudio(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgressSave value)? save,
    TResult? Function(ProgressFetchAll value)? fetchAll,
    TResult? Function(ProgressFetchCompleted value)? fetchCompleted,
    TResult? Function(ProgressFetchByAudio value)? fetchByAudio,
  }) {
    return fetchByAudio?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgressSave value)? save,
    TResult Function(ProgressFetchAll value)? fetchAll,
    TResult Function(ProgressFetchCompleted value)? fetchCompleted,
    TResult Function(ProgressFetchByAudio value)? fetchByAudio,
    required TResult orElse(),
  }) {
    if (fetchByAudio != null) {
      return fetchByAudio(this);
    }
    return orElse();
  }
}

abstract class ProgressFetchByAudio implements ProgressEvent {
  const factory ProgressFetchByAudio({required final int audioId}) =
      _$ProgressFetchByAudioImpl;

  int get audioId;

  /// Create a copy of ProgressEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProgressFetchByAudioImplCopyWith<_$ProgressFetchByAudioImpl>
  get copyWith => throw _privateConstructorUsedError;
}
