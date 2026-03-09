import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mqfm_apps/features/resume/data/datasources/remotes/resume_api_service.dart';
import 'package:mqfm_apps/features/resume/data/models/request/resume_request.dart';
import 'package:mqfm_apps/features/resume/domain/entities/resume.dart';
import 'package:mqfm_apps/features/resume/domain/interfaces/i_resume_repository.dart';

@LazySingleton(as: IResumeRepository)
class ResumeRepositoryImpl implements IResumeRepository {
  final ResumeRemoteDatasource _datasource;

  ResumeRepositoryImpl(this._datasource);

  @override
  Future<Either<String, String>> saveResume(
      int audioId, int positionSeconds) async {
    try {
      final response = await _datasource.saveResume(
        SaveResumeRequest(audioId: audioId, positionSeconds: positionSeconds),
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
  Future<Either<String, List<ResumeEntity>>> getResumeList() async {
    try {
      final response = await _datasource.getResumeList();
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
}
