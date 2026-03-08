import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mqfm_apps/core/models/base_response.dart';
import 'package:mqfm_apps/features/auth/data/datasources/remotes/auth_api_service.dart';
import 'package:mqfm_apps/features/auth/data/models/request/login_request.dart';
import 'package:mqfm_apps/features/auth/data/models/dto/user_dto.dart';
import 'package:mqfm_apps/features/auth/domain/entities/user.dart';
import 'package:injectable/injectable.dart';
import 'package:mqfm_apps/features/auth/domain/interfaces/i_user_repository.dart';
import 'package:supabase_flutter/supabase_flutter.dart' hide MultipartFile;

@LazySingleton(as: IAuthRepository)
class AuthRepositoryImpl implements IAuthRepository {
  final AuthRemoteDatasource _datasource;
  final Dio _dio;

  AuthRepositoryImpl(this._datasource, this._dio);

  @override
  Future<Either<String, UserEntity>> login(
    String email,
    String password,
  ) async {
    try {
      final response = await _datasource.login(
        LoginRequest(email: email, password: password),
      );
      if (response.status == 200 && response.data != null) {
        return Right(response.data!.toEntity());
      }
      return Left(response.message);
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, UserEntity>> register(
    String username,
    String email,
    String password,
    File? profilePicture,
  ) async {
    try {
      final formData = FormData.fromMap({
        'username': username,
        'email': email,
        'password': password,
        if (profilePicture != null)
          'profile_picture': await MultipartFile.fromFile(profilePicture.path),
      });

      final response = await _dio.post(
        '/api/user/auth/register',
        data: formData,
      );

      final dto = BaseResponse<UserDto>.fromJson(
        response.data,
        (json) => UserDto.fromJson(json as Map<String, dynamic>),
      );
      if ((dto.status == 200 || dto.status == 201) && dto.data != null) {
        return Right(dto.data!.toEntity());
      }
      return Left(dto.message);
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, UserEntity>> signInWithGoogle() async {
    try {
      final webClientId = dotenv.env['GOOGLE_WEB_CLIENT_ID'] ?? '';
      final googleSignIn = GoogleSignIn(serverClientId: webClientId);
      final googleUser = await googleSignIn.signIn();
      if (googleUser == null) {
        return const Left('Login dibatalkan');
      }

      final googleAuth = await googleUser.authentication;
      final idToken = googleAuth.idToken;
      final accessToken = googleAuth.accessToken;

      if (idToken == null) {
        return const Left('Gagal mendapatkan ID Token dari Google');
      }

      await Supabase.instance.client.auth.signInWithIdToken(
        provider: OAuthProvider.google,
        idToken: idToken,
        accessToken: accessToken,
      );

      final response = await _datasource.googleLogin({'id_token': idToken});
      if (response.status == 200 && response.data != null) {
        return Right(response.data!.toEntity());
      }
      return Left(response.message);
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, UserEntity>> me() async {
    try {
      final response = await _datasource.me();
      if (response.status == 200 && response.data != null) {
        return Right(response.data!.toEntity());
      }
      return Left(response.message);
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, String>> logout() async {
    try {
      final response = await _datasource.logout();
      if (response.status == 200) {
        return Right(response.message);
      }
      return Left(response.message);
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, UserEntity>> updateProfile(
    int userId, {
    String? username,
    String? email,
    File? profilePicture,
  }) async {
    try {
      final Map<String, dynamic> fields = {};
      if (username != null && username.isNotEmpty)
        fields['username'] = username;
      if (email != null && email.isNotEmpty) fields['email'] = email;
      if (profilePicture != null) {
        fields['profile_picture'] = await MultipartFile.fromFile(
          profilePicture.path,
        );
      }

      final formData = FormData.fromMap(fields);
      final response = await _dio.put(
        '/api/user/auth/update/$userId',
        data: formData,
      );

      final dto = BaseResponse<UserDto>.fromJson(
        response.data,
        (json) => UserDto.fromJson(json as Map<String, dynamic>),
      );
      if (dto.status == 200 && dto.data != null) {
        return Right(dto.data!.toEntity());
      }
      return Left(dto.message);
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, String>> generateOtp(String email) async {
    try {
      final response = await _datasource.generateOtp({'email': email});
      if (response.status == 200 || response.data != null) {
        return Right(response.message);
      }
      return Left(response.message);
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, UserEntity>> verifyOtp(
    String email,
    String code,
  ) async {
    try {
      final response = await _datasource.verifyOtp({
        'email': email,
        'code': code,
      });
      if (response.status == 200 && response.data != null) {
        return Right(response.data!.toEntity());
      }
      return Left(response.message);
    } on DioException catch (e) {
      return Left(e.error?.toString() ?? 'Terjadi kesalahan');
    } catch (e) {
      return Left(e.toString());
    }
  }
}
