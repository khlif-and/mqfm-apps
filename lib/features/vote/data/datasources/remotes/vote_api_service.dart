import 'package:dio/dio.dart';
import 'package:mqfm_apps/features/vote/data/models/dto/vote_dto.dart';
import 'package:mqfm_apps/features/vote/data/models/request/vote_request.dart';

class VoteRemoteDatasource {
  final Dio _dio;
  static const _userBase = '/api/user/votes';
  static const _publicBase = '/api/votes';

  VoteRemoteDatasource(this._dio);

  Future<void> castVote(CastVoteRequest body) async {
    await _dio.post('$_userBase/', data: body.toJson());
  }

  Future<void> removeVote(int audioId) async {
    await _dio.delete('$_userBase/$audioId');
  }

  Future<VoteStatusDto> getVoteStatus(int audioId) async {
    final response = await _dio.get('$_userBase/status/$audioId');
    return VoteStatusDto.fromJson(response.data['data']);
  }

  Future<List<VoteRankingDto>> getWeeklyRanking({int limit = 20}) async {
    final response = await _dio.get(
      '$_publicBase/ranking/weekly',
      queryParameters: {'limit': limit},
    );
    return (response.data['data'] as List)
        .map((e) => VoteRankingDto.fromJson(e))
        .toList();
  }

  Future<List<VoteRankingDto>> getMonthlyRanking({int limit = 20}) async {
    final response = await _dio.get(
      '$_publicBase/ranking/monthly',
      queryParameters: {'limit': limit},
    );
    return (response.data['data'] as List)
        .map((e) => VoteRankingDto.fromJson(e))
        .toList();
  }
}
