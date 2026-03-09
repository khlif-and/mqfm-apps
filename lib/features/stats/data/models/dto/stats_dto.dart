import 'package:json_annotation/json_annotation.dart';
import 'package:mqfm_apps/features/stats/domain/entities/stats.dart';

part 'stats_dto.g.dart';

@JsonSerializable()
class StatsRecapDto {
  @JsonKey(name: 'weekly_minutes', defaultValue: 0)
  final int weeklyMinutes;
  @JsonKey(name: 'monthly_minutes', defaultValue: 0)
  final int monthlyMinutes;
  @JsonKey(name: 'top_categories', defaultValue: [])
  final List<TopItemDto> topCategories;
  @JsonKey(name: 'top_artists', defaultValue: [])
  final List<TopItemDto> topArtists;
  @JsonKey(name: 'daily_stats', defaultValue: [])
  final List<DailyStatDto> dailyStats;

  const StatsRecapDto({
    this.weeklyMinutes = 0,
    this.monthlyMinutes = 0,
    this.topCategories = const [],
    this.topArtists = const [],
    this.dailyStats = const [],
  });

  factory StatsRecapDto.fromJson(Map<String, dynamic> json) =>
      _$StatsRecapDtoFromJson(json);

  Map<String, dynamic> toJson() => _$StatsRecapDtoToJson(this);

  StatsRecapEntity toEntity() {
    return StatsRecapEntity(
      weeklyMinutes: weeklyMinutes,
      monthlyMinutes: monthlyMinutes,
      topCategories: topCategories.map((e) => e.toEntity()).toList(),
      topArtists: topArtists.map((e) => e.toEntity()).toList(),
      dailyStats: dailyStats.map((e) => e.toEntity()).toList(),
    );
  }
}

@JsonSerializable()
class TopItemDto {
  @JsonKey(defaultValue: '')
  final String name;
  @JsonKey(defaultValue: 0)
  final int minutes;

  const TopItemDto({this.name = '', this.minutes = 0});

  factory TopItemDto.fromJson(Map<String, dynamic> json) =>
      _$TopItemDtoFromJson(json);

  Map<String, dynamic> toJson() => _$TopItemDtoToJson(this);

  TopItem toEntity() => TopItem(name: name, minutes: minutes);
}

@JsonSerializable()
class DailyStatDto {
  @JsonKey(defaultValue: '')
  final String date;
  @JsonKey(defaultValue: 0)
  final int minutes;

  const DailyStatDto({this.date = '', this.minutes = 0});

  factory DailyStatDto.fromJson(Map<String, dynamic> json) =>
      _$DailyStatDtoFromJson(json);

  Map<String, dynamic> toJson() => _$DailyStatDtoToJson(this);

  DailyStat toEntity() => DailyStat(date: date, minutes: minutes);
}
