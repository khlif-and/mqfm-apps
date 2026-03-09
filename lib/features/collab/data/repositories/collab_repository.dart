import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mqfm_apps/features/collab/data/datasources/remotes/collab_api_service.dart';
import 'package:mqfm_apps/features/collab/data/models/request/collab_request.dart';
import 'package:mqfm_apps/features/collab/domain/entities/collab.dart';
import 'package:mqfm_apps/features/collab/domain/interfaces/i_collab_repository.dart';

@LazySingleton(as: ICollabRepository)
class CollabRepositoryImpl implements ICollabRepository {
  final CollabRemoteDatasource _datasource;

  CollabRepositoryImpl(this._datasource);

  @override
  Future<Either<String, String>> addCollaborator(
      int playlistId, int userId) async {
    try {
      final response = await _datasource.addCollaborator(
        AddCollaboratorRequest(playlistId: playlistId, userId: userId),
      );
      if (response.status == 200) return Right(response.message);
      return Left(response.message);
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, String>> removeCollaborator(
      int playlistId, int userId) async {
    try {
      final response =
          await _datasource.removeCollaborator(playlistId, userId);
      if (response.status == 200) return Right(response.message);
      return Left(response.message);
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, List<CollaboratorEntity>>> getCollaborators(
      int playlistId) async {
    try {
      final response = await _datasource.getCollaborators(playlistId);
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
  Future<Either<String, String>> contributeAudio(
      int playlistId, int audioId) async {
    try {
      final response = await _datasource.contributeAudio(
        ContributeAudioRequest(playlistId: playlistId, audioId: audioId),
      );
      if (response.status == 200) return Right(response.message);
      return Left(response.message);
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, String>> joinCollab(int playlistId) async {
    try {
      final response = await _datasource.joinCollab(
        JoinCollabRequest(playlistId: playlistId),
      );
      if (response.status == 200) return Right(response.message);
      return Left(response.message);
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }
}
