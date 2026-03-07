import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mqfm_apps/features/auth/domain/entities/user.dart';

part 'register_state.freezed.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState.initial() = RegisterInitial;
  const factory RegisterState.loading() = RegisterLoading;
  const factory RegisterState.success({required UserEntity user}) =
      RegisterSuccess;
  const factory RegisterState.error({required String message}) = RegisterError;
}
