import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:mqfm_apps/features/recommendation/domain/interfaces/i_recommendation_repository.dart';
import 'package:mqfm_apps/features/recommendation/applications/recommendation_bloc/recommendation_event.dart';
import 'package:mqfm_apps/features/recommendation/applications/recommendation_bloc/recommendation_state.dart';

@injectable
class RecommendationBloc
    extends Bloc<RecommendationEvent, RecommendationState> {
  final IRecommendationRepository _repository;

  RecommendationBloc(this._repository)
      : super(const RecommendationState()) {
    on<RecommendationFetchAll>(_onFetchAll);
    on<RecommendationFetchByArtist>(_onFetchByArtist);
    on<RecommendationFetchSimilar>(_onFetchSimilar);
  }

  Future<void> _onFetchAll(
    RecommendationFetchAll event,
    Emitter<RecommendationState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, error: null));

    final results = await Future.wait([
      _repository.getPersonalized(),
      _repository.getPopular(),
      _repository.getQuickPick(),
    ]);

    final personalized = results[0].fold((_) => state.personalized, (d) => d);
    final popular = results[1].fold((_) => state.popular, (d) => d);
    final quickPick = results[2].fold((_) => state.quickPick, (d) => d);

    emit(state.copyWith(
      personalized: personalized,
      popular: popular,
      quickPick: quickPick,
      isLoading: false,
    ));
  }

  Future<void> _onFetchByArtist(
    RecommendationFetchByArtist event,
    Emitter<RecommendationState> emit,
  ) async {
    final result = await _repository.getByArtist(event.artist);
    result.fold(
      (_) {},
      (data) => emit(state.copyWith(
        byArtist: data,
        artistName: event.artist,
      )),
    );
  }

  Future<void> _onFetchSimilar(
    RecommendationFetchSimilar event,
    Emitter<RecommendationState> emit,
  ) async {
    final result = await _repository.getSimilar(event.audioId);
    result.fold(
      (_) {},
      (data) => emit(state.copyWith(similar: data)),
    );
  }
}
