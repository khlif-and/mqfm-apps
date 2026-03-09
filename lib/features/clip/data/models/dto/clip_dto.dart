import 'package:json_annotation/json_annotation.dart';
import 'package:mqfm_apps/features/clip/domain/entities/clip.dart';

part 'clip_dto.g.dart';

@JsonSerializable()
class ClipDto {
  final int id;
  @JsonKey(name: 'audio_id', defaultValue: 0)
  final int audioId;
  @JsonKey(name: 'start_time', defaultValue: 0)
  final int startTime;
  @JsonKey(name: 'end_time', defaultValue: 0)
  final int endTime;
  @JsonKey(name: 'clip_url', defaultValue: '')
  final String clipUrl;
  @JsonKey(name: 'share_token', defaultValue: '')
  final String shareToken;
  @JsonKey(name: 'created_at', defaultValue: '')
  final String createdAt;

  const ClipDto({
    required this.id,
    this.audioId = 0,
    this.startTime = 0,
    this.endTime = 0,
    this.clipUrl = '',
    this.shareToken = '',
    this.createdAt = '',
  });

  factory ClipDto.fromJson(Map<String, dynamic> json) =>
      _$ClipDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ClipDtoToJson(this);

  ClipEntity toEntity() {
    return ClipEntity(
      id: id,
      audioId: audioId,
      startTime: startTime,
      endTime: endTime,
      clipUrl: clipUrl,
      shareToken: shareToken,
      createdAt: createdAt,
    );
  }
}
