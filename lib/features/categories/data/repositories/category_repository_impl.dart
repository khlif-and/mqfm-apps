import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mqfm_apps/features/categories/data/datasources/category_remote_datasource.dart';
import 'package:mqfm_apps/features/categories/domain/entities/category_entity.dart';
import 'package:injectable/injectable.dart';
import 'package:mqfm_apps/features/categories/domain/repositories/i_category_repository.dart';

@LazySingleton(as: ICategoryRepository)
class CategoryRepositoryImpl implements ICategoryRepository {
  final CategoryRemoteDatasource _datasource;

  CategoryRepositoryImpl(this._datasource);

  @override
  Future<Either<String, List<CategoryEntity>>> getCategories() async {
    try {
      final response = await _datasource.getCategories();
      if (response.status == 200 && response.data != null) {
        return Right(response.data!.map((d) => d.toEntity()).toList());
      }
      return Left(response.message);
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, CategoryEntity>> getCategoryById(int id) async {
    try {
      final response = await _datasource.getCategoryById(id);
      if (response.status == 200 && response.data != null) {
        return Right(response.data!.toEntity());
      }
      return Left(response.message);
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }
}
