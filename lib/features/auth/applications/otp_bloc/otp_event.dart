import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp_event.freezed.dart';

@freezed
class OtpEvent with _$OtpEvent {
  const factory OtpEvent.generate({required String email}) = OtpGenerate;
  const factory OtpEvent.verify({
    required String email,
    required String code,
  }) = OtpVerify;
}
