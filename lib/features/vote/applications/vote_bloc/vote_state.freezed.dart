// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vote_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$VoteState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<VoteEntity> votes) votesLoaded,
    required TResult Function(List<VoteRankingEntity> rankings) rankingLoaded,
    required TResult Function(String message) actionSuccess,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<VoteEntity> votes)? votesLoaded,
    TResult? Function(List<VoteRankingEntity> rankings)? rankingLoaded,
    TResult? Function(String message)? actionSuccess,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<VoteEntity> votes)? votesLoaded,
    TResult Function(List<VoteRankingEntity> rankings)? rankingLoaded,
    TResult Function(String message)? actionSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VoteInitial value) initial,
    required TResult Function(VoteLoading value) loading,
    required TResult Function(VoteVotesLoaded value) votesLoaded,
    required TResult Function(VoteRankingLoaded value) rankingLoaded,
    required TResult Function(VoteActionSuccess value) actionSuccess,
    required TResult Function(VoteError value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VoteInitial value)? initial,
    TResult? Function(VoteLoading value)? loading,
    TResult? Function(VoteVotesLoaded value)? votesLoaded,
    TResult? Function(VoteRankingLoaded value)? rankingLoaded,
    TResult? Function(VoteActionSuccess value)? actionSuccess,
    TResult? Function(VoteError value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VoteInitial value)? initial,
    TResult Function(VoteLoading value)? loading,
    TResult Function(VoteVotesLoaded value)? votesLoaded,
    TResult Function(VoteRankingLoaded value)? rankingLoaded,
    TResult Function(VoteActionSuccess value)? actionSuccess,
    TResult Function(VoteError value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoteStateCopyWith<$Res> {
  factory $VoteStateCopyWith(VoteState value, $Res Function(VoteState) then) =
      _$VoteStateCopyWithImpl<$Res, VoteState>;
}

/// @nodoc
class _$VoteStateCopyWithImpl<$Res, $Val extends VoteState>
    implements $VoteStateCopyWith<$Res> {
  _$VoteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VoteState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$VoteInitialImplCopyWith<$Res> {
  factory _$$VoteInitialImplCopyWith(
    _$VoteInitialImpl value,
    $Res Function(_$VoteInitialImpl) then,
  ) = __$$VoteInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VoteInitialImplCopyWithImpl<$Res>
    extends _$VoteStateCopyWithImpl<$Res, _$VoteInitialImpl>
    implements _$$VoteInitialImplCopyWith<$Res> {
  __$$VoteInitialImplCopyWithImpl(
    _$VoteInitialImpl _value,
    $Res Function(_$VoteInitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VoteState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$VoteInitialImpl implements VoteInitial {
  const _$VoteInitialImpl();

  @override
  String toString() {
    return 'VoteState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$VoteInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<VoteEntity> votes) votesLoaded,
    required TResult Function(List<VoteRankingEntity> rankings) rankingLoaded,
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
    TResult? Function(List<VoteEntity> votes)? votesLoaded,
    TResult? Function(List<VoteRankingEntity> rankings)? rankingLoaded,
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
    TResult Function(List<VoteEntity> votes)? votesLoaded,
    TResult Function(List<VoteRankingEntity> rankings)? rankingLoaded,
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
    required TResult Function(VoteInitial value) initial,
    required TResult Function(VoteLoading value) loading,
    required TResult Function(VoteVotesLoaded value) votesLoaded,
    required TResult Function(VoteRankingLoaded value) rankingLoaded,
    required TResult Function(VoteActionSuccess value) actionSuccess,
    required TResult Function(VoteError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VoteInitial value)? initial,
    TResult? Function(VoteLoading value)? loading,
    TResult? Function(VoteVotesLoaded value)? votesLoaded,
    TResult? Function(VoteRankingLoaded value)? rankingLoaded,
    TResult? Function(VoteActionSuccess value)? actionSuccess,
    TResult? Function(VoteError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VoteInitial value)? initial,
    TResult Function(VoteLoading value)? loading,
    TResult Function(VoteVotesLoaded value)? votesLoaded,
    TResult Function(VoteRankingLoaded value)? rankingLoaded,
    TResult Function(VoteActionSuccess value)? actionSuccess,
    TResult Function(VoteError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class VoteInitial implements VoteState {
  const factory VoteInitial() = _$VoteInitialImpl;
}

/// @nodoc
abstract class _$$VoteLoadingImplCopyWith<$Res> {
  factory _$$VoteLoadingImplCopyWith(
    _$VoteLoadingImpl value,
    $Res Function(_$VoteLoadingImpl) then,
  ) = __$$VoteLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VoteLoadingImplCopyWithImpl<$Res>
    extends _$VoteStateCopyWithImpl<$Res, _$VoteLoadingImpl>
    implements _$$VoteLoadingImplCopyWith<$Res> {
  __$$VoteLoadingImplCopyWithImpl(
    _$VoteLoadingImpl _value,
    $Res Function(_$VoteLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VoteState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$VoteLoadingImpl implements VoteLoading {
  const _$VoteLoadingImpl();

  @override
  String toString() {
    return 'VoteState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$VoteLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<VoteEntity> votes) votesLoaded,
    required TResult Function(List<VoteRankingEntity> rankings) rankingLoaded,
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
    TResult? Function(List<VoteEntity> votes)? votesLoaded,
    TResult? Function(List<VoteRankingEntity> rankings)? rankingLoaded,
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
    TResult Function(List<VoteEntity> votes)? votesLoaded,
    TResult Function(List<VoteRankingEntity> rankings)? rankingLoaded,
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
    required TResult Function(VoteInitial value) initial,
    required TResult Function(VoteLoading value) loading,
    required TResult Function(VoteVotesLoaded value) votesLoaded,
    required TResult Function(VoteRankingLoaded value) rankingLoaded,
    required TResult Function(VoteActionSuccess value) actionSuccess,
    required TResult Function(VoteError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VoteInitial value)? initial,
    TResult? Function(VoteLoading value)? loading,
    TResult? Function(VoteVotesLoaded value)? votesLoaded,
    TResult? Function(VoteRankingLoaded value)? rankingLoaded,
    TResult? Function(VoteActionSuccess value)? actionSuccess,
    TResult? Function(VoteError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VoteInitial value)? initial,
    TResult Function(VoteLoading value)? loading,
    TResult Function(VoteVotesLoaded value)? votesLoaded,
    TResult Function(VoteRankingLoaded value)? rankingLoaded,
    TResult Function(VoteActionSuccess value)? actionSuccess,
    TResult Function(VoteError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class VoteLoading implements VoteState {
  const factory VoteLoading() = _$VoteLoadingImpl;
}

/// @nodoc
abstract class _$$VoteVotesLoadedImplCopyWith<$Res> {
  factory _$$VoteVotesLoadedImplCopyWith(
    _$VoteVotesLoadedImpl value,
    $Res Function(_$VoteVotesLoadedImpl) then,
  ) = __$$VoteVotesLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<VoteEntity> votes});
}

/// @nodoc
class __$$VoteVotesLoadedImplCopyWithImpl<$Res>
    extends _$VoteStateCopyWithImpl<$Res, _$VoteVotesLoadedImpl>
    implements _$$VoteVotesLoadedImplCopyWith<$Res> {
  __$$VoteVotesLoadedImplCopyWithImpl(
    _$VoteVotesLoadedImpl _value,
    $Res Function(_$VoteVotesLoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VoteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? votes = null}) {
    return _then(
      _$VoteVotesLoadedImpl(
        votes: null == votes
            ? _value._votes
            : votes // ignore: cast_nullable_to_non_nullable
                  as List<VoteEntity>,
      ),
    );
  }
}

/// @nodoc

class _$VoteVotesLoadedImpl implements VoteVotesLoaded {
  const _$VoteVotesLoadedImpl({required final List<VoteEntity> votes})
    : _votes = votes;

  final List<VoteEntity> _votes;
  @override
  List<VoteEntity> get votes {
    if (_votes is EqualUnmodifiableListView) return _votes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_votes);
  }

  @override
  String toString() {
    return 'VoteState.votesLoaded(votes: $votes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VoteVotesLoadedImpl &&
            const DeepCollectionEquality().equals(other._votes, _votes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_votes));

  /// Create a copy of VoteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VoteVotesLoadedImplCopyWith<_$VoteVotesLoadedImpl> get copyWith =>
      __$$VoteVotesLoadedImplCopyWithImpl<_$VoteVotesLoadedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<VoteEntity> votes) votesLoaded,
    required TResult Function(List<VoteRankingEntity> rankings) rankingLoaded,
    required TResult Function(String message) actionSuccess,
    required TResult Function(String message) error,
  }) {
    return votesLoaded(votes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<VoteEntity> votes)? votesLoaded,
    TResult? Function(List<VoteRankingEntity> rankings)? rankingLoaded,
    TResult? Function(String message)? actionSuccess,
    TResult? Function(String message)? error,
  }) {
    return votesLoaded?.call(votes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<VoteEntity> votes)? votesLoaded,
    TResult Function(List<VoteRankingEntity> rankings)? rankingLoaded,
    TResult Function(String message)? actionSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (votesLoaded != null) {
      return votesLoaded(votes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VoteInitial value) initial,
    required TResult Function(VoteLoading value) loading,
    required TResult Function(VoteVotesLoaded value) votesLoaded,
    required TResult Function(VoteRankingLoaded value) rankingLoaded,
    required TResult Function(VoteActionSuccess value) actionSuccess,
    required TResult Function(VoteError value) error,
  }) {
    return votesLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VoteInitial value)? initial,
    TResult? Function(VoteLoading value)? loading,
    TResult? Function(VoteVotesLoaded value)? votesLoaded,
    TResult? Function(VoteRankingLoaded value)? rankingLoaded,
    TResult? Function(VoteActionSuccess value)? actionSuccess,
    TResult? Function(VoteError value)? error,
  }) {
    return votesLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VoteInitial value)? initial,
    TResult Function(VoteLoading value)? loading,
    TResult Function(VoteVotesLoaded value)? votesLoaded,
    TResult Function(VoteRankingLoaded value)? rankingLoaded,
    TResult Function(VoteActionSuccess value)? actionSuccess,
    TResult Function(VoteError value)? error,
    required TResult orElse(),
  }) {
    if (votesLoaded != null) {
      return votesLoaded(this);
    }
    return orElse();
  }
}

abstract class VoteVotesLoaded implements VoteState {
  const factory VoteVotesLoaded({required final List<VoteEntity> votes}) =
      _$VoteVotesLoadedImpl;

  List<VoteEntity> get votes;

  /// Create a copy of VoteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VoteVotesLoadedImplCopyWith<_$VoteVotesLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VoteRankingLoadedImplCopyWith<$Res> {
  factory _$$VoteRankingLoadedImplCopyWith(
    _$VoteRankingLoadedImpl value,
    $Res Function(_$VoteRankingLoadedImpl) then,
  ) = __$$VoteRankingLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<VoteRankingEntity> rankings});
}

/// @nodoc
class __$$VoteRankingLoadedImplCopyWithImpl<$Res>
    extends _$VoteStateCopyWithImpl<$Res, _$VoteRankingLoadedImpl>
    implements _$$VoteRankingLoadedImplCopyWith<$Res> {
  __$$VoteRankingLoadedImplCopyWithImpl(
    _$VoteRankingLoadedImpl _value,
    $Res Function(_$VoteRankingLoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VoteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? rankings = null}) {
    return _then(
      _$VoteRankingLoadedImpl(
        rankings: null == rankings
            ? _value._rankings
            : rankings // ignore: cast_nullable_to_non_nullable
                  as List<VoteRankingEntity>,
      ),
    );
  }
}

/// @nodoc

class _$VoteRankingLoadedImpl implements VoteRankingLoaded {
  const _$VoteRankingLoadedImpl({
    required final List<VoteRankingEntity> rankings,
  }) : _rankings = rankings;

  final List<VoteRankingEntity> _rankings;
  @override
  List<VoteRankingEntity> get rankings {
    if (_rankings is EqualUnmodifiableListView) return _rankings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rankings);
  }

  @override
  String toString() {
    return 'VoteState.rankingLoaded(rankings: $rankings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VoteRankingLoadedImpl &&
            const DeepCollectionEquality().equals(other._rankings, _rankings));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_rankings));

  /// Create a copy of VoteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VoteRankingLoadedImplCopyWith<_$VoteRankingLoadedImpl> get copyWith =>
      __$$VoteRankingLoadedImplCopyWithImpl<_$VoteRankingLoadedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<VoteEntity> votes) votesLoaded,
    required TResult Function(List<VoteRankingEntity> rankings) rankingLoaded,
    required TResult Function(String message) actionSuccess,
    required TResult Function(String message) error,
  }) {
    return rankingLoaded(rankings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<VoteEntity> votes)? votesLoaded,
    TResult? Function(List<VoteRankingEntity> rankings)? rankingLoaded,
    TResult? Function(String message)? actionSuccess,
    TResult? Function(String message)? error,
  }) {
    return rankingLoaded?.call(rankings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<VoteEntity> votes)? votesLoaded,
    TResult Function(List<VoteRankingEntity> rankings)? rankingLoaded,
    TResult Function(String message)? actionSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (rankingLoaded != null) {
      return rankingLoaded(rankings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VoteInitial value) initial,
    required TResult Function(VoteLoading value) loading,
    required TResult Function(VoteVotesLoaded value) votesLoaded,
    required TResult Function(VoteRankingLoaded value) rankingLoaded,
    required TResult Function(VoteActionSuccess value) actionSuccess,
    required TResult Function(VoteError value) error,
  }) {
    return rankingLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VoteInitial value)? initial,
    TResult? Function(VoteLoading value)? loading,
    TResult? Function(VoteVotesLoaded value)? votesLoaded,
    TResult? Function(VoteRankingLoaded value)? rankingLoaded,
    TResult? Function(VoteActionSuccess value)? actionSuccess,
    TResult? Function(VoteError value)? error,
  }) {
    return rankingLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VoteInitial value)? initial,
    TResult Function(VoteLoading value)? loading,
    TResult Function(VoteVotesLoaded value)? votesLoaded,
    TResult Function(VoteRankingLoaded value)? rankingLoaded,
    TResult Function(VoteActionSuccess value)? actionSuccess,
    TResult Function(VoteError value)? error,
    required TResult orElse(),
  }) {
    if (rankingLoaded != null) {
      return rankingLoaded(this);
    }
    return orElse();
  }
}

abstract class VoteRankingLoaded implements VoteState {
  const factory VoteRankingLoaded({
    required final List<VoteRankingEntity> rankings,
  }) = _$VoteRankingLoadedImpl;

  List<VoteRankingEntity> get rankings;

  /// Create a copy of VoteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VoteRankingLoadedImplCopyWith<_$VoteRankingLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VoteActionSuccessImplCopyWith<$Res> {
  factory _$$VoteActionSuccessImplCopyWith(
    _$VoteActionSuccessImpl value,
    $Res Function(_$VoteActionSuccessImpl) then,
  ) = __$$VoteActionSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$VoteActionSuccessImplCopyWithImpl<$Res>
    extends _$VoteStateCopyWithImpl<$Res, _$VoteActionSuccessImpl>
    implements _$$VoteActionSuccessImplCopyWith<$Res> {
  __$$VoteActionSuccessImplCopyWithImpl(
    _$VoteActionSuccessImpl _value,
    $Res Function(_$VoteActionSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VoteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$VoteActionSuccessImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$VoteActionSuccessImpl implements VoteActionSuccess {
  const _$VoteActionSuccessImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'VoteState.actionSuccess(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VoteActionSuccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of VoteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VoteActionSuccessImplCopyWith<_$VoteActionSuccessImpl> get copyWith =>
      __$$VoteActionSuccessImplCopyWithImpl<_$VoteActionSuccessImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<VoteEntity> votes) votesLoaded,
    required TResult Function(List<VoteRankingEntity> rankings) rankingLoaded,
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
    TResult? Function(List<VoteEntity> votes)? votesLoaded,
    TResult? Function(List<VoteRankingEntity> rankings)? rankingLoaded,
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
    TResult Function(List<VoteEntity> votes)? votesLoaded,
    TResult Function(List<VoteRankingEntity> rankings)? rankingLoaded,
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
    required TResult Function(VoteInitial value) initial,
    required TResult Function(VoteLoading value) loading,
    required TResult Function(VoteVotesLoaded value) votesLoaded,
    required TResult Function(VoteRankingLoaded value) rankingLoaded,
    required TResult Function(VoteActionSuccess value) actionSuccess,
    required TResult Function(VoteError value) error,
  }) {
    return actionSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VoteInitial value)? initial,
    TResult? Function(VoteLoading value)? loading,
    TResult? Function(VoteVotesLoaded value)? votesLoaded,
    TResult? Function(VoteRankingLoaded value)? rankingLoaded,
    TResult? Function(VoteActionSuccess value)? actionSuccess,
    TResult? Function(VoteError value)? error,
  }) {
    return actionSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VoteInitial value)? initial,
    TResult Function(VoteLoading value)? loading,
    TResult Function(VoteVotesLoaded value)? votesLoaded,
    TResult Function(VoteRankingLoaded value)? rankingLoaded,
    TResult Function(VoteActionSuccess value)? actionSuccess,
    TResult Function(VoteError value)? error,
    required TResult orElse(),
  }) {
    if (actionSuccess != null) {
      return actionSuccess(this);
    }
    return orElse();
  }
}

abstract class VoteActionSuccess implements VoteState {
  const factory VoteActionSuccess({required final String message}) =
      _$VoteActionSuccessImpl;

  String get message;

  /// Create a copy of VoteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VoteActionSuccessImplCopyWith<_$VoteActionSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VoteErrorImplCopyWith<$Res> {
  factory _$$VoteErrorImplCopyWith(
    _$VoteErrorImpl value,
    $Res Function(_$VoteErrorImpl) then,
  ) = __$$VoteErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$VoteErrorImplCopyWithImpl<$Res>
    extends _$VoteStateCopyWithImpl<$Res, _$VoteErrorImpl>
    implements _$$VoteErrorImplCopyWith<$Res> {
  __$$VoteErrorImplCopyWithImpl(
    _$VoteErrorImpl _value,
    $Res Function(_$VoteErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VoteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$VoteErrorImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$VoteErrorImpl implements VoteError {
  const _$VoteErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'VoteState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VoteErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of VoteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VoteErrorImplCopyWith<_$VoteErrorImpl> get copyWith =>
      __$$VoteErrorImplCopyWithImpl<_$VoteErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<VoteEntity> votes) votesLoaded,
    required TResult Function(List<VoteRankingEntity> rankings) rankingLoaded,
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
    TResult? Function(List<VoteEntity> votes)? votesLoaded,
    TResult? Function(List<VoteRankingEntity> rankings)? rankingLoaded,
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
    TResult Function(List<VoteEntity> votes)? votesLoaded,
    TResult Function(List<VoteRankingEntity> rankings)? rankingLoaded,
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
    required TResult Function(VoteInitial value) initial,
    required TResult Function(VoteLoading value) loading,
    required TResult Function(VoteVotesLoaded value) votesLoaded,
    required TResult Function(VoteRankingLoaded value) rankingLoaded,
    required TResult Function(VoteActionSuccess value) actionSuccess,
    required TResult Function(VoteError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VoteInitial value)? initial,
    TResult? Function(VoteLoading value)? loading,
    TResult? Function(VoteVotesLoaded value)? votesLoaded,
    TResult? Function(VoteRankingLoaded value)? rankingLoaded,
    TResult? Function(VoteActionSuccess value)? actionSuccess,
    TResult? Function(VoteError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VoteInitial value)? initial,
    TResult Function(VoteLoading value)? loading,
    TResult Function(VoteVotesLoaded value)? votesLoaded,
    TResult Function(VoteRankingLoaded value)? rankingLoaded,
    TResult Function(VoteActionSuccess value)? actionSuccess,
    TResult Function(VoteError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class VoteError implements VoteState {
  const factory VoteError({required final String message}) = _$VoteErrorImpl;

  String get message;

  /// Create a copy of VoteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VoteErrorImplCopyWith<_$VoteErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
