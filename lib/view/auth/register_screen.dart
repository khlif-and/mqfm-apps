import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mqfm_apps/utils/app_colors.dart';
import 'package:mqfm_apps/utils/app_dims.dart';
import 'package:mqfm_apps/utils/app_styles.dart';
import 'package:mqfm_apps/widgets/custom_button.dart';
import 'package:mqfm_apps/widgets/auth_fields.dart';
// Pastikan import form screen jika tombol arahnya kesana
import 'package:go_router/go_router.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            // Constraint ini membuat Container minimal setinggi layar
            constraints: BoxConstraints(
              minHeight:
                  1.sh -
                  MediaQuery.of(context).padding.top -
                  MediaQuery.of(context).padding.bottom,
            ),
            // TAMBAHAN 1: Align center agar anak (Column) berada di tengah
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: AppDims.w24),
            child: Column(
              // TAMBAHAN 2: Ubah mainAxisSize jadi min agar tidak crash
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 40.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.radio, color: Colors.white, size: 40.w),
                    SizedBox(width: AppDims.w12),
                    Text(
                      "102.7 MQFM",
                      style: AppStyles.displayLarge.copyWith(
                        fontSize: 32.sp,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 1,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Text(
                  "manajemen qolbu",
                  style: AppStyles.bodySmall.copyWith(
                    color: Colors.white70,
                    letterSpacing: 2,
                  ),
                ),

                SizedBox(height: AppDims.h48),

                Text(
                  "Daftar Akun Baru",
                  style: AppStyles.titleLarge.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    height: 1.3,
                  ),
                  textAlign: TextAlign.center,
                ),

                SizedBox(height: AppDims.h32),

                // Note: Pastikan Controller ini di-handle dengan benar (StatelessWidget tidak bisa punya controller permanen tanpa state management)
                // Untuk contoh UI saja, kita inisialisasi di dalam build atau ubah ke StatefulWidget
                // Disini saya pakai contoh TextField biasa agar tidak error controller
                TextFormField(
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Nama Lengkap",
                    hintStyle: const TextStyle(color: Colors.white54),
                    prefixIcon: const Icon(
                      Icons.person_outline,
                      color: Colors.white70,
                    ),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.05),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                  ),
                ),

                SizedBox(height: AppDims.h16),

                TextFormField(
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Email",
                    hintStyle: const TextStyle(color: Colors.white54),
                    prefixIcon: const Icon(
                      Icons.email_outlined,
                      color: Colors.white70,
                    ),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.05),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                  ),
                ),

                SizedBox(height: AppDims.h16),

                TextFormField(
                  obscureText: true,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: const TextStyle(color: Colors.white54),
                    prefixIcon: const Icon(
                      Icons.lock_outline,
                      color: Colors.white70,
                    ),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.05),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                  ),
                ),

                SizedBox(height: AppDims.h32),

                CustomButton(
                  text: "Daftar",
                  icon: const Icon(
                    Icons.check_circle_outline,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                  backgroundColor: AppColors.primary,
                  textColor: Colors.black,
                ),

                SizedBox(height: 32.h),

                // Spacer() HARUS DIHAPUS jika di dalam SingleChildScrollView
                // Gunakan SizedBox jarak fix atau mainAxisAlignment dari Container
                SizedBox(height: 40.h),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Sudah Punya akun? ",
                      style: AppStyles.bodyMedium.copyWith(
                        color: Colors.white70,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        context.push('/login-form');
                      },
                      child: Text(
                        "Log in",
                        style: AppStyles.bodyMedium.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 24.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
