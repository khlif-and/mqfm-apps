import 'package:freezed_annotation/freezed_annotation.dart';

part 'artikel_entity.freezed.dart';
part 'artikel_entity.g.dart';

@freezed
class ArtikelEntity with _$ArtikelEntity {
  const factory ArtikelEntity({
    required String title,
    required String link,
    required String image,
  }) = _ArtikelEntity;

  factory ArtikelEntity.fromJson(Map<String, dynamic> json) =>
      _$ArtikelEntityFromJson(json);
}

@freezed
class ArtikelChannelEntity with _$ArtikelChannelEntity {
  const factory ArtikelChannelEntity({
    required String channelName,
    required String tagline,
    required String website,
    required List<dynamic> programs,
    required List<ArtikelEntity> contents,
  }) = _ArtikelChannelEntity;

  factory ArtikelChannelEntity.fromJson(Map<String, dynamic> json) =>
      _$ArtikelChannelEntityFromJson(json);
}
