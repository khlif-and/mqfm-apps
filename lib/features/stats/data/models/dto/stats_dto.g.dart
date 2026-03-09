// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StatsRecapDto _$StatsRecapDtoFromJson(Map<String, dynamic> json) =>
    StatsRecapDto(
      weeklyMinutes: (json['weekly_minutes'] as num?)?.toInt() ?? 0,
      monthlyMinutes: (json['monthly_minutes'] as num?)?.toInt() ?? 0,
      topCategories:
          (json['top_categories'] as List<dynamic>?)
              ?.map((e) => TopItemDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      topArtists:
          (json['top_artists'] as List<dynamic>?)
              ?.map((e) => TopItemDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      dailyStats:
          (json['daily_stats'] as List<dynamic>?)
              ?.map((e) => DailyStatDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$StatsRecapDtoToJson(StatsRecapDto instance) =>
    <String, dynamic>{
      'weekly_minutes': instance.weeklyMinutes,
      'monthly_minutes': instance.monthlyMinutes,
      'top_categories': instance.topCategories,
      'top_artists': instance.topArtists,
      'daily_stats': instance.dailyStats,
    };

TopItemDto _$TopItemDtoFromJson(Map<String, dynamic> json) => TopItemDto(
  name: json['name'] as String? ?? '',
  minutes: (json['minutes'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$TopItemDtoToJson(TopItemDto instance) =>
    <String, dynamic>{'name': instance.name, 'minutes': instance.minutes};

DailyStatDto _$DailyStatDtoFromJson(Map<String, dynamic> json) => DailyStatDto(
  date: json['date'] as String? ?? '',
  minutes: (json['minutes'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$DailyStatDtoToJson(DailyStatDto instance) =>
    <String, dynamic>{'date': instance.date, 'minutes': instance.minutes};
