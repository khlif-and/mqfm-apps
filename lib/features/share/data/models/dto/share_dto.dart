import 'package:json_annotation/json_annotation.dart';
import 'package:mqfm_apps/features/share/domain/entities/share.dart';

part 'share_dto.g.dart';

@JsonSerializable()
class ShareDto {
  @JsonKey(name: 'share_url', defaultValue: '')
  final String shareUrl;
  @JsonKey(defaultValue: '')
  final String token;
  @JsonKey(defaultValue: '')
  final String type;

  const ShareDto({this.shareUrl = '', this.token = '', this.type = ''});

  factory ShareDto.fromJson(Map<String, dynamic> json) =>
      _$ShareDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ShareDtoToJson(this);

  ShareEntity toEntity() {
    return ShareEntity(shareUrl: shareUrl, token: token, type: type);
  }
}
