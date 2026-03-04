import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_result.freezed.dart';

@freezed
class ApiResult<T> with _$ApiResult<T> {
  const factory ApiResult.success({required T data, required String message}) =
      ApiSuccess<T>;
  const factory ApiResult.error({required String message, int? statusCode}) =
      ApiError<T>;
}
