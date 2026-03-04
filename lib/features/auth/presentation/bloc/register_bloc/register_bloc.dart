import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mqfm_apps/features/auth/domain/repositories/auth_repository.dart';
import 'package:mqfm_apps/features/auth/presentation/bloc/register_bloc/register_event.dart';
import 'package:mqfm_apps/features/auth/presentation/bloc/register_bloc/register_state.dart';
import 'package:mqfm_apps/core/utils/helpers/preferences_helper.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final AuthRepository _authRepository;

  RegisterBloc(this._authRepository) : super(const RegisterState.initial()) {
    on<RegisterSubmitted>(_onRegister);
  }

  Future<void> _onRegister(
    RegisterSubmitted event,
    Emitter<RegisterState> emit,
  ) async {
    emit(const RegisterState.loading());
    final result = await _authRepository.register(
      event.username,
      event.email,
      event.password,
      event.profilePicture,
    );
    result.fold((error) => emit(RegisterState.error(message: error)), (
      user,
    ) async {
      if (user.token != null) {
        await PreferencesHelper.saveToken(user.token!);
      }
      emit(RegisterState.success(user: user));
    });
  }
}
