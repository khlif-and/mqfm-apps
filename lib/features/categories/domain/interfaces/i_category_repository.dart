import 'package:dartz/dartz.dart';
import 'package:mqfm_apps/features/categories/domain/entities/category.dart';

abstract class ICategoryRepository {
  Future<Either<String, List<CategoryEntity>>> getCategories();
  Future<Either<String, CategoryEntity>> getCategoryById(int id);
}
