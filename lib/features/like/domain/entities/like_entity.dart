import 'package:freezed_annotation/freezed_annotation.dart';

part 'like_entity.freezed.dart';
part 'like_entity.g.dart';

@freezed
class LikeEntity with _$LikeEntity {
  const factory LikeEntity({
    required int status,
    required String message,
  }) = _LikeEntity;

  factory LikeEntity.fromJson(Map<String, dynamic> json) =>
      _$LikeEntityFromJson(json);
}
