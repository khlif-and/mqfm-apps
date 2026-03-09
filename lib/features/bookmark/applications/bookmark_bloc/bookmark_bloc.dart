import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:mqfm_apps/features/bookmark/domain/interfaces/i_bookmark_repository.dart';
import 'package:mqfm_apps/features/bookmark/applications/bookmark_bloc/bookmark_event.dart';
import 'package:mqfm_apps/features/bookmark/applications/bookmark_bloc/bookmark_state.dart';

@injectable
class BookmarkBloc extends Bloc<BookmarkEvent, BookmarkState> {
  final IBookmarkRepository _repository;

  BookmarkBloc(this._repository) : super(const BookmarkState.initial()) {
    on<BookmarkFetch>(_onFetch);
    on<BookmarkFetchByAudio>(_onFetchByAudio);
    on<BookmarkCreate>(_onCreate);
    on<BookmarkDelete>(_onDelete);
  }

  Future<void> _onFetch(
      BookmarkFetch event, Emitter<BookmarkState> emit) async {
    emit(const BookmarkState.loading());
    final result = await _repository.getBookmarks();
    result.fold(
      (error) => emit(BookmarkState.error(message: error)),
      (bookmarks) => emit(BookmarkState.loaded(bookmarks: bookmarks)),
    );
  }

  Future<void> _onFetchByAudio(
      BookmarkFetchByAudio event, Emitter<BookmarkState> emit) async {
    emit(const BookmarkState.loading());
    final result = await _repository.getBookmarksByAudio(event.audioId);
    result.fold(
      (error) => emit(BookmarkState.error(message: error)),
      (bookmarks) => emit(BookmarkState.loaded(bookmarks: bookmarks)),
    );
  }

  Future<void> _onCreate(
      BookmarkCreate event, Emitter<BookmarkState> emit) async {
    final result = await _repository.createBookmark(
        event.audioId, event.positionSeconds, event.label);
    result.fold(
      (error) => emit(BookmarkState.error(message: error)),
      (_) => emit(const BookmarkState.actionSuccess(
          message: 'Bookmark berhasil ditambahkan')),
    );
  }

  Future<void> _onDelete(
      BookmarkDelete event, Emitter<BookmarkState> emit) async {
    final result = await _repository.deleteBookmark(event.id);
    result.fold(
      (error) => emit(BookmarkState.error(message: error)),
      (msg) => emit(BookmarkState.actionSuccess(message: msg)),
    );
  }
}
