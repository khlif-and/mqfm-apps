import 'package:json_annotation/json_annotation.dart';
import 'package:mqfm_apps/features/like/domain/entities/like_entity.dart';

part 'like_dto.g.dart';

@JsonSerializable()
class LikeDto {
  final int status;
  final String message;

  const LikeDto({required this.status, required this.message});

  factory LikeDto.fromJson(Map<String, dynamic> json) =>
      _$LikeDtoFromJson(json);

  Map<String, dynamic> toJson() => _$LikeDtoToJson(this);

  LikeEntity toEntity() {
    return LikeEntity(status: status, message: message);
  }
}
