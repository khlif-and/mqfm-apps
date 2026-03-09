// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'series_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SeriesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(String query) search,
    required TResult Function(int id) fetchDetail,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(String query)? search,
    TResult? Function(int id)? fetchDetail,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(String query)? search,
    TResult Function(int id)? fetchDetail,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SeriesFetch value) fetch,
    required TResult Function(SeriesSearch value) search,
    required TResult Function(SeriesFetchDetail value) fetchDetail,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SeriesFetch value)? fetch,
    TResult? Function(SeriesSearch value)? search,
    TResult? Function(SeriesFetchDetail value)? fetchDetail,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SeriesFetch value)? fetch,
    TResult Function(SeriesSearch value)? search,
    TResult Function(SeriesFetchDetail value)? fetchDetail,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeriesEventCopyWith<$Res> {
  factory $SeriesEventCopyWith(
    SeriesEvent value,
    $Res Function(SeriesEvent) then,
  ) = _$SeriesEventCopyWithImpl<$Res, SeriesEvent>;
}

/// @nodoc
class _$SeriesEventCopyWithImpl<$Res, $Val extends SeriesEvent>
    implements $SeriesEventCopyWith<$Res> {
  _$SeriesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SeriesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SeriesFetchImplCopyWith<$Res> {
  factory _$$SeriesFetchImplCopyWith(
    _$SeriesFetchImpl value,
    $Res Function(_$SeriesFetchImpl) then,
  ) = __$$SeriesFetchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SeriesFetchImplCopyWithImpl<$Res>
    extends _$SeriesEventCopyWithImpl<$Res, _$SeriesFetchImpl>
    implements _$$SeriesFetchImplCopyWith<$Res> {
  __$$SeriesFetchImplCopyWithImpl(
    _$SeriesFetchImpl _value,
    $Res Function(_$SeriesFetchImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SeriesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SeriesFetchImpl implements SeriesFetch {
  const _$SeriesFetchImpl();

  @override
  String toString() {
    return 'SeriesEvent.fetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SeriesFetchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(String query) search,
    required TResult Function(int id) fetchDetail,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(String query)? search,
    TResult? Function(int id)? fetchDetail,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(String query)? search,
    TResult Function(int id)? fetchDetail,
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
    required TResult Function(SeriesFetch value) fetch,
    required TResult Function(SeriesSearch value) search,
    required TResult Function(SeriesFetchDetail value) fetchDetail,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SeriesFetch value)? fetch,
    TResult? Function(SeriesSearch value)? search,
    TResult? Function(SeriesFetchDetail value)? fetchDetail,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SeriesFetch value)? fetch,
    TResult Function(SeriesSearch value)? search,
    TResult Function(SeriesFetchDetail value)? fetchDetail,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class SeriesFetch implements SeriesEvent {
  const factory SeriesFetch() = _$SeriesFetchImpl;
}

/// @nodoc
abstract class _$$SeriesSearchImplCopyWith<$Res> {
  factory _$$SeriesSearchImplCopyWith(
    _$SeriesSearchImpl value,
    $Res Function(_$SeriesSearchImpl) then,
  ) = __$$SeriesSearchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SeriesSearchImplCopyWithImpl<$Res>
    extends _$SeriesEventCopyWithImpl<$Res, _$SeriesSearchImpl>
    implements _$$SeriesSearchImplCopyWith<$Res> {
  __$$SeriesSearchImplCopyWithImpl(
    _$SeriesSearchImpl _value,
    $Res Function(_$SeriesSearchImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SeriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? query = null}) {
    return _then(
      _$SeriesSearchImpl(
        query: null == query
            ? _value.query
            : query // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$SeriesSearchImpl implements SeriesSearch {
  const _$SeriesSearchImpl({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'SeriesEvent.search(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeriesSearchImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of SeriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SeriesSearchImplCopyWith<_$SeriesSearchImpl> get copyWith =>
      __$$SeriesSearchImplCopyWithImpl<_$SeriesSearchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(String query) search,
    required TResult Function(int id) fetchDetail,
  }) {
    return search(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(String query)? search,
    TResult? Function(int id)? fetchDetail,
  }) {
    return search?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(String query)? search,
    TResult Function(int id)? fetchDetail,
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
    required TResult Function(SeriesFetch value) fetch,
    required TResult Function(SeriesSearch value) search,
    required TResult Function(SeriesFetchDetail value) fetchDetail,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SeriesFetch value)? fetch,
    TResult? Function(SeriesSearch value)? search,
    TResult? Function(SeriesFetchDetail value)? fetchDetail,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SeriesFetch value)? fetch,
    TResult Function(SeriesSearch value)? search,
    TResult Function(SeriesFetchDetail value)? fetchDetail,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class SeriesSearch implements SeriesEvent {
  const factory SeriesSearch({required final String query}) =
      _$SeriesSearchImpl;

  String get query;

  /// Create a copy of SeriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SeriesSearchImplCopyWith<_$SeriesSearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SeriesFetchDetailImplCopyWith<$Res> {
  factory _$$SeriesFetchDetailImplCopyWith(
    _$SeriesFetchDetailImpl value,
    $Res Function(_$SeriesFetchDetailImpl) then,
  ) = __$$SeriesFetchDetailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$SeriesFetchDetailImplCopyWithImpl<$Res>
    extends _$SeriesEventCopyWithImpl<$Res, _$SeriesFetchDetailImpl>
    implements _$$SeriesFetchDetailImplCopyWith<$Res> {
  __$$SeriesFetchDetailImplCopyWithImpl(
    _$SeriesFetchDetailImpl _value,
    $Res Function(_$SeriesFetchDetailImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SeriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _$SeriesFetchDetailImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$SeriesFetchDetailImpl implements SeriesFetchDetail {
  const _$SeriesFetchDetailImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'SeriesEvent.fetchDetail(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeriesFetchDetailImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of SeriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SeriesFetchDetailImplCopyWith<_$SeriesFetchDetailImpl> get copyWith =>
      __$$SeriesFetchDetailImplCopyWithImpl<_$SeriesFetchDetailImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(String query) search,
    required TResult Function(int id) fetchDetail,
  }) {
    return fetchDetail(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(String query)? search,
    TResult? Function(int id)? fetchDetail,
  }) {
    return fetchDetail?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(String query)? search,
    TResult Function(int id)? fetchDetail,
    required TResult orElse(),
  }) {
    if (fetchDetail != null) {
      return fetchDetail(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SeriesFetch value) fetch,
    required TResult Function(SeriesSearch value) search,
    required TResult Function(SeriesFetchDetail value) fetchDetail,
  }) {
    return fetchDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SeriesFetch value)? fetch,
    TResult? Function(SeriesSearch value)? search,
    TResult? Function(SeriesFetchDetail value)? fetchDetail,
  }) {
    return fetchDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SeriesFetch value)? fetch,
    TResult Function(SeriesSearch value)? search,
    TResult Function(SeriesFetchDetail value)? fetchDetail,
    required TResult orElse(),
  }) {
    if (fetchDetail != null) {
      return fetchDetail(this);
    }
    return orElse();
  }
}

abstract class SeriesFetchDetail implements SeriesEvent {
  const factory SeriesFetchDetail({required final int id}) =
      _$SeriesFetchDetailImpl;

  int get id;

  /// Create a copy of SeriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SeriesFetchDetailImplCopyWith<_$SeriesFetchDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
