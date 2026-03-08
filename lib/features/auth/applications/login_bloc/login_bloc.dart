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
    if (result.isLeft()) {
      emit(LoginState.error(message: result.fold((l) => l, (_) => '')));
      return;
    }
    await _handleAuthSuccess(
      result.getOrElse(() => throw StateError('unreachable')),
      emit,
    );
  }

  Future<void> _onGoogleLogin(
    GoogleLoginSubmitted event,
    Emitter<LoginState> emit,
  ) async {
    emit(const LoginState.googleLoading());
    final result = await _authRepository.signInWithGoogle();
    if (result.isLeft()) {
      emit(LoginState.error(message: result.fold((l) => l, (_) => '')));
      return;
    }
    await _handleAuthSuccess(
      result.getOrElse(() => throw StateError('unreachable')),
      emit,
    );
  }

  Future<void> _handleAuthSuccess(UserEntity user, Emitter<LoginState> emit) async {
    if (user.token != null) {
      await PreferencesHelper.saveToken(user.token!);
    }
    emit(LoginState.success(user: user));
  }
}
