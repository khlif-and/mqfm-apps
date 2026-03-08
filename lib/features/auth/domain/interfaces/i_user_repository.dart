import 'package:dartz/dartz.dart';
import 'package:mqfm_apps/features/auth/domain/entities/user.dart';
import 'dart:io';

abstract class IAuthRepository {
  Future<Either<String, UserEntity>> login(String email, String password);
  Future<Either<String, UserEntity>> register(
    String username,
    String email,
    String password,
    File? profilePicture,
  );
  Future<Either<String, UserEntity>> signInWithGoogle();
  Future<Either<String, UserEntity>> me();
  Future<Either<String, String>> logout();
  Future<Either<String, UserEntity>> updateProfile(
    int userId, {
    String? username,
    String? email,
    File? profilePicture,
  });
  Future<Either<String, String>> generateOtp(String email);
  Future<Either<String, UserEntity>> verifyOtp(String email, String code);
}
