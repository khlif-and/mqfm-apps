import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mqfm_apps/controller/auth/auth_controller.dart'; // Pastikan import ini ada
import 'package:mqfm_apps/widgets/auth_fields.dart';

class LoginFormScreen extends StatefulWidget {
  const LoginFormScreen({super.key});

  @override
  State<LoginFormScreen> createState() => _LoginFormScreenState();
}

class _LoginFormScreenState extends State<LoginFormScreen> {
  // 1. Panggil Controller
  final _authController = AuthController();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  // Variabel untuk status loading (muter-muter)
  bool _isLoading = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  // 2. Fungsi Logika Login yang SEBENARNYA
  Future<void> _handleLogin() async {
    // Cek apakah kolom kosong
    if (!_formKey.currentState!.validate()) return;

    setState(() {
      _isLoading = true; // Mulai loading
    });

    try {
      // Panggil API Login
      final response = await _authController.login(
        _emailController.text,
        _passwordController.text,
      );

      if (!mounted) return;

      // 3. Cek Status Response DARI SERVER
      if (response.status == 200) {
        // --- JIKA SUKSES ---
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              "Login Berhasil! Selamat datang ${response.data?.username}",
            ),
            backgroundColor: Colors.green,
          ),
        );

        // BARU BOLEH PINDAH HALAMAN
        context.go('/dashboard');
      } else {
        // --- JIKA GAGAL (Password Salah / Akun tidak ada) ---
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Gagal Masuk: ${response.message}"),
            backgroundColor: Colors.red,
          ),
        );
      }
    } catch (e) {
      // --- JIKA ERROR KONEKSI ---
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
          _isLoading = false; // Stop loading
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
                      // 4. Hubungkan tombol ke fungsi _handleLogin
                      // Tombol mati jika sedang loading
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
