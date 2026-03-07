// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PlayerEvent {
  int get audioId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int audioId) loadAudio,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int audioId)? loadAudio,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int audioId)? loadAudio,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayerLoadAudio value) loadAudio,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlayerLoadAudio value)? loadAudio,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayerLoadAudio value)? loadAudio,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlayerEventCopyWith<PlayerEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerEventCopyWith<$Res> {
  factory $PlayerEventCopyWith(
    PlayerEvent value,
    $Res Function(PlayerEvent) then,
  ) = _$PlayerEventCopyWithImpl<$Res, PlayerEvent>;
  @useResult
  $Res call({int audioId});
}

/// @nodoc
class _$PlayerEventCopyWithImpl<$Res, $Val extends PlayerEvent>
    implements $PlayerEventCopyWith<$Res> {
  _$PlayerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? audioId = null}) {
    return _then(
      _value.copyWith(
            audioId: null == audioId
                ? _value.audioId
                : audioId // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PlayerLoadAudioImplCopyWith<$Res>
    implements $PlayerEventCopyWith<$Res> {
  factory _$$PlayerLoadAudioImplCopyWith(
    _$PlayerLoadAudioImpl value,
    $Res Function(_$PlayerLoadAudioImpl) then,
  ) = __$$PlayerLoadAudioImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int audioId});
}

/// @nodoc
class __$$PlayerLoadAudioImplCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res, _$PlayerLoadAudioImpl>
    implements _$$PlayerLoadAudioImplCopyWith<$Res> {
  __$$PlayerLoadAudioImplCopyWithImpl(
    _$PlayerLoadAudioImpl _value,
    $Res Function(_$PlayerLoadAudioImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? audioId = null}) {
    return _then(
      _$PlayerLoadAudioImpl(
        audioId: null == audioId
            ? _value.audioId
            : audioId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$PlayerLoadAudioImpl implements PlayerLoadAudio {
  const _$PlayerLoadAudioImpl({required this.audioId});

  @override
  final int audioId;

  @override
  String toString() {
    return 'PlayerEvent.loadAudio(audioId: $audioId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerLoadAudioImpl &&
            (identical(other.audioId, audioId) || other.audioId == audioId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, audioId);

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerLoadAudioImplCopyWith<_$PlayerLoadAudioImpl> get copyWith =>
      __$$PlayerLoadAudioImplCopyWithImpl<_$PlayerLoadAudioImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int audioId) loadAudio,
  }) {
    return loadAudio(audioId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int audioId)? loadAudio,
  }) {
    return loadAudio?.call(audioId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int audioId)? loadAudio,
    required TResult orElse(),
  }) {
    if (loadAudio != null) {
      return loadAudio(audioId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayerLoadAudio value) loadAudio,
  }) {
    return loadAudio(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlayerLoadAudio value)? loadAudio,
  }) {
    return loadAudio?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayerLoadAudio value)? loadAudio,
    required TResult orElse(),
  }) {
    if (loadAudio != null) {
      return loadAudio(this);
    }
    return orElse();
  }
}

abstract class PlayerLoadAudio implements PlayerEvent {
  const factory PlayerLoadAudio({required final int audioId}) =
      _$PlayerLoadAudioImpl;

  @override
  int get audioId;

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayerLoadAudioImplCopyWith<_$PlayerLoadAudioImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
