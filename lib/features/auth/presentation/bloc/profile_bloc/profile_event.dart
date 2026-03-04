import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:io';

part 'profile_event.freezed.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.fetch() = ProfileFetch;
  const factory ProfileEvent.logout() = ProfileLogout;
  const factory ProfileEvent.update({
    required int userId,
    String? username,
    String? email,
    File? profilePicture,
  }) = ProfileUpdate;
}
