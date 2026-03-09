import 'package:freezed_annotation/freezed_annotation.dart';

part 'stats.freezed.dart';
part 'stats.g.dart';

@freezed
class StatsRecapEntity with _$StatsRecapEntity {
  const factory StatsRecapEntity({
    @Default(0) int weeklyMinutes,
    @Default(0) int monthlyMinutes,
    @Default([]) List<TopItem> topCategories,
    @Default([]) List<TopItem> topArtists,
    @Default([]) List<DailyStat> dailyStats,
  }) = _StatsRecapEntity;

  factory StatsRecapEntity.fromJson(Map<String, dynamic> json) =>
      _$StatsRecapEntityFromJson(json);
}

@freezed
class TopItem with _$TopItem {
  const factory TopItem({
    @Default('') String name,
    @Default(0) int minutes,
  }) = _TopItem;

  factory TopItem.fromJson(Map<String, dynamic> json) =>
      _$TopItemFromJson(json);
}

@freezed
class DailyStat with _$DailyStat {
  const factory DailyStat({
    @Default('') String date,
    @Default(0) int minutes,
  }) = _DailyStat;

  factory DailyStat.fromJson(Map<String, dynamic> json) =>
      _$DailyStatFromJson(json);
}
