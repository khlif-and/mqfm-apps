import 'package:json_annotation/json_annotation.dart';
import 'package:mqfm_apps/features/artikel/domain/entities/artikel_entity.dart';

part 'artikel_dto.g.dart';

@JsonSerializable()
class ArtikelDto {
  final String title;
  final String link;
  final String image;

  const ArtikelDto({
    required this.title,
    this.link = '',
    this.image = '',
  });

  factory ArtikelDto.fromJson(Map<String, dynamic> json) =>
      _$ArtikelDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ArtikelDtoToJson(this);

  ArtikelEntity toEntity() {
    return ArtikelEntity(
      title: title,
      link: link,
      image: image,
    );
  }
}

@JsonSerializable()
class ArtikelChannelDto {
  @JsonKey(name: 'channel_name')
  final String channelName;
  final String tagline;
  final String website;
  final List<dynamic> programs;
  final List<ArtikelDto> contents;

  const ArtikelChannelDto({
    required this.channelName,
    this.tagline = '',
    this.website = '',
    this.programs = const [],
    this.contents = const [],
  });

  factory ArtikelChannelDto.fromJson(Map<String, dynamic> json) =>
      _$ArtikelChannelDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ArtikelChannelDtoToJson(this);

  ArtikelChannelEntity toEntity() {
    return ArtikelChannelEntity(
      channelName: channelName,
      tagline: tagline,
      website: website,
      programs: programs,
      contents: contents.map((c) => c.toEntity()).toList(),
    );
  }
}
