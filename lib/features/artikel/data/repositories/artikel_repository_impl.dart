import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mqfm_apps/features/artikel/data/datasources/artikel_remote_datasource.dart';
import 'package:mqfm_apps/features/artikel/domain/entities/artikel_entity.dart';
import 'package:injectable/injectable.dart';
import 'package:mqfm_apps/features/artikel/domain/repositories/i_artikel_repository.dart';

@LazySingleton(as: IArtikelRepository)
class ArtikelRepositoryImpl implements IArtikelRepository {
  final ArtikelRemoteDatasource _datasource;

  ArtikelRepositoryImpl(this._datasource);

  @override
  Future<Either<String, ArtikelChannelEntity>> getArtikels() async {
    try {
      final response = await _datasource.getArtikels();
      return Right(response.toEntity());
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }
}
