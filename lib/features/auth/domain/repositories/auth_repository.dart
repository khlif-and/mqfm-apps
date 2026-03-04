import 'package:dartz/dartz.dart';
import 'package:mqfm_apps/features/auth/domain/entities/user_entity.dart';
import 'dart:io';

abstract class AuthRepository {
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
}
