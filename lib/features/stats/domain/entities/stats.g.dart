// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StatsRecapEntityImpl _$$StatsRecapEntityImplFromJson(
  Map<String, dynamic> json,
) => _$StatsRecapEntityImpl(
  weeklyMinutes: (json['weeklyMinutes'] as num?)?.toInt() ?? 0,
  monthlyMinutes: (json['monthlyMinutes'] as num?)?.toInt() ?? 0,
  topCategories:
      (json['topCategories'] as List<dynamic>?)
          ?.map((e) => TopItem.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  topArtists:
      (json['topArtists'] as List<dynamic>?)
          ?.map((e) => TopItem.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  dailyStats:
      (json['dailyStats'] as List<dynamic>?)
          ?.map((e) => DailyStat.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$$StatsRecapEntityImplToJson(
  _$StatsRecapEntityImpl instance,
) => <String, dynamic>{
  'weeklyMinutes': instance.weeklyMinutes,
  'monthlyMinutes': instance.monthlyMinutes,
  'topCategories': instance.topCategories,
  'topArtists': instance.topArtists,
  'dailyStats': instance.dailyStats,
};

_$TopItemImpl _$$TopItemImplFromJson(Map<String, dynamic> json) =>
    _$TopItemImpl(
      name: json['name'] as String? ?? '',
      minutes: (json['minutes'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$TopItemImplToJson(_$TopItemImpl instance) =>
    <String, dynamic>{'name': instance.name, 'minutes': instance.minutes};

_$DailyStatImpl _$$DailyStatImplFromJson(Map<String, dynamic> json) =>
    _$DailyStatImpl(
      date: json['date'] as String? ?? '',
      minutes: (json['minutes'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$DailyStatImplToJson(_$DailyStatImpl instance) =>
    <String, dynamic>{'date': instance.date, 'minutes': instance.minutes};
