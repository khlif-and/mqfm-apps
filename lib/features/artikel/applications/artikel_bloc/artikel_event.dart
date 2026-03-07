import 'package:freezed_annotation/freezed_annotation.dart';

part 'artikel_event.freezed.dart';

@freezed
class ArtikelListEvent with _$ArtikelListEvent {
  const factory ArtikelListEvent.fetch() = ArtikelListFetch;
}
