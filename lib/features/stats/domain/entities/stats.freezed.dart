// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stats.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

StatsRecapEntity _$StatsRecapEntityFromJson(Map<String, dynamic> json) {
  return _StatsRecapEntity.fromJson(json);
}

/// @nodoc
mixin _$StatsRecapEntity {
  int get weeklyMinutes => throw _privateConstructorUsedError;
  int get monthlyMinutes => throw _privateConstructorUsedError;
  List<TopItem> get topCategories => throw _privateConstructorUsedError;
  List<TopItem> get topArtists => throw _privateConstructorUsedError;
  List<DailyStat> get dailyStats => throw _privateConstructorUsedError;

  /// Serializes this StatsRecapEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StatsRecapEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StatsRecapEntityCopyWith<StatsRecapEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatsRecapEntityCopyWith<$Res> {
  factory $StatsRecapEntityCopyWith(
    StatsRecapEntity value,
    $Res Function(StatsRecapEntity) then,
  ) = _$StatsRecapEntityCopyWithImpl<$Res, StatsRecapEntity>;
  @useResult
  $Res call({
    int weeklyMinutes,
    int monthlyMinutes,
    List<TopItem> topCategories,
    List<TopItem> topArtists,
    List<DailyStat> dailyStats,
  });
}

/// @nodoc
class _$StatsRecapEntityCopyWithImpl<$Res, $Val extends StatsRecapEntity>
    implements $StatsRecapEntityCopyWith<$Res> {
  _$StatsRecapEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StatsRecapEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weeklyMinutes = null,
    Object? monthlyMinutes = null,
    Object? topCategories = null,
    Object? topArtists = null,
    Object? dailyStats = null,
  }) {
    return _then(
      _value.copyWith(
            weeklyMinutes: null == weeklyMinutes
                ? _value.weeklyMinutes
                : weeklyMinutes // ignore: cast_nullable_to_non_nullable
                      as int,
            monthlyMinutes: null == monthlyMinutes
                ? _value.monthlyMinutes
                : monthlyMinutes // ignore: cast_nullable_to_non_nullable
                      as int,
            topCategories: null == topCategories
                ? _value.topCategories
                : topCategories // ignore: cast_nullable_to_non_nullable
                      as List<TopItem>,
            topArtists: null == topArtists
                ? _value.topArtists
                : topArtists // ignore: cast_nullable_to_non_nullable
                      as List<TopItem>,
            dailyStats: null == dailyStats
                ? _value.dailyStats
                : dailyStats // ignore: cast_nullable_to_non_nullable
                      as List<DailyStat>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$StatsRecapEntityImplCopyWith<$Res>
    implements $StatsRecapEntityCopyWith<$Res> {
  factory _$$StatsRecapEntityImplCopyWith(
    _$StatsRecapEntityImpl value,
    $Res Function(_$StatsRecapEntityImpl) then,
  ) = __$$StatsRecapEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int weeklyMinutes,
    int monthlyMinutes,
    List<TopItem> topCategories,
    List<TopItem> topArtists,
    List<DailyStat> dailyStats,
  });
}

/// @nodoc
class __$$StatsRecapEntityImplCopyWithImpl<$Res>
    extends _$StatsRecapEntityCopyWithImpl<$Res, _$StatsRecapEntityImpl>
    implements _$$StatsRecapEntityImplCopyWith<$Res> {
  __$$StatsRecapEntityImplCopyWithImpl(
    _$StatsRecapEntityImpl _value,
    $Res Function(_$StatsRecapEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StatsRecapEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weeklyMinutes = null,
    Object? monthlyMinutes = null,
    Object? topCategories = null,
    Object? topArtists = null,
    Object? dailyStats = null,
  }) {
    return _then(
      _$StatsRecapEntityImpl(
        weeklyMinutes: null == weeklyMinutes
            ? _value.weeklyMinutes
            : weeklyMinutes // ignore: cast_nullable_to_non_nullable
                  as int,
        monthlyMinutes: null == monthlyMinutes
            ? _value.monthlyMinutes
            : monthlyMinutes // ignore: cast_nullable_to_non_nullable
                  as int,
        topCategories: null == topCategories
            ? _value._topCategories
            : topCategories // ignore: cast_nullable_to_non_nullable
                  as List<TopItem>,
        topArtists: null == topArtists
            ? _value._topArtists
            : topArtists // ignore: cast_nullable_to_non_nullable
                  as List<TopItem>,
        dailyStats: null == dailyStats
            ? _value._dailyStats
            : dailyStats // ignore: cast_nullable_to_non_nullable
                  as List<DailyStat>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$StatsRecapEntityImpl implements _StatsRecapEntity {
  const _$StatsRecapEntityImpl({
    this.weeklyMinutes = 0,
    this.monthlyMinutes = 0,
    final List<TopItem> topCategories = const [],
    final List<TopItem> topArtists = const [],
    final List<DailyStat> dailyStats = const [],
  }) : _topCategories = topCategories,
       _topArtists = topArtists,
       _dailyStats = dailyStats;

  factory _$StatsRecapEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatsRecapEntityImplFromJson(json);

  @override
  @JsonKey()
  final int weeklyMinutes;
  @override
  @JsonKey()
  final int monthlyMinutes;
  final List<TopItem> _topCategories;
  @override
  @JsonKey()
  List<TopItem> get topCategories {
    if (_topCategories is EqualUnmodifiableListView) return _topCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topCategories);
  }

  final List<TopItem> _topArtists;
  @override
  @JsonKey()
  List<TopItem> get topArtists {
    if (_topArtists is EqualUnmodifiableListView) return _topArtists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topArtists);
  }

  final List<DailyStat> _dailyStats;
  @override
  @JsonKey()
  List<DailyStat> get dailyStats {
    if (_dailyStats is EqualUnmodifiableListView) return _dailyStats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dailyStats);
  }

  @override
  String toString() {
    return 'StatsRecapEntity(weeklyMinutes: $weeklyMinutes, monthlyMinutes: $monthlyMinutes, topCategories: $topCategories, topArtists: $topArtists, dailyStats: $dailyStats)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatsRecapEntityImpl &&
            (identical(other.weeklyMinutes, weeklyMinutes) ||
                other.weeklyMinutes == weeklyMinutes) &&
            (identical(other.monthlyMinutes, monthlyMinutes) ||
                other.monthlyMinutes == monthlyMinutes) &&
            const DeepCollectionEquality().equals(
              other._topCategories,
              _topCategories,
            ) &&
            const DeepCollectionEquality().equals(
              other._topArtists,
              _topArtists,
            ) &&
            const DeepCollectionEquality().equals(
              other._dailyStats,
              _dailyStats,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    weeklyMinutes,
    monthlyMinutes,
    const DeepCollectionEquality().hash(_topCategories),
    const DeepCollectionEquality().hash(_topArtists),
    const DeepCollectionEquality().hash(_dailyStats),
  );

  /// Create a copy of StatsRecapEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatsRecapEntityImplCopyWith<_$StatsRecapEntityImpl> get copyWith =>
      __$$StatsRecapEntityImplCopyWithImpl<_$StatsRecapEntityImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$StatsRecapEntityImplToJson(this);
  }
}

abstract class _StatsRecapEntity implements StatsRecapEntity {
  const factory _StatsRecapEntity({
    final int weeklyMinutes,
    final int monthlyMinutes,
    final List<TopItem> topCategories,
    final List<TopItem> topArtists,
    final List<DailyStat> dailyStats,
  }) = _$StatsRecapEntityImpl;

  factory _StatsRecapEntity.fromJson(Map<String, dynamic> json) =
      _$StatsRecapEntityImpl.fromJson;

  @override
  int get weeklyMinutes;
  @override
  int get monthlyMinutes;
  @override
  List<TopItem> get topCategories;
  @override
  List<TopItem> get topArtists;
  @override
  List<DailyStat> get dailyStats;

  /// Create a copy of StatsRecapEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatsRecapEntityImplCopyWith<_$StatsRecapEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TopItem _$TopItemFromJson(Map<String, dynamic> json) {
  return _TopItem.fromJson(json);
}

/// @nodoc
mixin _$TopItem {
  String get name => throw _privateConstructorUsedError;
  int get minutes => throw _privateConstructorUsedError;

  /// Serializes this TopItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TopItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TopItemCopyWith<TopItem> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopItemCopyWith<$Res> {
  factory $TopItemCopyWith(TopItem value, $Res Function(TopItem) then) =
      _$TopItemCopyWithImpl<$Res, TopItem>;
  @useResult
  $Res call({String name, int minutes});
}

/// @nodoc
class _$TopItemCopyWithImpl<$Res, $Val extends TopItem>
    implements $TopItemCopyWith<$Res> {
  _$TopItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TopItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? minutes = null}) {
    return _then(
      _value.copyWith(
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            minutes: null == minutes
                ? _value.minutes
                : minutes // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TopItemImplCopyWith<$Res> implements $TopItemCopyWith<$Res> {
  factory _$$TopItemImplCopyWith(
    _$TopItemImpl value,
    $Res Function(_$TopItemImpl) then,
  ) = __$$TopItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int minutes});
}

/// @nodoc
class __$$TopItemImplCopyWithImpl<$Res>
    extends _$TopItemCopyWithImpl<$Res, _$TopItemImpl>
    implements _$$TopItemImplCopyWith<$Res> {
  __$$TopItemImplCopyWithImpl(
    _$TopItemImpl _value,
    $Res Function(_$TopItemImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TopItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? minutes = null}) {
    return _then(
      _$TopItemImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        minutes: null == minutes
            ? _value.minutes
            : minutes // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TopItemImpl implements _TopItem {
  const _$TopItemImpl({this.name = '', this.minutes = 0});

  factory _$TopItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopItemImplFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final int minutes;

  @override
  String toString() {
    return 'TopItem(name: $name, minutes: $minutes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopItemImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.minutes, minutes) || other.minutes == minutes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, minutes);

  /// Create a copy of TopItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopItemImplCopyWith<_$TopItemImpl> get copyWith =>
      __$$TopItemImplCopyWithImpl<_$TopItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopItemImplToJson(this);
  }
}

abstract class _TopItem implements TopItem {
  const factory _TopItem({final String name, final int minutes}) =
      _$TopItemImpl;

  factory _TopItem.fromJson(Map<String, dynamic> json) = _$TopItemImpl.fromJson;

  @override
  String get name;
  @override
  int get minutes;

  /// Create a copy of TopItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopItemImplCopyWith<_$TopItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DailyStat _$DailyStatFromJson(Map<String, dynamic> json) {
  return _DailyStat.fromJson(json);
}

/// @nodoc
mixin _$DailyStat {
  String get date => throw _privateConstructorUsedError;
  int get minutes => throw _privateConstructorUsedError;

  /// Serializes this DailyStat to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DailyStat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DailyStatCopyWith<DailyStat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyStatCopyWith<$Res> {
  factory $DailyStatCopyWith(DailyStat value, $Res Function(DailyStat) then) =
      _$DailyStatCopyWithImpl<$Res, DailyStat>;
  @useResult
  $Res call({String date, int minutes});
}

/// @nodoc
class _$DailyStatCopyWithImpl<$Res, $Val extends DailyStat>
    implements $DailyStatCopyWith<$Res> {
  _$DailyStatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DailyStat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? date = null, Object? minutes = null}) {
    return _then(
      _value.copyWith(
            date: null == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                      as String,
            minutes: null == minutes
                ? _value.minutes
                : minutes // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DailyStatImplCopyWith<$Res>
    implements $DailyStatCopyWith<$Res> {
  factory _$$DailyStatImplCopyWith(
    _$DailyStatImpl value,
    $Res Function(_$DailyStatImpl) then,
  ) = __$$DailyStatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String date, int minutes});
}

/// @nodoc
class __$$DailyStatImplCopyWithImpl<$Res>
    extends _$DailyStatCopyWithImpl<$Res, _$DailyStatImpl>
    implements _$$DailyStatImplCopyWith<$Res> {
  __$$DailyStatImplCopyWithImpl(
    _$DailyStatImpl _value,
    $Res Function(_$DailyStatImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DailyStat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? date = null, Object? minutes = null}) {
    return _then(
      _$DailyStatImpl(
        date: null == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                  as String,
        minutes: null == minutes
            ? _value.minutes
            : minutes // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DailyStatImpl implements _DailyStat {
  const _$DailyStatImpl({this.date = '', this.minutes = 0});

  factory _$DailyStatImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyStatImplFromJson(json);

  @override
  @JsonKey()
  final String date;
  @override
  @JsonKey()
  final int minutes;

  @override
  String toString() {
    return 'DailyStat(date: $date, minutes: $minutes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyStatImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.minutes, minutes) || other.minutes == minutes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, minutes);

  /// Create a copy of DailyStat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyStatImplCopyWith<_$DailyStatImpl> get copyWith =>
      __$$DailyStatImplCopyWithImpl<_$DailyStatImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyStatImplToJson(this);
  }
}

abstract class _DailyStat implements DailyStat {
  const factory _DailyStat({final String date, final int minutes}) =
      _$DailyStatImpl;

  factory _DailyStat.fromJson(Map<String, dynamic> json) =
      _$DailyStatImpl.fromJson;

  @override
  String get date;
  @override
  int get minutes;

  /// Create a copy of DailyStat
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DailyStatImplCopyWith<_$DailyStatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
