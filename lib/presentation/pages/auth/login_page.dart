import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mqfm_apps/controller/auth/auth_controller.dart';
import 'package:mqfm_apps/presentation/molecules/auth/email_field.dart';
import 'package:mqfm_apps/presentation/molecules/auth/password_field.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _authController = AuthController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _isLoading = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _handleLogin() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() {
      _isLoading = true;
    });

    try {
      final response = await _authController.login(
        _emailController.text,
        _passwordController.text,
      );

      if (!mounted) return;

      if (response.status == 200) {
        final prefs = await SharedPreferences.getInstance();
        if (response.data?.token != null) {
          await prefs.setString('auth_token', response.data!.token!);
        }

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Login Berhasil! Hai ${response.data?.username}"),
            backgroundColor: Colors.green,
          ),
        );

        context.go('/dashboard');
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Gagal Masuk: ${response.message}"),
            backgroundColor: Colors.red,
          ),
        );
      }
    } catch (e) {
      if (!mounted) return;
      String errorMessage = e.toString().replaceAll("Exception: ", "");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Error Koneksi: $errorMessage"),
          backgroundColor: Colors.red,
        ),
      );
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF050505),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10.h),
                Center(
                  child: Text(
                    "Login Akun",
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 40.h),
                Text(
                  "Email",
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10.h),
                CustomEmailField(controller: _emailController),
                SizedBox(height: 20.h),
                Text(
                  "Password",
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10.h),
                CustomPasswordField(controller: _passwordController),
                SizedBox(height: 8.h),
                Text(
                  "Pastikan email dan password anda benar.",
                  style: TextStyle(color: Colors.grey, fontSize: 10.sp),
                ),
                SizedBox(height: 60.h),
                Center(
                  child: SizedBox(
                    width: 180.w,
                    height: 48.h,
                    child: OutlinedButton(
                      onPressed: _isLoading ? null : _handleLogin,
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Colors.white54, width: 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.r),
                        ),
                        foregroundColor: Colors.white,
                      ),
                      child: _isLoading
                          ? SizedBox(
                              height: 20.h,
                              width: 20.h,
                              child: const CircularProgressIndicator(
                                color: Colors.white,
                                strokeWidth: 2,
                              ),
                            )
                          : Text(
                              "Masuk",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 16.sp,
                              ),
                            ),
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
