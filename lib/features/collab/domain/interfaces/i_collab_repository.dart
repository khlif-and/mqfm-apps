import 'package:dartz/dartz.dart';
import 'package:mqfm_apps/features/collab/domain/entities/collab.dart';

abstract class ICollabRepository {
  Future<Either<String, String>> addCollaborator(int playlistId, int userId);
  Future<Either<String, String>> removeCollaborator(
      int playlistId, int userId);
  Future<Either<String, List<CollaboratorEntity>>> getCollaborators(
      int playlistId);
  Future<Either<String, String>> contributeAudio(int playlistId, int audioId);
  Future<Either<String, String>> joinCollab(int playlistId);
}
