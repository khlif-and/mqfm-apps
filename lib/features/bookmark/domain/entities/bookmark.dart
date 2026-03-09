import 'package:freezed_annotation/freezed_annotation.dart';

part 'bookmark.freezed.dart';
part 'bookmark.g.dart';

@freezed
class BookmarkEntity with _$BookmarkEntity {
  const factory BookmarkEntity({
    required int id,
    @Default(0) int audioId,
    @Default(0) int positionSeconds,
    @Default('') String label,
    @Default('') String createdAt,
  }) = _BookmarkEntity;

  factory BookmarkEntity.fromJson(Map<String, dynamic> json) =>
      _$BookmarkEntityFromJson(json);
}
