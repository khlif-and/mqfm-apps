import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mqfm_apps/features/artikel/domain/entities/artikel.dart';

part 'artikel_state.freezed.dart';

@freezed
class ArtikelListState with _$ArtikelListState {
  const factory ArtikelListState.initial() = ArtikelListInitial;
  const factory ArtikelListState.loading() = ArtikelListLoading;
  const factory ArtikelListState.loaded(
      {required ArtikelChannelEntity channel}) = ArtikelListLoaded;
  const factory ArtikelListState.error({required String message}) =
      ArtikelListError;
}
