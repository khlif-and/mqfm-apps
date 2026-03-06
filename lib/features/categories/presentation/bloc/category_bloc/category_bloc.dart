import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:mqfm_apps/features/categories/domain/repositories/i_category_repository.dart';
import 'package:mqfm_apps/features/categories/presentation/bloc/category_bloc/category_event.dart';
import 'package:mqfm_apps/features/categories/presentation/bloc/category_bloc/category_state.dart';

@injectable
class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final ICategoryRepository _categoryRepository;

  CategoryBloc(this._categoryRepository)
    : super(const CategoryState.initial()) {
    on<CategoryFetch>(_onFetch);
  }

  Future<void> _onFetch(
    CategoryFetch event,
    Emitter<CategoryState> emit,
  ) async {
    emit(const CategoryState.loading());
    final result = await _categoryRepository.getCategories();
    result.fold(
      (error) => emit(CategoryState.error(message: error)),
      (categories) => emit(CategoryState.loaded(categories: categories)),
    );
  }
}
