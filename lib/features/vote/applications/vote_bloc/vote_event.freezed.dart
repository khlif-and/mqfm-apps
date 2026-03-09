// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vote_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$VoteEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int audioId) cast,
    required TResult Function(int audioId) remove,
    required TResult Function() fetchUserVotes,
    required TResult Function() fetchWeeklyRanking,
    required TResult Function() fetchMonthlyRanking,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int audioId)? cast,
    TResult? Function(int audioId)? remove,
    TResult? Function()? fetchUserVotes,
    TResult? Function()? fetchWeeklyRanking,
    TResult? Function()? fetchMonthlyRanking,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int audioId)? cast,
    TResult Function(int audioId)? remove,
    TResult Function()? fetchUserVotes,
    TResult Function()? fetchWeeklyRanking,
    TResult Function()? fetchMonthlyRanking,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VoteCast value) cast,
    required TResult Function(VoteRemove value) remove,
    required TResult Function(VoteFetchUserVotes value) fetchUserVotes,
    required TResult Function(VoteFetchWeeklyRanking value) fetchWeeklyRanking,
    required TResult Function(VoteFetchMonthlyRanking value)
    fetchMonthlyRanking,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VoteCast value)? cast,
    TResult? Function(VoteRemove value)? remove,
    TResult? Function(VoteFetchUserVotes value)? fetchUserVotes,
    TResult? Function(VoteFetchWeeklyRanking value)? fetchWeeklyRanking,
    TResult? Function(VoteFetchMonthlyRanking value)? fetchMonthlyRanking,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VoteCast value)? cast,
    TResult Function(VoteRemove value)? remove,
    TResult Function(VoteFetchUserVotes value)? fetchUserVotes,
    TResult Function(VoteFetchWeeklyRanking value)? fetchWeeklyRanking,
    TResult Function(VoteFetchMonthlyRanking value)? fetchMonthlyRanking,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoteEventCopyWith<$Res> {
  factory $VoteEventCopyWith(VoteEvent value, $Res Function(VoteEvent) then) =
      _$VoteEventCopyWithImpl<$Res, VoteEvent>;
}

/// @nodoc
class _$VoteEventCopyWithImpl<$Res, $Val extends VoteEvent>
    implements $VoteEventCopyWith<$Res> {
  _$VoteEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VoteEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$VoteCastImplCopyWith<$Res> {
  factory _$$VoteCastImplCopyWith(
    _$VoteCastImpl value,
    $Res Function(_$VoteCastImpl) then,
  ) = __$$VoteCastImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int audioId});
}

/// @nodoc
class __$$VoteCastImplCopyWithImpl<$Res>
    extends _$VoteEventCopyWithImpl<$Res, _$VoteCastImpl>
    implements _$$VoteCastImplCopyWith<$Res> {
  __$$VoteCastImplCopyWithImpl(
    _$VoteCastImpl _value,
    $Res Function(_$VoteCastImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? audioId = null}) {
    return _then(
      _$VoteCastImpl(
        audioId: null == audioId
            ? _value.audioId
            : audioId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$VoteCastImpl implements VoteCast {
  const _$VoteCastImpl({required this.audioId});

  @override
  final int audioId;

  @override
  String toString() {
    return 'VoteEvent.cast(audioId: $audioId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VoteCastImpl &&
            (identical(other.audioId, audioId) || other.audioId == audioId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, audioId);

  /// Create a copy of VoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VoteCastImplCopyWith<_$VoteCastImpl> get copyWith =>
      __$$VoteCastImplCopyWithImpl<_$VoteCastImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int audioId) cast,
    required TResult Function(int audioId) remove,
    required TResult Function() fetchUserVotes,
    required TResult Function() fetchWeeklyRanking,
    required TResult Function() fetchMonthlyRanking,
  }) {
    return cast(audioId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int audioId)? cast,
    TResult? Function(int audioId)? remove,
    TResult? Function()? fetchUserVotes,
    TResult? Function()? fetchWeeklyRanking,
    TResult? Function()? fetchMonthlyRanking,
  }) {
    return cast?.call(audioId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int audioId)? cast,
    TResult Function(int audioId)? remove,
    TResult Function()? fetchUserVotes,
    TResult Function()? fetchWeeklyRanking,
    TResult Function()? fetchMonthlyRanking,
    required TResult orElse(),
  }) {
    if (cast != null) {
      return cast(audioId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VoteCast value) cast,
    required TResult Function(VoteRemove value) remove,
    required TResult Function(VoteFetchUserVotes value) fetchUserVotes,
    required TResult Function(VoteFetchWeeklyRanking value) fetchWeeklyRanking,
    required TResult Function(VoteFetchMonthlyRanking value)
    fetchMonthlyRanking,
  }) {
    return cast(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VoteCast value)? cast,
    TResult? Function(VoteRemove value)? remove,
    TResult? Function(VoteFetchUserVotes value)? fetchUserVotes,
    TResult? Function(VoteFetchWeeklyRanking value)? fetchWeeklyRanking,
    TResult? Function(VoteFetchMonthlyRanking value)? fetchMonthlyRanking,
  }) {
    return cast?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VoteCast value)? cast,
    TResult Function(VoteRemove value)? remove,
    TResult Function(VoteFetchUserVotes value)? fetchUserVotes,
    TResult Function(VoteFetchWeeklyRanking value)? fetchWeeklyRanking,
    TResult Function(VoteFetchMonthlyRanking value)? fetchMonthlyRanking,
    required TResult orElse(),
  }) {
    if (cast != null) {
      return cast(this);
    }
    return orElse();
  }
}

abstract class VoteCast implements VoteEvent {
  const factory VoteCast({required final int audioId}) = _$VoteCastImpl;

  int get audioId;

  /// Create a copy of VoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VoteCastImplCopyWith<_$VoteCastImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VoteRemoveImplCopyWith<$Res> {
  factory _$$VoteRemoveImplCopyWith(
    _$VoteRemoveImpl value,
    $Res Function(_$VoteRemoveImpl) then,
  ) = __$$VoteRemoveImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int audioId});
}

/// @nodoc
class __$$VoteRemoveImplCopyWithImpl<$Res>
    extends _$VoteEventCopyWithImpl<$Res, _$VoteRemoveImpl>
    implements _$$VoteRemoveImplCopyWith<$Res> {
  __$$VoteRemoveImplCopyWithImpl(
    _$VoteRemoveImpl _value,
    $Res Function(_$VoteRemoveImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? audioId = null}) {
    return _then(
      _$VoteRemoveImpl(
        audioId: null == audioId
            ? _value.audioId
            : audioId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$VoteRemoveImpl implements VoteRemove {
  const _$VoteRemoveImpl({required this.audioId});

  @override
  final int audioId;

  @override
  String toString() {
    return 'VoteEvent.remove(audioId: $audioId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VoteRemoveImpl &&
            (identical(other.audioId, audioId) || other.audioId == audioId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, audioId);

  /// Create a copy of VoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VoteRemoveImplCopyWith<_$VoteRemoveImpl> get copyWith =>
      __$$VoteRemoveImplCopyWithImpl<_$VoteRemoveImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int audioId) cast,
    required TResult Function(int audioId) remove,
    required TResult Function() fetchUserVotes,
    required TResult Function() fetchWeeklyRanking,
    required TResult Function() fetchMonthlyRanking,
  }) {
    return remove(audioId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int audioId)? cast,
    TResult? Function(int audioId)? remove,
    TResult? Function()? fetchUserVotes,
    TResult? Function()? fetchWeeklyRanking,
    TResult? Function()? fetchMonthlyRanking,
  }) {
    return remove?.call(audioId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int audioId)? cast,
    TResult Function(int audioId)? remove,
    TResult Function()? fetchUserVotes,
    TResult Function()? fetchWeeklyRanking,
    TResult Function()? fetchMonthlyRanking,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(audioId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VoteCast value) cast,
    required TResult Function(VoteRemove value) remove,
    required TResult Function(VoteFetchUserVotes value) fetchUserVotes,
    required TResult Function(VoteFetchWeeklyRanking value) fetchWeeklyRanking,
    required TResult Function(VoteFetchMonthlyRanking value)
    fetchMonthlyRanking,
  }) {
    return remove(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VoteCast value)? cast,
    TResult? Function(VoteRemove value)? remove,
    TResult? Function(VoteFetchUserVotes value)? fetchUserVotes,
    TResult? Function(VoteFetchWeeklyRanking value)? fetchWeeklyRanking,
    TResult? Function(VoteFetchMonthlyRanking value)? fetchMonthlyRanking,
  }) {
    return remove?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VoteCast value)? cast,
    TResult Function(VoteRemove value)? remove,
    TResult Function(VoteFetchUserVotes value)? fetchUserVotes,
    TResult Function(VoteFetchWeeklyRanking value)? fetchWeeklyRanking,
    TResult Function(VoteFetchMonthlyRanking value)? fetchMonthlyRanking,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(this);
    }
    return orElse();
  }
}

abstract class VoteRemove implements VoteEvent {
  const factory VoteRemove({required final int audioId}) = _$VoteRemoveImpl;

  int get audioId;

  /// Create a copy of VoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VoteRemoveImplCopyWith<_$VoteRemoveImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VoteFetchUserVotesImplCopyWith<$Res> {
  factory _$$VoteFetchUserVotesImplCopyWith(
    _$VoteFetchUserVotesImpl value,
    $Res Function(_$VoteFetchUserVotesImpl) then,
  ) = __$$VoteFetchUserVotesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VoteFetchUserVotesImplCopyWithImpl<$Res>
    extends _$VoteEventCopyWithImpl<$Res, _$VoteFetchUserVotesImpl>
    implements _$$VoteFetchUserVotesImplCopyWith<$Res> {
  __$$VoteFetchUserVotesImplCopyWithImpl(
    _$VoteFetchUserVotesImpl _value,
    $Res Function(_$VoteFetchUserVotesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VoteEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$VoteFetchUserVotesImpl implements VoteFetchUserVotes {
  const _$VoteFetchUserVotesImpl();

  @override
  String toString() {
    return 'VoteEvent.fetchUserVotes()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$VoteFetchUserVotesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int audioId) cast,
    required TResult Function(int audioId) remove,
    required TResult Function() fetchUserVotes,
    required TResult Function() fetchWeeklyRanking,
    required TResult Function() fetchMonthlyRanking,
  }) {
    return fetchUserVotes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int audioId)? cast,
    TResult? Function(int audioId)? remove,
    TResult? Function()? fetchUserVotes,
    TResult? Function()? fetchWeeklyRanking,
    TResult? Function()? fetchMonthlyRanking,
  }) {
    return fetchUserVotes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int audioId)? cast,
    TResult Function(int audioId)? remove,
    TResult Function()? fetchUserVotes,
    TResult Function()? fetchWeeklyRanking,
    TResult Function()? fetchMonthlyRanking,
    required TResult orElse(),
  }) {
    if (fetchUserVotes != null) {
      return fetchUserVotes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VoteCast value) cast,
    required TResult Function(VoteRemove value) remove,
    required TResult Function(VoteFetchUserVotes value) fetchUserVotes,
    required TResult Function(VoteFetchWeeklyRanking value) fetchWeeklyRanking,
    required TResult Function(VoteFetchMonthlyRanking value)
    fetchMonthlyRanking,
  }) {
    return fetchUserVotes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VoteCast value)? cast,
    TResult? Function(VoteRemove value)? remove,
    TResult? Function(VoteFetchUserVotes value)? fetchUserVotes,
    TResult? Function(VoteFetchWeeklyRanking value)? fetchWeeklyRanking,
    TResult? Function(VoteFetchMonthlyRanking value)? fetchMonthlyRanking,
  }) {
    return fetchUserVotes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VoteCast value)? cast,
    TResult Function(VoteRemove value)? remove,
    TResult Function(VoteFetchUserVotes value)? fetchUserVotes,
    TResult Function(VoteFetchWeeklyRanking value)? fetchWeeklyRanking,
    TResult Function(VoteFetchMonthlyRanking value)? fetchMonthlyRanking,
    required TResult orElse(),
  }) {
    if (fetchUserVotes != null) {
      return fetchUserVotes(this);
    }
    return orElse();
  }
}

abstract class VoteFetchUserVotes implements VoteEvent {
  const factory VoteFetchUserVotes() = _$VoteFetchUserVotesImpl;
}

/// @nodoc
abstract class _$$VoteFetchWeeklyRankingImplCopyWith<$Res> {
  factory _$$VoteFetchWeeklyRankingImplCopyWith(
    _$VoteFetchWeeklyRankingImpl value,
    $Res Function(_$VoteFetchWeeklyRankingImpl) then,
  ) = __$$VoteFetchWeeklyRankingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VoteFetchWeeklyRankingImplCopyWithImpl<$Res>
    extends _$VoteEventCopyWithImpl<$Res, _$VoteFetchWeeklyRankingImpl>
    implements _$$VoteFetchWeeklyRankingImplCopyWith<$Res> {
  __$$VoteFetchWeeklyRankingImplCopyWithImpl(
    _$VoteFetchWeeklyRankingImpl _value,
    $Res Function(_$VoteFetchWeeklyRankingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VoteEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$VoteFetchWeeklyRankingImpl implements VoteFetchWeeklyRanking {
  const _$VoteFetchWeeklyRankingImpl();

  @override
  String toString() {
    return 'VoteEvent.fetchWeeklyRanking()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VoteFetchWeeklyRankingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int audioId) cast,
    required TResult Function(int audioId) remove,
    required TResult Function() fetchUserVotes,
    required TResult Function() fetchWeeklyRanking,
    required TResult Function() fetchMonthlyRanking,
  }) {
    return fetchWeeklyRanking();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int audioId)? cast,
    TResult? Function(int audioId)? remove,
    TResult? Function()? fetchUserVotes,
    TResult? Function()? fetchWeeklyRanking,
    TResult? Function()? fetchMonthlyRanking,
  }) {
    return fetchWeeklyRanking?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int audioId)? cast,
    TResult Function(int audioId)? remove,
    TResult Function()? fetchUserVotes,
    TResult Function()? fetchWeeklyRanking,
    TResult Function()? fetchMonthlyRanking,
    required TResult orElse(),
  }) {
    if (fetchWeeklyRanking != null) {
      return fetchWeeklyRanking();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VoteCast value) cast,
    required TResult Function(VoteRemove value) remove,
    required TResult Function(VoteFetchUserVotes value) fetchUserVotes,
    required TResult Function(VoteFetchWeeklyRanking value) fetchWeeklyRanking,
    required TResult Function(VoteFetchMonthlyRanking value)
    fetchMonthlyRanking,
  }) {
    return fetchWeeklyRanking(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VoteCast value)? cast,
    TResult? Function(VoteRemove value)? remove,
    TResult? Function(VoteFetchUserVotes value)? fetchUserVotes,
    TResult? Function(VoteFetchWeeklyRanking value)? fetchWeeklyRanking,
    TResult? Function(VoteFetchMonthlyRanking value)? fetchMonthlyRanking,
  }) {
    return fetchWeeklyRanking?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VoteCast value)? cast,
    TResult Function(VoteRemove value)? remove,
    TResult Function(VoteFetchUserVotes value)? fetchUserVotes,
    TResult Function(VoteFetchWeeklyRanking value)? fetchWeeklyRanking,
    TResult Function(VoteFetchMonthlyRanking value)? fetchMonthlyRanking,
    required TResult orElse(),
  }) {
    if (fetchWeeklyRanking != null) {
      return fetchWeeklyRanking(this);
    }
    return orElse();
  }
}

abstract class VoteFetchWeeklyRanking implements VoteEvent {
  const factory VoteFetchWeeklyRanking() = _$VoteFetchWeeklyRankingImpl;
}

/// @nodoc
abstract class _$$VoteFetchMonthlyRankingImplCopyWith<$Res> {
  factory _$$VoteFetchMonthlyRankingImplCopyWith(
    _$VoteFetchMonthlyRankingImpl value,
    $Res Function(_$VoteFetchMonthlyRankingImpl) then,
  ) = __$$VoteFetchMonthlyRankingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VoteFetchMonthlyRankingImplCopyWithImpl<$Res>
    extends _$VoteEventCopyWithImpl<$Res, _$VoteFetchMonthlyRankingImpl>
    implements _$$VoteFetchMonthlyRankingImplCopyWith<$Res> {
  __$$VoteFetchMonthlyRankingImplCopyWithImpl(
    _$VoteFetchMonthlyRankingImpl _value,
    $Res Function(_$VoteFetchMonthlyRankingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VoteEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$VoteFetchMonthlyRankingImpl implements VoteFetchMonthlyRanking {
  const _$VoteFetchMonthlyRankingImpl();

  @override
  String toString() {
    return 'VoteEvent.fetchMonthlyRanking()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VoteFetchMonthlyRankingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int audioId) cast,
    required TResult Function(int audioId) remove,
    required TResult Function() fetchUserVotes,
    required TResult Function() fetchWeeklyRanking,
    required TResult Function() fetchMonthlyRanking,
  }) {
    return fetchMonthlyRanking();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int audioId)? cast,
    TResult? Function(int audioId)? remove,
    TResult? Function()? fetchUserVotes,
    TResult? Function()? fetchWeeklyRanking,
    TResult? Function()? fetchMonthlyRanking,
  }) {
    return fetchMonthlyRanking?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int audioId)? cast,
    TResult Function(int audioId)? remove,
    TResult Function()? fetchUserVotes,
    TResult Function()? fetchWeeklyRanking,
    TResult Function()? fetchMonthlyRanking,
    required TResult orElse(),
  }) {
    if (fetchMonthlyRanking != null) {
      return fetchMonthlyRanking();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VoteCast value) cast,
    required TResult Function(VoteRemove value) remove,
    required TResult Function(VoteFetchUserVotes value) fetchUserVotes,
    required TResult Function(VoteFetchWeeklyRanking value) fetchWeeklyRanking,
    required TResult Function(VoteFetchMonthlyRanking value)
    fetchMonthlyRanking,
  }) {
    return fetchMonthlyRanking(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VoteCast value)? cast,
    TResult? Function(VoteRemove value)? remove,
    TResult? Function(VoteFetchUserVotes value)? fetchUserVotes,
    TResult? Function(VoteFetchWeeklyRanking value)? fetchWeeklyRanking,
    TResult? Function(VoteFetchMonthlyRanking value)? fetchMonthlyRanking,
  }) {
    return fetchMonthlyRanking?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VoteCast value)? cast,
    TResult Function(VoteRemove value)? remove,
    TResult Function(VoteFetchUserVotes value)? fetchUserVotes,
    TResult Function(VoteFetchWeeklyRanking value)? fetchWeeklyRanking,
    TResult Function(VoteFetchMonthlyRanking value)? fetchMonthlyRanking,
    required TResult orElse(),
  }) {
    if (fetchMonthlyRanking != null) {
      return fetchMonthlyRanking(this);
    }
    return orElse();
  }
}

abstract class VoteFetchMonthlyRanking implements VoteEvent {
  const factory VoteFetchMonthlyRanking() = _$VoteFetchMonthlyRankingImpl;
}
