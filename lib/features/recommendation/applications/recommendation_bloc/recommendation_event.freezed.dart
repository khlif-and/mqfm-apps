// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recommendation_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$RecommendationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAll,
    required TResult Function(String artist) fetchByArtist,
    required TResult Function(int audioId) fetchSimilar,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAll,
    TResult? Function(String artist)? fetchByArtist,
    TResult? Function(int audioId)? fetchSimilar,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAll,
    TResult Function(String artist)? fetchByArtist,
    TResult Function(int audioId)? fetchSimilar,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecommendationFetchAll value) fetchAll,
    required TResult Function(RecommendationFetchByArtist value) fetchByArtist,
    required TResult Function(RecommendationFetchSimilar value) fetchSimilar,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecommendationFetchAll value)? fetchAll,
    TResult? Function(RecommendationFetchByArtist value)? fetchByArtist,
    TResult? Function(RecommendationFetchSimilar value)? fetchSimilar,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecommendationFetchAll value)? fetchAll,
    TResult Function(RecommendationFetchByArtist value)? fetchByArtist,
    TResult Function(RecommendationFetchSimilar value)? fetchSimilar,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecommendationEventCopyWith<$Res> {
  factory $RecommendationEventCopyWith(
    RecommendationEvent value,
    $Res Function(RecommendationEvent) then,
  ) = _$RecommendationEventCopyWithImpl<$Res, RecommendationEvent>;
}

/// @nodoc
class _$RecommendationEventCopyWithImpl<$Res, $Val extends RecommendationEvent>
    implements $RecommendationEventCopyWith<$Res> {
  _$RecommendationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecommendationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$RecommendationFetchAllImplCopyWith<$Res> {
  factory _$$RecommendationFetchAllImplCopyWith(
    _$RecommendationFetchAllImpl value,
    $Res Function(_$RecommendationFetchAllImpl) then,
  ) = __$$RecommendationFetchAllImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecommendationFetchAllImplCopyWithImpl<$Res>
    extends
        _$RecommendationEventCopyWithImpl<$Res, _$RecommendationFetchAllImpl>
    implements _$$RecommendationFetchAllImplCopyWith<$Res> {
  __$$RecommendationFetchAllImplCopyWithImpl(
    _$RecommendationFetchAllImpl _value,
    $Res Function(_$RecommendationFetchAllImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RecommendationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RecommendationFetchAllImpl implements RecommendationFetchAll {
  const _$RecommendationFetchAllImpl();

  @override
  String toString() {
    return 'RecommendationEvent.fetchAll()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecommendationFetchAllImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAll,
    required TResult Function(String artist) fetchByArtist,
    required TResult Function(int audioId) fetchSimilar,
  }) {
    return fetchAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAll,
    TResult? Function(String artist)? fetchByArtist,
    TResult? Function(int audioId)? fetchSimilar,
  }) {
    return fetchAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAll,
    TResult Function(String artist)? fetchByArtist,
    TResult Function(int audioId)? fetchSimilar,
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
    required TResult Function(RecommendationFetchAll value) fetchAll,
    required TResult Function(RecommendationFetchByArtist value) fetchByArtist,
    required TResult Function(RecommendationFetchSimilar value) fetchSimilar,
  }) {
    return fetchAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecommendationFetchAll value)? fetchAll,
    TResult? Function(RecommendationFetchByArtist value)? fetchByArtist,
    TResult? Function(RecommendationFetchSimilar value)? fetchSimilar,
  }) {
    return fetchAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecommendationFetchAll value)? fetchAll,
    TResult Function(RecommendationFetchByArtist value)? fetchByArtist,
    TResult Function(RecommendationFetchSimilar value)? fetchSimilar,
    required TResult orElse(),
  }) {
    if (fetchAll != null) {
      return fetchAll(this);
    }
    return orElse();
  }
}

abstract class RecommendationFetchAll implements RecommendationEvent {
  const factory RecommendationFetchAll() = _$RecommendationFetchAllImpl;
}

/// @nodoc
abstract class _$$RecommendationFetchByArtistImplCopyWith<$Res> {
  factory _$$RecommendationFetchByArtistImplCopyWith(
    _$RecommendationFetchByArtistImpl value,
    $Res Function(_$RecommendationFetchByArtistImpl) then,
  ) = __$$RecommendationFetchByArtistImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String artist});
}

/// @nodoc
class __$$RecommendationFetchByArtistImplCopyWithImpl<$Res>
    extends
        _$RecommendationEventCopyWithImpl<
          $Res,
          _$RecommendationFetchByArtistImpl
        >
    implements _$$RecommendationFetchByArtistImplCopyWith<$Res> {
  __$$RecommendationFetchByArtistImplCopyWithImpl(
    _$RecommendationFetchByArtistImpl _value,
    $Res Function(_$RecommendationFetchByArtistImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RecommendationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? artist = null}) {
    return _then(
      _$RecommendationFetchByArtistImpl(
        artist: null == artist
            ? _value.artist
            : artist // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$RecommendationFetchByArtistImpl implements RecommendationFetchByArtist {
  const _$RecommendationFetchByArtistImpl({required this.artist});

  @override
  final String artist;

  @override
  String toString() {
    return 'RecommendationEvent.fetchByArtist(artist: $artist)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecommendationFetchByArtistImpl &&
            (identical(other.artist, artist) || other.artist == artist));
  }

  @override
  int get hashCode => Object.hash(runtimeType, artist);

  /// Create a copy of RecommendationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecommendationFetchByArtistImplCopyWith<_$RecommendationFetchByArtistImpl>
  get copyWith =>
      __$$RecommendationFetchByArtistImplCopyWithImpl<
        _$RecommendationFetchByArtistImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAll,
    required TResult Function(String artist) fetchByArtist,
    required TResult Function(int audioId) fetchSimilar,
  }) {
    return fetchByArtist(artist);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAll,
    TResult? Function(String artist)? fetchByArtist,
    TResult? Function(int audioId)? fetchSimilar,
  }) {
    return fetchByArtist?.call(artist);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAll,
    TResult Function(String artist)? fetchByArtist,
    TResult Function(int audioId)? fetchSimilar,
    required TResult orElse(),
  }) {
    if (fetchByArtist != null) {
      return fetchByArtist(artist);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecommendationFetchAll value) fetchAll,
    required TResult Function(RecommendationFetchByArtist value) fetchByArtist,
    required TResult Function(RecommendationFetchSimilar value) fetchSimilar,
  }) {
    return fetchByArtist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecommendationFetchAll value)? fetchAll,
    TResult? Function(RecommendationFetchByArtist value)? fetchByArtist,
    TResult? Function(RecommendationFetchSimilar value)? fetchSimilar,
  }) {
    return fetchByArtist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecommendationFetchAll value)? fetchAll,
    TResult Function(RecommendationFetchByArtist value)? fetchByArtist,
    TResult Function(RecommendationFetchSimilar value)? fetchSimilar,
    required TResult orElse(),
  }) {
    if (fetchByArtist != null) {
      return fetchByArtist(this);
    }
    return orElse();
  }
}

abstract class RecommendationFetchByArtist implements RecommendationEvent {
  const factory RecommendationFetchByArtist({required final String artist}) =
      _$RecommendationFetchByArtistImpl;

  String get artist;

  /// Create a copy of RecommendationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecommendationFetchByArtistImplCopyWith<_$RecommendationFetchByArtistImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RecommendationFetchSimilarImplCopyWith<$Res> {
  factory _$$RecommendationFetchSimilarImplCopyWith(
    _$RecommendationFetchSimilarImpl value,
    $Res Function(_$RecommendationFetchSimilarImpl) then,
  ) = __$$RecommendationFetchSimilarImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int audioId});
}

/// @nodoc
class __$$RecommendationFetchSimilarImplCopyWithImpl<$Res>
    extends
        _$RecommendationEventCopyWithImpl<
          $Res,
          _$RecommendationFetchSimilarImpl
        >
    implements _$$RecommendationFetchSimilarImplCopyWith<$Res> {
  __$$RecommendationFetchSimilarImplCopyWithImpl(
    _$RecommendationFetchSimilarImpl _value,
    $Res Function(_$RecommendationFetchSimilarImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RecommendationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? audioId = null}) {
    return _then(
      _$RecommendationFetchSimilarImpl(
        audioId: null == audioId
            ? _value.audioId
            : audioId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$RecommendationFetchSimilarImpl implements RecommendationFetchSimilar {
  const _$RecommendationFetchSimilarImpl({required this.audioId});

  @override
  final int audioId;

  @override
  String toString() {
    return 'RecommendationEvent.fetchSimilar(audioId: $audioId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecommendationFetchSimilarImpl &&
            (identical(other.audioId, audioId) || other.audioId == audioId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, audioId);

  /// Create a copy of RecommendationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecommendationFetchSimilarImplCopyWith<_$RecommendationFetchSimilarImpl>
  get copyWith =>
      __$$RecommendationFetchSimilarImplCopyWithImpl<
        _$RecommendationFetchSimilarImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAll,
    required TResult Function(String artist) fetchByArtist,
    required TResult Function(int audioId) fetchSimilar,
  }) {
    return fetchSimilar(audioId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAll,
    TResult? Function(String artist)? fetchByArtist,
    TResult? Function(int audioId)? fetchSimilar,
  }) {
    return fetchSimilar?.call(audioId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAll,
    TResult Function(String artist)? fetchByArtist,
    TResult Function(int audioId)? fetchSimilar,
    required TResult orElse(),
  }) {
    if (fetchSimilar != null) {
      return fetchSimilar(audioId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecommendationFetchAll value) fetchAll,
    required TResult Function(RecommendationFetchByArtist value) fetchByArtist,
    required TResult Function(RecommendationFetchSimilar value) fetchSimilar,
  }) {
    return fetchSimilar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecommendationFetchAll value)? fetchAll,
    TResult? Function(RecommendationFetchByArtist value)? fetchByArtist,
    TResult? Function(RecommendationFetchSimilar value)? fetchSimilar,
  }) {
    return fetchSimilar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecommendationFetchAll value)? fetchAll,
    TResult Function(RecommendationFetchByArtist value)? fetchByArtist,
    TResult Function(RecommendationFetchSimilar value)? fetchSimilar,
    required TResult orElse(),
  }) {
    if (fetchSimilar != null) {
      return fetchSimilar(this);
    }
    return orElse();
  }
}

abstract class RecommendationFetchSimilar implements RecommendationEvent {
  const factory RecommendationFetchSimilar({required final int audioId}) =
      _$RecommendationFetchSimilarImpl;

  int get audioId;

  /// Create a copy of RecommendationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecommendationFetchSimilarImplCopyWith<_$RecommendationFetchSimilarImpl>
  get copyWith => throw _privateConstructorUsedError;
}
