// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artikel_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArtikelDto _$ArtikelDtoFromJson(Map<String, dynamic> json) => ArtikelDto(
  title: json['title'] as String,
  link: json['link'] as String? ?? '',
  image: json['image'] as String? ?? '',
);

Map<String, dynamic> _$ArtikelDtoToJson(ArtikelDto instance) =>
    <String, dynamic>{
      'title': instance.title,
      'link': instance.link,
      'image': instance.image,
    };

ArtikelChannelDto _$ArtikelChannelDtoFromJson(Map<String, dynamic> json) =>
    ArtikelChannelDto(
      channelName: json['channel_name'] as String,
      tagline: json['tagline'] as String? ?? '',
      website: json['website'] as String? ?? '',
      programs: json['programs'] as List<dynamic>? ?? const [],
      contents:
          (json['contents'] as List<dynamic>?)
              ?.map((e) => ArtikelDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$ArtikelChannelDtoToJson(ArtikelChannelDto instance) =>
    <String, dynamic>{
      'channel_name': instance.channelName,
      'tagline': instance.tagline,
      'website': instance.website,
      'programs': instance.programs,
      'contents': instance.contents,
    };
