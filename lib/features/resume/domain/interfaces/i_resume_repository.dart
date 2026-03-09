import 'package:dartz/dartz.dart';
import 'package:mqfm_apps/features/resume/domain/entities/resume.dart';

abstract class IResumeRepository {
  Future<Either<String, String>> saveResume(int audioId, int positionSeconds);
  Future<Either<String, List<ResumeEntity>>> getResumeList();
}
