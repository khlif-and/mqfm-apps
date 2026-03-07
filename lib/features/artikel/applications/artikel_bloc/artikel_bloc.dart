import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:mqfm_apps/features/artikel/domain/interfaces/i_artikel_repository.dart';
import 'package:mqfm_apps/features/artikel/applications/artikel_bloc/artikel_event.dart';
import 'package:mqfm_apps/features/artikel/applications/artikel_bloc/artikel_state.dart';

@injectable
class ArtikelListBloc extends Bloc<ArtikelListEvent, ArtikelListState> {
  final IArtikelRepository _artikelRepository;

  ArtikelListBloc(this._artikelRepository)
      : super(const ArtikelListState.initial()) {
    on<ArtikelListFetch>(_onFetch);
  }

  Future<void> _onFetch(
    ArtikelListFetch event,
    Emitter<ArtikelListState> emit,
  ) async {
    emit(const ArtikelListState.loading());
    final result = await _artikelRepository.getArtikels();
    result.fold(
      (error) => emit(ArtikelListState.error(message: error)),
      (channel) => emit(ArtikelListState.loaded(channel: channel)),
    );
  }
}
