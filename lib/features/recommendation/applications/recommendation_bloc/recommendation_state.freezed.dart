// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recommendation_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$RecommendationState {
  List<AudioEntity> get personalized => throw _privateConstructorUsedError;
  List<AudioEntity> get popular => throw _privateConstructorUsedError;
  List<AudioEntity> get quickPick => throw _privateConstructorUsedError;
  List<AudioEntity> get byArtist => throw _privateConstructorUsedError;
  String get artistName => throw _privateConstructorUsedError;
  List<AudioEntity> get similar => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of RecommendationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecommendationStateCopyWith<RecommendationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecommendationStateCopyWith<$Res> {
  factory $RecommendationStateCopyWith(
    RecommendationState value,
    $Res Function(RecommendationState) then,
  ) = _$RecommendationStateCopyWithImpl<$Res, RecommendationState>;
  @useResult
  $Res call({
    List<AudioEntity> personalized,
    List<AudioEntity> popular,
    List<AudioEntity> quickPick,
    List<AudioEntity> byArtist,
    String artistName,
    List<AudioEntity> similar,
    bool isLoading,
    String? error,
  });
}

/// @nodoc
class _$RecommendationStateCopyWithImpl<$Res, $Val extends RecommendationState>
    implements $RecommendationStateCopyWith<$Res> {
  _$RecommendationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecommendationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? personalized = null,
    Object? popular = null,
    Object? quickPick = null,
    Object? byArtist = null,
    Object? artistName = null,
    Object? similar = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(
      _value.copyWith(
            personalized: null == personalized
                ? _value.personalized
                : personalized // ignore: cast_nullable_to_non_nullable
                      as List<AudioEntity>,
            popular: null == popular
                ? _value.popular
                : popular // ignore: cast_nullable_to_non_nullable
                      as List<AudioEntity>,
            quickPick: null == quickPick
                ? _value.quickPick
                : quickPick // ignore: cast_nullable_to_non_nullable
                      as List<AudioEntity>,
            byArtist: null == byArtist
                ? _value.byArtist
                : byArtist // ignore: cast_nullable_to_non_nullable
                      as List<AudioEntity>,
            artistName: null == artistName
                ? _value.artistName
                : artistName // ignore: cast_nullable_to_non_nullable
                      as String,
            similar: null == similar
                ? _value.similar
                : similar // ignore: cast_nullable_to_non_nullable
                      as List<AudioEntity>,
            isLoading: null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                      as bool,
            error: freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RecommendationStateImplCopyWith<$Res>
    implements $RecommendationStateCopyWith<$Res> {
  factory _$$RecommendationStateImplCopyWith(
    _$RecommendationStateImpl value,
    $Res Function(_$RecommendationStateImpl) then,
  ) = __$$RecommendationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<AudioEntity> personalized,
    List<AudioEntity> popular,
    List<AudioEntity> quickPick,
    List<AudioEntity> byArtist,
    String artistName,
    List<AudioEntity> similar,
    bool isLoading,
    String? error,
  });
}

/// @nodoc
class __$$RecommendationStateImplCopyWithImpl<$Res>
    extends _$RecommendationStateCopyWithImpl<$Res, _$RecommendationStateImpl>
    implements _$$RecommendationStateImplCopyWith<$Res> {
  __$$RecommendationStateImplCopyWithImpl(
    _$RecommendationStateImpl _value,
    $Res Function(_$RecommendationStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RecommendationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? personalized = null,
    Object? popular = null,
    Object? quickPick = null,
    Object? byArtist = null,
    Object? artistName = null,
    Object? similar = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(
      _$RecommendationStateImpl(
        personalized: null == personalized
            ? _value._personalized
            : personalized // ignore: cast_nullable_to_non_nullable
                  as List<AudioEntity>,
        popular: null == popular
            ? _value._popular
            : popular // ignore: cast_nullable_to_non_nullable
                  as List<AudioEntity>,
        quickPick: null == quickPick
            ? _value._quickPick
            : quickPick // ignore: cast_nullable_to_non_nullable
                  as List<AudioEntity>,
        byArtist: null == byArtist
            ? _value._byArtist
            : byArtist // ignore: cast_nullable_to_non_nullable
                  as List<AudioEntity>,
        artistName: null == artistName
            ? _value.artistName
            : artistName // ignore: cast_nullable_to_non_nullable
                  as String,
        similar: null == similar
            ? _value._similar
            : similar // ignore: cast_nullable_to_non_nullable
                  as List<AudioEntity>,
        isLoading: null == isLoading
            ? _value.isLoading
            : isLoading // ignore: cast_nullable_to_non_nullable
                  as bool,
        error: freezed == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$RecommendationStateImpl implements _RecommendationState {
  const _$RecommendationStateImpl({
    final List<AudioEntity> personalized = const [],
    final List<AudioEntity> popular = const [],
    final List<AudioEntity> quickPick = const [],
    final List<AudioEntity> byArtist = const [],
    this.artistName = '',
    final List<AudioEntity> similar = const [],
    this.isLoading = true,
    this.error,
  }) : _personalized = personalized,
       _popular = popular,
       _quickPick = quickPick,
       _byArtist = byArtist,
       _similar = similar;

  final List<AudioEntity> _personalized;
  @override
  @JsonKey()
  List<AudioEntity> get personalized {
    if (_personalized is EqualUnmodifiableListView) return _personalized;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_personalized);
  }

  final List<AudioEntity> _popular;
  @override
  @JsonKey()
  List<AudioEntity> get popular {
    if (_popular is EqualUnmodifiableListView) return _popular;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_popular);
  }

  final List<AudioEntity> _quickPick;
  @override
  @JsonKey()
  List<AudioEntity> get quickPick {
    if (_quickPick is EqualUnmodifiableListView) return _quickPick;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_quickPick);
  }

  final List<AudioEntity> _byArtist;
  @override
  @JsonKey()
  List<AudioEntity> get byArtist {
    if (_byArtist is EqualUnmodifiableListView) return _byArtist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_byArtist);
  }

  @override
  @JsonKey()
  final String artistName;
  final List<AudioEntity> _similar;
  @override
  @JsonKey()
  List<AudioEntity> get similar {
    if (_similar is EqualUnmodifiableListView) return _similar;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_similar);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;

  @override
  String toString() {
    return 'RecommendationState(personalized: $personalized, popular: $popular, quickPick: $quickPick, byArtist: $byArtist, artistName: $artistName, similar: $similar, isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecommendationStateImpl &&
            const DeepCollectionEquality().equals(
              other._personalized,
              _personalized,
            ) &&
            const DeepCollectionEquality().equals(other._popular, _popular) &&
            const DeepCollectionEquality().equals(
              other._quickPick,
              _quickPick,
            ) &&
            const DeepCollectionEquality().equals(other._byArtist, _byArtist) &&
            (identical(other.artistName, artistName) ||
                other.artistName == artistName) &&
            const DeepCollectionEquality().equals(other._similar, _similar) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_personalized),
    const DeepCollectionEquality().hash(_popular),
    const DeepCollectionEquality().hash(_quickPick),
    const DeepCollectionEquality().hash(_byArtist),
    artistName,
    const DeepCollectionEquality().hash(_similar),
    isLoading,
    error,
  );

  /// Create a copy of RecommendationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecommendationStateImplCopyWith<_$RecommendationStateImpl> get copyWith =>
      __$$RecommendationStateImplCopyWithImpl<_$RecommendationStateImpl>(
        this,
        _$identity,
      );
}

abstract class _RecommendationState implements RecommendationState {
  const factory _RecommendationState({
    final List<AudioEntity> personalized,
    final List<AudioEntity> popular,
    final List<AudioEntity> quickPick,
    final List<AudioEntity> byArtist,
    final String artistName,
    final List<AudioEntity> similar,
    final bool isLoading,
    final String? error,
  }) = _$RecommendationStateImpl;

  @override
  List<AudioEntity> get personalized;
  @override
  List<AudioEntity> get popular;
  @override
  List<AudioEntity> get quickPick;
  @override
  List<AudioEntity> get byArtist;
  @override
  String get artistName;
  @override
  List<AudioEntity> get similar;
  @override
  bool get isLoading;
  @override
  String? get error;

  /// Create a copy of RecommendationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecommendationStateImplCopyWith<_$RecommendationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
