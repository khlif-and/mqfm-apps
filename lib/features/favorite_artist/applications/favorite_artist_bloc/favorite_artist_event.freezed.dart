// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_artist_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$FavoriteArtistEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(String artistName) add,
    required TResult Function(int id) remove,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(String artistName)? add,
    TResult? Function(int id)? remove,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(String artistName)? add,
    TResult Function(int id)? remove,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoriteArtistFetch value) fetch,
    required TResult Function(FavoriteArtistAdd value) add,
    required TResult Function(FavoriteArtistRemove value) remove,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoriteArtistFetch value)? fetch,
    TResult? Function(FavoriteArtistAdd value)? add,
    TResult? Function(FavoriteArtistRemove value)? remove,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoriteArtistFetch value)? fetch,
    TResult Function(FavoriteArtistAdd value)? add,
    TResult Function(FavoriteArtistRemove value)? remove,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteArtistEventCopyWith<$Res> {
  factory $FavoriteArtistEventCopyWith(
    FavoriteArtistEvent value,
    $Res Function(FavoriteArtistEvent) then,
  ) = _$FavoriteArtistEventCopyWithImpl<$Res, FavoriteArtistEvent>;
}

/// @nodoc
class _$FavoriteArtistEventCopyWithImpl<$Res, $Val extends FavoriteArtistEvent>
    implements $FavoriteArtistEventCopyWith<$Res> {
  _$FavoriteArtistEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavoriteArtistEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FavoriteArtistFetchImplCopyWith<$Res> {
  factory _$$FavoriteArtistFetchImplCopyWith(
    _$FavoriteArtistFetchImpl value,
    $Res Function(_$FavoriteArtistFetchImpl) then,
  ) = __$$FavoriteArtistFetchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FavoriteArtistFetchImplCopyWithImpl<$Res>
    extends _$FavoriteArtistEventCopyWithImpl<$Res, _$FavoriteArtistFetchImpl>
    implements _$$FavoriteArtistFetchImplCopyWith<$Res> {
  __$$FavoriteArtistFetchImplCopyWithImpl(
    _$FavoriteArtistFetchImpl _value,
    $Res Function(_$FavoriteArtistFetchImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FavoriteArtistEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FavoriteArtistFetchImpl implements FavoriteArtistFetch {
  const _$FavoriteArtistFetchImpl();

  @override
  String toString() {
    return 'FavoriteArtistEvent.fetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteArtistFetchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(String artistName) add,
    required TResult Function(int id) remove,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(String artistName)? add,
    TResult? Function(int id)? remove,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(String artistName)? add,
    TResult Function(int id)? remove,
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
    required TResult Function(FavoriteArtistFetch value) fetch,
    required TResult Function(FavoriteArtistAdd value) add,
    required TResult Function(FavoriteArtistRemove value) remove,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoriteArtistFetch value)? fetch,
    TResult? Function(FavoriteArtistAdd value)? add,
    TResult? Function(FavoriteArtistRemove value)? remove,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoriteArtistFetch value)? fetch,
    TResult Function(FavoriteArtistAdd value)? add,
    TResult Function(FavoriteArtistRemove value)? remove,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class FavoriteArtistFetch implements FavoriteArtistEvent {
  const factory FavoriteArtistFetch() = _$FavoriteArtistFetchImpl;
}

/// @nodoc
abstract class _$$FavoriteArtistAddImplCopyWith<$Res> {
  factory _$$FavoriteArtistAddImplCopyWith(
    _$FavoriteArtistAddImpl value,
    $Res Function(_$FavoriteArtistAddImpl) then,
  ) = __$$FavoriteArtistAddImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String artistName});
}

/// @nodoc
class __$$FavoriteArtistAddImplCopyWithImpl<$Res>
    extends _$FavoriteArtistEventCopyWithImpl<$Res, _$FavoriteArtistAddImpl>
    implements _$$FavoriteArtistAddImplCopyWith<$Res> {
  __$$FavoriteArtistAddImplCopyWithImpl(
    _$FavoriteArtistAddImpl _value,
    $Res Function(_$FavoriteArtistAddImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FavoriteArtistEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? artistName = null}) {
    return _then(
      _$FavoriteArtistAddImpl(
        artistName: null == artistName
            ? _value.artistName
            : artistName // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$FavoriteArtistAddImpl implements FavoriteArtistAdd {
  const _$FavoriteArtistAddImpl({required this.artistName});

  @override
  final String artistName;

  @override
  String toString() {
    return 'FavoriteArtistEvent.add(artistName: $artistName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteArtistAddImpl &&
            (identical(other.artistName, artistName) ||
                other.artistName == artistName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, artistName);

  /// Create a copy of FavoriteArtistEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteArtistAddImplCopyWith<_$FavoriteArtistAddImpl> get copyWith =>
      __$$FavoriteArtistAddImplCopyWithImpl<_$FavoriteArtistAddImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(String artistName) add,
    required TResult Function(int id) remove,
  }) {
    return add(artistName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(String artistName)? add,
    TResult? Function(int id)? remove,
  }) {
    return add?.call(artistName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(String artistName)? add,
    TResult Function(int id)? remove,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(artistName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoriteArtistFetch value) fetch,
    required TResult Function(FavoriteArtistAdd value) add,
    required TResult Function(FavoriteArtistRemove value) remove,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoriteArtistFetch value)? fetch,
    TResult? Function(FavoriteArtistAdd value)? add,
    TResult? Function(FavoriteArtistRemove value)? remove,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoriteArtistFetch value)? fetch,
    TResult Function(FavoriteArtistAdd value)? add,
    TResult Function(FavoriteArtistRemove value)? remove,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class FavoriteArtistAdd implements FavoriteArtistEvent {
  const factory FavoriteArtistAdd({required final String artistName}) =
      _$FavoriteArtistAddImpl;

  String get artistName;

  /// Create a copy of FavoriteArtistEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FavoriteArtistAddImplCopyWith<_$FavoriteArtistAddImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FavoriteArtistRemoveImplCopyWith<$Res> {
  factory _$$FavoriteArtistRemoveImplCopyWith(
    _$FavoriteArtistRemoveImpl value,
    $Res Function(_$FavoriteArtistRemoveImpl) then,
  ) = __$$FavoriteArtistRemoveImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$FavoriteArtistRemoveImplCopyWithImpl<$Res>
    extends _$FavoriteArtistEventCopyWithImpl<$Res, _$FavoriteArtistRemoveImpl>
    implements _$$FavoriteArtistRemoveImplCopyWith<$Res> {
  __$$FavoriteArtistRemoveImplCopyWithImpl(
    _$FavoriteArtistRemoveImpl _value,
    $Res Function(_$FavoriteArtistRemoveImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FavoriteArtistEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _$FavoriteArtistRemoveImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$FavoriteArtistRemoveImpl implements FavoriteArtistRemove {
  const _$FavoriteArtistRemoveImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'FavoriteArtistEvent.remove(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteArtistRemoveImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of FavoriteArtistEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteArtistRemoveImplCopyWith<_$FavoriteArtistRemoveImpl>
  get copyWith =>
      __$$FavoriteArtistRemoveImplCopyWithImpl<_$FavoriteArtistRemoveImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(String artistName) add,
    required TResult Function(int id) remove,
  }) {
    return remove(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(String artistName)? add,
    TResult? Function(int id)? remove,
  }) {
    return remove?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(String artistName)? add,
    TResult Function(int id)? remove,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoriteArtistFetch value) fetch,
    required TResult Function(FavoriteArtistAdd value) add,
    required TResult Function(FavoriteArtistRemove value) remove,
  }) {
    return remove(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoriteArtistFetch value)? fetch,
    TResult? Function(FavoriteArtistAdd value)? add,
    TResult? Function(FavoriteArtistRemove value)? remove,
  }) {
    return remove?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoriteArtistFetch value)? fetch,
    TResult Function(FavoriteArtistAdd value)? add,
    TResult Function(FavoriteArtistRemove value)? remove,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(this);
    }
    return orElse();
  }
}

abstract class FavoriteArtistRemove implements FavoriteArtistEvent {
  const factory FavoriteArtistRemove({required final int id}) =
      _$FavoriteArtistRemoveImpl;

  int get id;

  /// Create a copy of FavoriteArtistEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FavoriteArtistRemoveImplCopyWith<_$FavoriteArtistRemoveImpl>
  get copyWith => throw _privateConstructorUsedError;
}
