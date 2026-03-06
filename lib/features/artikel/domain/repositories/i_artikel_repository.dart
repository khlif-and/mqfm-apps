import 'package:dartz/dartz.dart';
import 'package:mqfm_apps/features/artikel/domain/entities/artikel_entity.dart';

abstract class IArtikelRepository {
  Future<Either<String, ArtikelChannelEntity>> getArtikels();
}
