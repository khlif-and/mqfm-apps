import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:mqfm_apps/features/auth/domain/interfaces/i_user_repository.dart';
import 'package:mqfm_apps/features/auth/applications/profile_bloc/profile_event.dart';
import 'package:mqfm_apps/features/auth/applications/profile_bloc/profile_state.dart';
import 'package:mqfm_apps/core/utils/helpers/preferences_helper.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final IAuthRepository _authRepository;

  ProfileBloc(this._authRepository) : super(const ProfileState.initial()) {
    on<ProfileFetch>(_onFetch);
    on<ProfileLogout>(_onLogout);
    on<ProfileUpdate>(_onUpdate);
  }

  Future<void> _onFetch(ProfileFetch event, Emitter<ProfileState> emit) async {
    emit(const ProfileState.loading());
    final result = await _authRepository.me();
    result.fold(
      (error) => emit(ProfileState.error(message: error)),
      (user) => emit(ProfileState.loaded(user: user)),
    );
  }

  Future<void> _onLogout(
    ProfileLogout event,
    Emitter<ProfileState> emit,
  ) async {
    emit(const ProfileState.loading());
    final result = await _authRepository.logout();
    await PreferencesHelper.clearUserData();
    result.fold(
      (error) => emit(const ProfileState.loggedOut()),
      (message) => emit(const ProfileState.loggedOut()),
    );
  }

  Future<void> _onUpdate(
    ProfileUpdate event,
    Emitter<ProfileState> emit,
  ) async {
    emit(const ProfileState.loading());
    final result = await _authRepository.updateProfile(
      event.userId,
      username: event.username,
      email: event.email,
      profilePicture: event.profilePicture,
    );
    result.fold(
      (error) => emit(ProfileState.error(message: error)),
      (user) => emit(ProfileState.updated(user: user)),
    );
  }
}
