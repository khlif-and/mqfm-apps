// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artikel_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArtikelEntityImpl _$$ArtikelEntityImplFromJson(Map<String, dynamic> json) =>
    _$ArtikelEntityImpl(
      title: json['title'] as String,
      link: json['link'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$$ArtikelEntityImplToJson(_$ArtikelEntityImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'link': instance.link,
      'image': instance.image,
    };

_$ArtikelChannelEntityImpl _$$ArtikelChannelEntityImplFromJson(
  Map<String, dynamic> json,
) => _$ArtikelChannelEntityImpl(
  channelName: json['channelName'] as String,
  tagline: json['tagline'] as String,
  website: json['website'] as String,
  programs: json['programs'] as List<dynamic>,
  contents: (json['contents'] as List<dynamic>)
      .map((e) => ArtikelEntity.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$ArtikelChannelEntityImplToJson(
  _$ArtikelChannelEntityImpl instance,
) => <String, dynamic>{
  'channelName': instance.channelName,
  'tagline': instance.tagline,
  'website': instance.website,
  'programs': instance.programs,
  'contents': instance.contents,
};
