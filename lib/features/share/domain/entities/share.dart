import 'package:freezed_annotation/freezed_annotation.dart';

part 'share.freezed.dart';
part 'share.g.dart';

@freezed
class ShareEntity with _$ShareEntity {
  const factory ShareEntity({
    @Default('') String shareUrl,
    @Default('') String token,
    @Default('') String type,
  }) = _ShareEntity;

  factory ShareEntity.fromJson(Map<String, dynamic> json) =>
      _$ShareEntityFromJson(json);
}
