import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:mqfm_apps/features/auth/domain/entities/user.dart';
import 'package:mqfm_apps/features/auth/domain/interfaces/i_user_repository.dart';
import 'package:mqfm_apps/features/auth/applications/login_bloc/login_event.dart';
import 'package:mqfm_apps/features/auth/applications/login_bloc/login_state.dart';
import 'package:mqfm_apps/core/utils/helpers/preferences_helper.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final IAuthRepository _authRepository;

  LoginBloc(this._authRepository) : super(const LoginState.initial()) {
    on<LoginSubmitted>(_onLogin);
    on<GoogleLoginSubmitted>(_onGoogleLogin);
  }

  Future<void> _onLogin(LoginSubmitted event, Emitter<LoginState> emit) async {
    emit(const LoginState.loading());
    final result = await _authRepository.login(event.email, event.password);
    result.fold(
      (error) => emit(LoginState.error(message: error)),
      (user) => _handleAuthSuccess(user, emit),
    );
  }

  Future<void> _onGoogleLogin(
    GoogleLoginSubmitted event,
    Emitter<LoginState> emit,
  ) async {
    emit(const LoginState.googleLoading());
    final result = await _authRepository.signInWithGoogle();
    result.fold(
      (error) => emit(LoginState.error(message: error)),
      (user) => _handleAuthSuccess(user, emit),
    );
  }

  void _handleAuthSuccess(UserEntity user, Emitter<LoginState> emit) {
    if (user.token != null) {
      PreferencesHelper.saveToken(user.token!);
    }
    emit(LoginState.success(user: user));
  }
}
