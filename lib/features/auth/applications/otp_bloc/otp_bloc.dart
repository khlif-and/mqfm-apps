import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:mqfm_apps/features/auth/domain/interfaces/i_user_repository.dart';
import 'package:mqfm_apps/features/auth/applications/otp_bloc/otp_event.dart';
import 'package:mqfm_apps/features/auth/applications/otp_bloc/otp_state.dart';
import 'package:mqfm_apps/core/utils/helpers/preferences_helper.dart';

@injectable
class OtpBloc extends Bloc<OtpEvent, OtpState> {
  final IAuthRepository _authRepository;

  OtpBloc(this._authRepository) : super(const OtpState.initial()) {
    on<OtpGenerate>(_onGenerate);
    on<OtpVerify>(_onVerify);
  }

  Future<void> _onGenerate(
    OtpGenerate event,
    Emitter<OtpState> emit,
  ) async {
    emit(const OtpState.loading());
    final result = await _authRepository.generateOtp(event.email);
    result.fold(
      (error) => emit(OtpState.error(message: error)),
      (message) => emit(OtpState.generated(message: message)),
    );
  }

  Future<void> _onVerify(
    OtpVerify event,
    Emitter<OtpState> emit,
  ) async {
    emit(const OtpState.loading());
    final result = await _authRepository.verifyOtp(event.email, event.code);
    if (result.isLeft()) {
      emit(OtpState.error(message: result.fold((l) => l, (_) => '')));
      return;
    }
    final user = result.getOrElse(() => throw StateError('unreachable'));
    if (user.token != null) {
      await PreferencesHelper.saveToken(user.token!);
    }
    emit(OtpState.verified(user: user));
  }
}
