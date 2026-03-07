import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mqfm_apps/features/artikel/data/datasources/remotes/artikel_api_service.dart';
import 'package:mqfm_apps/features/artikel/domain/entities/artikel.dart';
import 'package:injectable/injectable.dart';
import 'package:mqfm_apps/features/artikel/domain/interfaces/i_artikel_repository.dart';

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
