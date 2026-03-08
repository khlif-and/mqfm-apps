import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mqfm_apps/features/auth/domain/entities/user.dart';

part 'otp_state.freezed.dart';

@freezed
class OtpState with _$OtpState {
  const factory OtpState.initial() = OtpInitial;
  const factory OtpState.loading() = OtpLoading;
  const factory OtpState.generated({required String message}) = OtpGenerated;
  const factory OtpState.verified({required UserEntity user}) = OtpVerified;
  const factory OtpState.error({required String message}) = OtpError;
}
