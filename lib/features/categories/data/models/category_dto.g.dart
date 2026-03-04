// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryDto _$CategoryDtoFromJson(Map<String, dynamic> json) => CategoryDto(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  description: json['description'] as String,
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
);

Map<String, dynamic> _$CategoryDtoToJson(CategoryDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

CategoryResponseDto _$CategoryResponseDtoFromJson(Map<String, dynamic> json) =>
    CategoryResponseDto(
      status: (json['status'] as num).toInt(),
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => CategoryDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CategoryResponseDtoToJson(
  CategoryResponseDto instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': instance.message,
  'data': instance.data,
};

SingleCategoryResponseDto _$SingleCategoryResponseDtoFromJson(
  Map<String, dynamic> json,
) => SingleCategoryResponseDto(
  status: (json['status'] as num).toInt(),
  message: json['message'] as String,
  data: json['data'] == null
      ? null
      : CategoryDto.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$SingleCategoryResponseDtoToJson(
  SingleCategoryResponseDto instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': instance.message,
  'data': instance.data,
};
