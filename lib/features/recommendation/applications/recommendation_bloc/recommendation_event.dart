import 'package:freezed_annotation/freezed_annotation.dart';

part 'recommendation_event.freezed.dart';

@freezed
class RecommendationEvent with _$RecommendationEvent {
  const factory RecommendationEvent.fetchAll() = RecommendationFetchAll;
  const factory RecommendationEvent.fetchByArtist({required String artist}) =
      RecommendationFetchByArtist;
  const factory RecommendationEvent.fetchSimilar({required int audioId}) =
      RecommendationFetchSimilar;
}
