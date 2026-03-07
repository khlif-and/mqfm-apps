import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mqfm_apps/features/auth/domain/entities/user.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = ProfileInitial;
  const factory ProfileState.loading() = ProfileLoading;
  const factory ProfileState.loaded({required UserEntity user}) = ProfileLoaded;
  const factory ProfileState.error({required String message}) = ProfileError;
  const factory ProfileState.loggedOut() = ProfileLoggedOut;
  const factory ProfileState.updated({required UserEntity user}) =
      ProfileUpdated;
}
