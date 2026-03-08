// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_pick_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$OnboardingPickState {
  List<AudioEntity> get audios => throw _privateConstructorUsedError;
  Set<int> get selectedIds => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of OnboardingPickState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OnboardingPickStateCopyWith<OnboardingPickState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingPickStateCopyWith<$Res> {
  factory $OnboardingPickStateCopyWith(
    OnboardingPickState value,
    $Res Function(OnboardingPickState) then,
  ) = _$OnboardingPickStateCopyWithImpl<$Res, OnboardingPickState>;
  @useResult
  $Res call({
    List<AudioEntity> audios,
    Set<int> selectedIds,
    bool isLoading,
    String? error,
  });
}

/// @nodoc
class _$OnboardingPickStateCopyWithImpl<$Res, $Val extends OnboardingPickState>
    implements $OnboardingPickStateCopyWith<$Res> {
  _$OnboardingPickStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OnboardingPickState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audios = null,
    Object? selectedIds = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(
      _value.copyWith(
            audios: null == audios
                ? _value.audios
                : audios // ignore: cast_nullable_to_non_nullable
                      as List<AudioEntity>,
            selectedIds: null == selectedIds
                ? _value.selectedIds
                : selectedIds // ignore: cast_nullable_to_non_nullable
                      as Set<int>,
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
abstract class _$$OnboardingPickStateImplCopyWith<$Res>
    implements $OnboardingPickStateCopyWith<$Res> {
  factory _$$OnboardingPickStateImplCopyWith(
    _$OnboardingPickStateImpl value,
    $Res Function(_$OnboardingPickStateImpl) then,
  ) = __$$OnboardingPickStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<AudioEntity> audios,
    Set<int> selectedIds,
    bool isLoading,
    String? error,
  });
}

/// @nodoc
class __$$OnboardingPickStateImplCopyWithImpl<$Res>
    extends _$OnboardingPickStateCopyWithImpl<$Res, _$OnboardingPickStateImpl>
    implements _$$OnboardingPickStateImplCopyWith<$Res> {
  __$$OnboardingPickStateImplCopyWithImpl(
    _$OnboardingPickStateImpl _value,
    $Res Function(_$OnboardingPickStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OnboardingPickState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audios = null,
    Object? selectedIds = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(
      _$OnboardingPickStateImpl(
        audios: null == audios
            ? _value._audios
            : audios // ignore: cast_nullable_to_non_nullable
                  as List<AudioEntity>,
        selectedIds: null == selectedIds
            ? _value._selectedIds
            : selectedIds // ignore: cast_nullable_to_non_nullable
                  as Set<int>,
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

class _$OnboardingPickStateImpl implements _OnboardingPickState {
  const _$OnboardingPickStateImpl({
    final List<AudioEntity> audios = const [],
    final Set<int> selectedIds = const {},
    this.isLoading = true,
    this.error,
  }) : _audios = audios,
       _selectedIds = selectedIds;

  final List<AudioEntity> _audios;
  @override
  @JsonKey()
  List<AudioEntity> get audios {
    if (_audios is EqualUnmodifiableListView) return _audios;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_audios);
  }

  final Set<int> _selectedIds;
  @override
  @JsonKey()
  Set<int> get selectedIds {
    if (_selectedIds is EqualUnmodifiableSetView) return _selectedIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_selectedIds);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;

  @override
  String toString() {
    return 'OnboardingPickState(audios: $audios, selectedIds: $selectedIds, isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnboardingPickStateImpl &&
            const DeepCollectionEquality().equals(other._audios, _audios) &&
            const DeepCollectionEquality().equals(
              other._selectedIds,
              _selectedIds,
            ) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_audios),
    const DeepCollectionEquality().hash(_selectedIds),
    isLoading,
    error,
  );

  /// Create a copy of OnboardingPickState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnboardingPickStateImplCopyWith<_$OnboardingPickStateImpl> get copyWith =>
      __$$OnboardingPickStateImplCopyWithImpl<_$OnboardingPickStateImpl>(
        this,
        _$identity,
      );
}

abstract class _OnboardingPickState implements OnboardingPickState {
  const factory _OnboardingPickState({
    final List<AudioEntity> audios,
    final Set<int> selectedIds,
    final bool isLoading,
    final String? error,
  }) = _$OnboardingPickStateImpl;

  @override
  List<AudioEntity> get audios;
  @override
  Set<int> get selectedIds;
  @override
  bool get isLoading;
  @override
  String? get error;

  /// Create a copy of OnboardingPickState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnboardingPickStateImplCopyWith<_$OnboardingPickStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
