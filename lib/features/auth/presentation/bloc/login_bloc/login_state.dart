import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mqfm_apps/features/auth/domain/entities/user_entity.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = LoginInitial;
  const factory LoginState.loading() = LoginLoading;
  const factory LoginState.googleLoading() = GoogleLoginLoading;
  const factory LoginState.success({required UserEntity user}) = LoginSuccess;
  const factory LoginState.error({required String message}) = LoginError;
}
