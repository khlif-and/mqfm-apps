import 'package:dio/dio.dart';
import 'package:mqfm_apps/features/categories/data/models/category_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'category_remote_datasource.g.dart';

@RestApi()
abstract class CategoryRemoteDatasource {
  factory CategoryRemoteDatasource(Dio dio, {String baseUrl}) =
      _CategoryRemoteDatasource;

  @GET('/api/categories/')
  Future<CategoryResponseDto> getCategories();

  @GET('/api/categories/{id}')
  Future<SingleCategoryResponseDto> getCategoryById(@Path('id') int id);
}
