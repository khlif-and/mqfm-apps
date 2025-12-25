import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mqfm_apps/utils/app_colors.dart';
import 'package:mqfm_apps/widgets/auth_fields.dart'; // Import CustomTextField, CustomEmailField, CustomPasswordField

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(
        0xFF050505,
      ), // Background Hitam Pekat (Sama dengan Login)
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
                // --- JUDUL (Sama dengan Login) ---
                Center(
                  child: Text(
                    "Buat Akun",
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 40.h),

                // --- 1. USERNAME FIELD (Tambahan untuk Register) ---
                Text(
                  "Username",
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10.h),
                CustomTextField(
                  controller: _usernameController,
                  hintText: "Username",
                  icon: Icons.person_outline,
                ),

                SizedBox(height: 20.h),

                // --- 2. EMAIL FIELD ---
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

                // --- 3. PASSWORD FIELD ---
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
                  "semua data akun anda akan kami konfirmasi.",
                  style: TextStyle(color: Colors.grey, fontSize: 10.sp),
                ),

                SizedBox(height: 60.h),

                // --- TOMBOL DAFTAR (Style Outline, Sama dengan Login) ---
                Center(
                  child: SizedBox(
                    width: 180.w,
                    height: 48.h,
                    child: OutlinedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // Proses Register Disini
                        }
                      },
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Colors.white54, width: 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.r),
                        ),
                        foregroundColor: Colors.white,
                      ),
                      child: Text(
                        "Daftar", // Text tombol beda
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
