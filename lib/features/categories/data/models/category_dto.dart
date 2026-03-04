import 'package:json_annotation/json_annotation.dart';
import 'package:mqfm_apps/features/categories/domain/entities/category_entity.dart';

part 'category_dto.g.dart';

@JsonSerializable()
class CategoryDto {
  final int id;
  final String name;
  final String description;
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  const CategoryDto({
    required this.id,
    required this.name,
    required this.description,
    this.createdAt,
    this.updatedAt,
  });

  factory CategoryDto.fromJson(Map<String, dynamic> json) =>
      _$CategoryDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryDtoToJson(this);

  CategoryEntity toEntity() {
    return CategoryEntity(
      id: id,
      name: name,
      description: description,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}

@JsonSerializable()
class CategoryResponseDto {
  final int status;
  final String message;
  final List<CategoryDto>? data;

  const CategoryResponseDto({
    required this.status,
    required this.message,
    this.data,
  });

  factory CategoryResponseDto.fromJson(Map<String, dynamic> json) =>
      _$CategoryResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryResponseDtoToJson(this);
}

@JsonSerializable()
class SingleCategoryResponseDto {
  final int status;
  final String message;
  final CategoryDto? data;

  const SingleCategoryResponseDto({
    required this.status,
    required this.message,
    this.data,
  });

  factory SingleCategoryResponseDto.fromJson(Map<String, dynamic> json) =>
      _$SingleCategoryResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$SingleCategoryResponseDtoToJson(this);
}
