// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resume_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ResumeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int audioId, int positionSeconds) save,
    required TResult Function() fetch,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int audioId, int positionSeconds)? save,
    TResult? Function()? fetch,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int audioId, int positionSeconds)? save,
    TResult Function()? fetch,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResumeSave value) save,
    required TResult Function(ResumeFetch value) fetch,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResumeSave value)? save,
    TResult? Function(ResumeFetch value)? fetch,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResumeSave value)? save,
    TResult Function(ResumeFetch value)? fetch,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResumeEventCopyWith<$Res> {
  factory $ResumeEventCopyWith(
    ResumeEvent value,
    $Res Function(ResumeEvent) then,
  ) = _$ResumeEventCopyWithImpl<$Res, ResumeEvent>;
}

/// @nodoc
class _$ResumeEventCopyWithImpl<$Res, $Val extends ResumeEvent>
    implements $ResumeEventCopyWith<$Res> {
  _$ResumeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResumeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ResumeSaveImplCopyWith<$Res> {
  factory _$$ResumeSaveImplCopyWith(
    _$ResumeSaveImpl value,
    $Res Function(_$ResumeSaveImpl) then,
  ) = __$$ResumeSaveImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int audioId, int positionSeconds});
}

/// @nodoc
class __$$ResumeSaveImplCopyWithImpl<$Res>
    extends _$ResumeEventCopyWithImpl<$Res, _$ResumeSaveImpl>
    implements _$$ResumeSaveImplCopyWith<$Res> {
  __$$ResumeSaveImplCopyWithImpl(
    _$ResumeSaveImpl _value,
    $Res Function(_$ResumeSaveImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ResumeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? audioId = null, Object? positionSeconds = null}) {
    return _then(
      _$ResumeSaveImpl(
        audioId: null == audioId
            ? _value.audioId
            : audioId // ignore: cast_nullable_to_non_nullable
                  as int,
        positionSeconds: null == positionSeconds
            ? _value.positionSeconds
            : positionSeconds // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$ResumeSaveImpl implements ResumeSave {
  const _$ResumeSaveImpl({
    required this.audioId,
    required this.positionSeconds,
  });

  @override
  final int audioId;
  @override
  final int positionSeconds;

  @override
  String toString() {
    return 'ResumeEvent.save(audioId: $audioId, positionSeconds: $positionSeconds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResumeSaveImpl &&
            (identical(other.audioId, audioId) || other.audioId == audioId) &&
            (identical(other.positionSeconds, positionSeconds) ||
                other.positionSeconds == positionSeconds));
  }

  @override
  int get hashCode => Object.hash(runtimeType, audioId, positionSeconds);

  /// Create a copy of ResumeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResumeSaveImplCopyWith<_$ResumeSaveImpl> get copyWith =>
      __$$ResumeSaveImplCopyWithImpl<_$ResumeSaveImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int audioId, int positionSeconds) save,
    required TResult Function() fetch,
  }) {
    return save(audioId, positionSeconds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int audioId, int positionSeconds)? save,
    TResult? Function()? fetch,
  }) {
    return save?.call(audioId, positionSeconds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int audioId, int positionSeconds)? save,
    TResult Function()? fetch,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(audioId, positionSeconds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResumeSave value) save,
    required TResult Function(ResumeFetch value) fetch,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResumeSave value)? save,
    TResult? Function(ResumeFetch value)? fetch,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResumeSave value)? save,
    TResult Function(ResumeFetch value)? fetch,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class ResumeSave implements ResumeEvent {
  const factory ResumeSave({
    required final int audioId,
    required final int positionSeconds,
  }) = _$ResumeSaveImpl;

  int get audioId;
  int get positionSeconds;

  /// Create a copy of ResumeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResumeSaveImplCopyWith<_$ResumeSaveImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResumeFetchImplCopyWith<$Res> {
  factory _$$ResumeFetchImplCopyWith(
    _$ResumeFetchImpl value,
    $Res Function(_$ResumeFetchImpl) then,
  ) = __$$ResumeFetchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResumeFetchImplCopyWithImpl<$Res>
    extends _$ResumeEventCopyWithImpl<$Res, _$ResumeFetchImpl>
    implements _$$ResumeFetchImplCopyWith<$Res> {
  __$$ResumeFetchImplCopyWithImpl(
    _$ResumeFetchImpl _value,
    $Res Function(_$ResumeFetchImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ResumeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResumeFetchImpl implements ResumeFetch {
  const _$ResumeFetchImpl();

  @override
  String toString() {
    return 'ResumeEvent.fetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResumeFetchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int audioId, int positionSeconds) save,
    required TResult Function() fetch,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int audioId, int positionSeconds)? save,
    TResult? Function()? fetch,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int audioId, int positionSeconds)? save,
    TResult Function()? fetch,
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
    required TResult Function(ResumeSave value) save,
    required TResult Function(ResumeFetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResumeSave value)? save,
    TResult? Function(ResumeFetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResumeSave value)? save,
    TResult Function(ResumeFetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class ResumeFetch implements ResumeEvent {
  const factory ResumeFetch() = _$ResumeFetchImpl;
}
