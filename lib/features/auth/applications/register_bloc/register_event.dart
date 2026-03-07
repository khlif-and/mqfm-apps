import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_event.freezed.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.register({
    required String username,
    required String email,
    required String password,
    File? profilePicture,
  }) = RegisterSubmitted;
}
