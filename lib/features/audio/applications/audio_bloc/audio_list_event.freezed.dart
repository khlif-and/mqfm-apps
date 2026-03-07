// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audio_list_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AudioListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(String query) search,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(String query)? search,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(String query)? search,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AudioListFetch value) fetch,
    required TResult Function(AudioListSearch value) search,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AudioListFetch value)? fetch,
    TResult? Function(AudioListSearch value)? search,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AudioListFetch value)? fetch,
    TResult Function(AudioListSearch value)? search,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioListEventCopyWith<$Res> {
  factory $AudioListEventCopyWith(
    AudioListEvent value,
    $Res Function(AudioListEvent) then,
  ) = _$AudioListEventCopyWithImpl<$Res, AudioListEvent>;
}

/// @nodoc
class _$AudioListEventCopyWithImpl<$Res, $Val extends AudioListEvent>
    implements $AudioListEventCopyWith<$Res> {
  _$AudioListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AudioListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AudioListFetchImplCopyWith<$Res> {
  factory _$$AudioListFetchImplCopyWith(
    _$AudioListFetchImpl value,
    $Res Function(_$AudioListFetchImpl) then,
  ) = __$$AudioListFetchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AudioListFetchImplCopyWithImpl<$Res>
    extends _$AudioListEventCopyWithImpl<$Res, _$AudioListFetchImpl>
    implements _$$AudioListFetchImplCopyWith<$Res> {
  __$$AudioListFetchImplCopyWithImpl(
    _$AudioListFetchImpl _value,
    $Res Function(_$AudioListFetchImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AudioListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AudioListFetchImpl implements AudioListFetch {
  const _$AudioListFetchImpl();

  @override
  String toString() {
    return 'AudioListEvent.fetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AudioListFetchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(String query) search,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(String query)? search,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(String query)? search,
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
    required TResult Function(AudioListFetch value) fetch,
    required TResult Function(AudioListSearch value) search,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AudioListFetch value)? fetch,
    TResult? Function(AudioListSearch value)? search,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AudioListFetch value)? fetch,
    TResult Function(AudioListSearch value)? search,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class AudioListFetch implements AudioListEvent {
  const factory AudioListFetch() = _$AudioListFetchImpl;
}

/// @nodoc
abstract class _$$AudioListSearchImplCopyWith<$Res> {
  factory _$$AudioListSearchImplCopyWith(
    _$AudioListSearchImpl value,
    $Res Function(_$AudioListSearchImpl) then,
  ) = __$$AudioListSearchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$AudioListSearchImplCopyWithImpl<$Res>
    extends _$AudioListEventCopyWithImpl<$Res, _$AudioListSearchImpl>
    implements _$$AudioListSearchImplCopyWith<$Res> {
  __$$AudioListSearchImplCopyWithImpl(
    _$AudioListSearchImpl _value,
    $Res Function(_$AudioListSearchImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AudioListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? query = null}) {
    return _then(
      _$AudioListSearchImpl(
        query: null == query
            ? _value.query
            : query // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$AudioListSearchImpl implements AudioListSearch {
  const _$AudioListSearchImpl({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'AudioListEvent.search(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudioListSearchImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of AudioListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AudioListSearchImplCopyWith<_$AudioListSearchImpl> get copyWith =>
      __$$AudioListSearchImplCopyWithImpl<_$AudioListSearchImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(String query) search,
  }) {
    return search(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(String query)? search,
  }) {
    return search?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(String query)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AudioListFetch value) fetch,
    required TResult Function(AudioListSearch value) search,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AudioListFetch value)? fetch,
    TResult? Function(AudioListSearch value)? search,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AudioListFetch value)? fetch,
    TResult Function(AudioListSearch value)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class AudioListSearch implements AudioListEvent {
  const factory AudioListSearch({required final String query}) =
      _$AudioListSearchImpl;

  String get query;

  /// Create a copy of AudioListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AudioListSearchImplCopyWith<_$AudioListSearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
