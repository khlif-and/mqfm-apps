// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bookmark_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$BookmarkState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<BookmarkEntity> bookmarks) loaded,
    required TResult Function(String message) actionSuccess,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BookmarkEntity> bookmarks)? loaded,
    TResult? Function(String message)? actionSuccess,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BookmarkEntity> bookmarks)? loaded,
    TResult Function(String message)? actionSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookmarkInitial value) initial,
    required TResult Function(BookmarkLoading value) loading,
    required TResult Function(BookmarkLoaded value) loaded,
    required TResult Function(BookmarkActionSuccess value) actionSuccess,
    required TResult Function(BookmarkError value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookmarkInitial value)? initial,
    TResult? Function(BookmarkLoading value)? loading,
    TResult? Function(BookmarkLoaded value)? loaded,
    TResult? Function(BookmarkActionSuccess value)? actionSuccess,
    TResult? Function(BookmarkError value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookmarkInitial value)? initial,
    TResult Function(BookmarkLoading value)? loading,
    TResult Function(BookmarkLoaded value)? loaded,
    TResult Function(BookmarkActionSuccess value)? actionSuccess,
    TResult Function(BookmarkError value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarkStateCopyWith<$Res> {
  factory $BookmarkStateCopyWith(
    BookmarkState value,
    $Res Function(BookmarkState) then,
  ) = _$BookmarkStateCopyWithImpl<$Res, BookmarkState>;
}

/// @nodoc
class _$BookmarkStateCopyWithImpl<$Res, $Val extends BookmarkState>
    implements $BookmarkStateCopyWith<$Res> {
  _$BookmarkStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookmarkState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$BookmarkInitialImplCopyWith<$Res> {
  factory _$$BookmarkInitialImplCopyWith(
    _$BookmarkInitialImpl value,
    $Res Function(_$BookmarkInitialImpl) then,
  ) = __$$BookmarkInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BookmarkInitialImplCopyWithImpl<$Res>
    extends _$BookmarkStateCopyWithImpl<$Res, _$BookmarkInitialImpl>
    implements _$$BookmarkInitialImplCopyWith<$Res> {
  __$$BookmarkInitialImplCopyWithImpl(
    _$BookmarkInitialImpl _value,
    $Res Function(_$BookmarkInitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BookmarkState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$BookmarkInitialImpl implements BookmarkInitial {
  const _$BookmarkInitialImpl();

  @override
  String toString() {
    return 'BookmarkState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BookmarkInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<BookmarkEntity> bookmarks) loaded,
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
    TResult? Function(List<BookmarkEntity> bookmarks)? loaded,
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
    TResult Function(List<BookmarkEntity> bookmarks)? loaded,
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
    required TResult Function(BookmarkInitial value) initial,
    required TResult Function(BookmarkLoading value) loading,
    required TResult Function(BookmarkLoaded value) loaded,
    required TResult Function(BookmarkActionSuccess value) actionSuccess,
    required TResult Function(BookmarkError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookmarkInitial value)? initial,
    TResult? Function(BookmarkLoading value)? loading,
    TResult? Function(BookmarkLoaded value)? loaded,
    TResult? Function(BookmarkActionSuccess value)? actionSuccess,
    TResult? Function(BookmarkError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookmarkInitial value)? initial,
    TResult Function(BookmarkLoading value)? loading,
    TResult Function(BookmarkLoaded value)? loaded,
    TResult Function(BookmarkActionSuccess value)? actionSuccess,
    TResult Function(BookmarkError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class BookmarkInitial implements BookmarkState {
  const factory BookmarkInitial() = _$BookmarkInitialImpl;
}

/// @nodoc
abstract class _$$BookmarkLoadingImplCopyWith<$Res> {
  factory _$$BookmarkLoadingImplCopyWith(
    _$BookmarkLoadingImpl value,
    $Res Function(_$BookmarkLoadingImpl) then,
  ) = __$$BookmarkLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BookmarkLoadingImplCopyWithImpl<$Res>
    extends _$BookmarkStateCopyWithImpl<$Res, _$BookmarkLoadingImpl>
    implements _$$BookmarkLoadingImplCopyWith<$Res> {
  __$$BookmarkLoadingImplCopyWithImpl(
    _$BookmarkLoadingImpl _value,
    $Res Function(_$BookmarkLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BookmarkState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$BookmarkLoadingImpl implements BookmarkLoading {
  const _$BookmarkLoadingImpl();

  @override
  String toString() {
    return 'BookmarkState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BookmarkLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<BookmarkEntity> bookmarks) loaded,
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
    TResult? Function(List<BookmarkEntity> bookmarks)? loaded,
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
    TResult Function(List<BookmarkEntity> bookmarks)? loaded,
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
    required TResult Function(BookmarkInitial value) initial,
    required TResult Function(BookmarkLoading value) loading,
    required TResult Function(BookmarkLoaded value) loaded,
    required TResult Function(BookmarkActionSuccess value) actionSuccess,
    required TResult Function(BookmarkError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookmarkInitial value)? initial,
    TResult? Function(BookmarkLoading value)? loading,
    TResult? Function(BookmarkLoaded value)? loaded,
    TResult? Function(BookmarkActionSuccess value)? actionSuccess,
    TResult? Function(BookmarkError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookmarkInitial value)? initial,
    TResult Function(BookmarkLoading value)? loading,
    TResult Function(BookmarkLoaded value)? loaded,
    TResult Function(BookmarkActionSuccess value)? actionSuccess,
    TResult Function(BookmarkError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class BookmarkLoading implements BookmarkState {
  const factory BookmarkLoading() = _$BookmarkLoadingImpl;
}

/// @nodoc
abstract class _$$BookmarkLoadedImplCopyWith<$Res> {
  factory _$$BookmarkLoadedImplCopyWith(
    _$BookmarkLoadedImpl value,
    $Res Function(_$BookmarkLoadedImpl) then,
  ) = __$$BookmarkLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<BookmarkEntity> bookmarks});
}

/// @nodoc
class __$$BookmarkLoadedImplCopyWithImpl<$Res>
    extends _$BookmarkStateCopyWithImpl<$Res, _$BookmarkLoadedImpl>
    implements _$$BookmarkLoadedImplCopyWith<$Res> {
  __$$BookmarkLoadedImplCopyWithImpl(
    _$BookmarkLoadedImpl _value,
    $Res Function(_$BookmarkLoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BookmarkState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? bookmarks = null}) {
    return _then(
      _$BookmarkLoadedImpl(
        bookmarks: null == bookmarks
            ? _value._bookmarks
            : bookmarks // ignore: cast_nullable_to_non_nullable
                  as List<BookmarkEntity>,
      ),
    );
  }
}

/// @nodoc

class _$BookmarkLoadedImpl implements BookmarkLoaded {
  const _$BookmarkLoadedImpl({required final List<BookmarkEntity> bookmarks})
    : _bookmarks = bookmarks;

  final List<BookmarkEntity> _bookmarks;
  @override
  List<BookmarkEntity> get bookmarks {
    if (_bookmarks is EqualUnmodifiableListView) return _bookmarks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bookmarks);
  }

  @override
  String toString() {
    return 'BookmarkState.loaded(bookmarks: $bookmarks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookmarkLoadedImpl &&
            const DeepCollectionEquality().equals(
              other._bookmarks,
              _bookmarks,
            ));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_bookmarks));

  /// Create a copy of BookmarkState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookmarkLoadedImplCopyWith<_$BookmarkLoadedImpl> get copyWith =>
      __$$BookmarkLoadedImplCopyWithImpl<_$BookmarkLoadedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<BookmarkEntity> bookmarks) loaded,
    required TResult Function(String message) actionSuccess,
    required TResult Function(String message) error,
  }) {
    return loaded(bookmarks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BookmarkEntity> bookmarks)? loaded,
    TResult? Function(String message)? actionSuccess,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(bookmarks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BookmarkEntity> bookmarks)? loaded,
    TResult Function(String message)? actionSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(bookmarks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookmarkInitial value) initial,
    required TResult Function(BookmarkLoading value) loading,
    required TResult Function(BookmarkLoaded value) loaded,
    required TResult Function(BookmarkActionSuccess value) actionSuccess,
    required TResult Function(BookmarkError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookmarkInitial value)? initial,
    TResult? Function(BookmarkLoading value)? loading,
    TResult? Function(BookmarkLoaded value)? loaded,
    TResult? Function(BookmarkActionSuccess value)? actionSuccess,
    TResult? Function(BookmarkError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookmarkInitial value)? initial,
    TResult Function(BookmarkLoading value)? loading,
    TResult Function(BookmarkLoaded value)? loaded,
    TResult Function(BookmarkActionSuccess value)? actionSuccess,
    TResult Function(BookmarkError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class BookmarkLoaded implements BookmarkState {
  const factory BookmarkLoaded({
    required final List<BookmarkEntity> bookmarks,
  }) = _$BookmarkLoadedImpl;

  List<BookmarkEntity> get bookmarks;

  /// Create a copy of BookmarkState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookmarkLoadedImplCopyWith<_$BookmarkLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookmarkActionSuccessImplCopyWith<$Res> {
  factory _$$BookmarkActionSuccessImplCopyWith(
    _$BookmarkActionSuccessImpl value,
    $Res Function(_$BookmarkActionSuccessImpl) then,
  ) = __$$BookmarkActionSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$BookmarkActionSuccessImplCopyWithImpl<$Res>
    extends _$BookmarkStateCopyWithImpl<$Res, _$BookmarkActionSuccessImpl>
    implements _$$BookmarkActionSuccessImplCopyWith<$Res> {
  __$$BookmarkActionSuccessImplCopyWithImpl(
    _$BookmarkActionSuccessImpl _value,
    $Res Function(_$BookmarkActionSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BookmarkState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$BookmarkActionSuccessImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$BookmarkActionSuccessImpl implements BookmarkActionSuccess {
  const _$BookmarkActionSuccessImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'BookmarkState.actionSuccess(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookmarkActionSuccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of BookmarkState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookmarkActionSuccessImplCopyWith<_$BookmarkActionSuccessImpl>
  get copyWith =>
      __$$BookmarkActionSuccessImplCopyWithImpl<_$BookmarkActionSuccessImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<BookmarkEntity> bookmarks) loaded,
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
    TResult? Function(List<BookmarkEntity> bookmarks)? loaded,
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
    TResult Function(List<BookmarkEntity> bookmarks)? loaded,
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
    required TResult Function(BookmarkInitial value) initial,
    required TResult Function(BookmarkLoading value) loading,
    required TResult Function(BookmarkLoaded value) loaded,
    required TResult Function(BookmarkActionSuccess value) actionSuccess,
    required TResult Function(BookmarkError value) error,
  }) {
    return actionSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookmarkInitial value)? initial,
    TResult? Function(BookmarkLoading value)? loading,
    TResult? Function(BookmarkLoaded value)? loaded,
    TResult? Function(BookmarkActionSuccess value)? actionSuccess,
    TResult? Function(BookmarkError value)? error,
  }) {
    return actionSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookmarkInitial value)? initial,
    TResult Function(BookmarkLoading value)? loading,
    TResult Function(BookmarkLoaded value)? loaded,
    TResult Function(BookmarkActionSuccess value)? actionSuccess,
    TResult Function(BookmarkError value)? error,
    required TResult orElse(),
  }) {
    if (actionSuccess != null) {
      return actionSuccess(this);
    }
    return orElse();
  }
}

abstract class BookmarkActionSuccess implements BookmarkState {
  const factory BookmarkActionSuccess({required final String message}) =
      _$BookmarkActionSuccessImpl;

  String get message;

  /// Create a copy of BookmarkState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookmarkActionSuccessImplCopyWith<_$BookmarkActionSuccessImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookmarkErrorImplCopyWith<$Res> {
  factory _$$BookmarkErrorImplCopyWith(
    _$BookmarkErrorImpl value,
    $Res Function(_$BookmarkErrorImpl) then,
  ) = __$$BookmarkErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$BookmarkErrorImplCopyWithImpl<$Res>
    extends _$BookmarkStateCopyWithImpl<$Res, _$BookmarkErrorImpl>
    implements _$$BookmarkErrorImplCopyWith<$Res> {
  __$$BookmarkErrorImplCopyWithImpl(
    _$BookmarkErrorImpl _value,
    $Res Function(_$BookmarkErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BookmarkState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$BookmarkErrorImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$BookmarkErrorImpl implements BookmarkError {
  const _$BookmarkErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'BookmarkState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookmarkErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of BookmarkState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookmarkErrorImplCopyWith<_$BookmarkErrorImpl> get copyWith =>
      __$$BookmarkErrorImplCopyWithImpl<_$BookmarkErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<BookmarkEntity> bookmarks) loaded,
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
    TResult? Function(List<BookmarkEntity> bookmarks)? loaded,
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
    TResult Function(List<BookmarkEntity> bookmarks)? loaded,
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
    required TResult Function(BookmarkInitial value) initial,
    required TResult Function(BookmarkLoading value) loading,
    required TResult Function(BookmarkLoaded value) loaded,
    required TResult Function(BookmarkActionSuccess value) actionSuccess,
    required TResult Function(BookmarkError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookmarkInitial value)? initial,
    TResult? Function(BookmarkLoading value)? loading,
    TResult? Function(BookmarkLoaded value)? loaded,
    TResult? Function(BookmarkActionSuccess value)? actionSuccess,
    TResult? Function(BookmarkError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookmarkInitial value)? initial,
    TResult Function(BookmarkLoading value)? loading,
    TResult Function(BookmarkLoaded value)? loaded,
    TResult Function(BookmarkActionSuccess value)? actionSuccess,
    TResult Function(BookmarkError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class BookmarkError implements BookmarkState {
  const factory BookmarkError({required final String message}) =
      _$BookmarkErrorImpl;

  String get message;

  /// Create a copy of BookmarkState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookmarkErrorImplCopyWith<_$BookmarkErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
