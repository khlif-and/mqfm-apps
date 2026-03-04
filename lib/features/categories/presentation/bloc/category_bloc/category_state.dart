import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mqfm_apps/features/categories/domain/entities/category_entity.dart';

part 'category_state.freezed.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState.initial() = CategoryInitial;
  const factory CategoryState.loading() = CategoryLoading;
  const factory CategoryState.loaded({
    required List<CategoryEntity> categories,
  }) = CategoryLoaded;
  const factory CategoryState.error({required String message}) = CategoryError;
}
