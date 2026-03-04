import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mqfm_apps/features/auth/domain/repositories/auth_repository.dart';
import 'package:mqfm_apps/features/auth/presentation/bloc/login_bloc/login_event.dart';
import 'package:mqfm_apps/features/auth/presentation/bloc/login_bloc/login_state.dart';
import 'package:mqfm_apps/core/utils/helpers/preferences_helper.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRepository _authRepository;

  LoginBloc(this._authRepository) : super(const LoginState.initial()) {
    on<LoginSubmitted>(_onLogin);
    on<GoogleLoginSubmitted>(_onGoogleLogin);
  }

  Future<void> _onLogin(LoginSubmitted event, Emitter<LoginState> emit) async {
    emit(const LoginState.loading());
    final result = await _authRepository.login(event.email, event.password);
    result.fold((error) => emit(LoginState.error(message: error)), (
      user,
    ) async {
      if (user.token != null) {
        await PreferencesHelper.saveToken(user.token!);
      }
      emit(LoginState.success(user: user));
    });
  }

  Future<void> _onGoogleLogin(
    GoogleLoginSubmitted event,
    Emitter<LoginState> emit,
  ) async {
    emit(const LoginState.googleLoading());
    final result = await _authRepository.signInWithGoogle();
    result.fold((error) => emit(LoginState.error(message: error)), (
      user,
    ) async {
      if (user.token != null) {
        await PreferencesHelper.saveToken(user.token!);
      }
      emit(LoginState.success(user: user));
    });
  }
}
