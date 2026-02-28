import 'package:flutter/material.dart';
import 'package:mqfm_apps/utils/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mqfm_apps/presentation/atoms/auth/register_button.dart';
import 'package:mqfm_apps/presentation/atoms/auth/register_title.dart';
import 'package:mqfm_apps/presentation/atoms/common/google_auth_card.dart';
import 'package:mqfm_apps/presentation/atoms/common/google_sign_in_button.dart';
import 'package:mqfm_apps/presentation/logic/auth/login_logic.dart';
import 'package:mqfm_apps/presentation/logic/auth/register_logic.dart';
import 'package:mqfm_apps/presentation/organisms/auth/register_form_section.dart';
import 'package:mqfm_apps/utils/helpers/message_helper.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final RegisterLogic logic = RegisterLogic();
  final LoginLogic googleLogic = LoginLogic();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    logic.dispose();
    googleLogic.dispose();
    super.dispose();
  }

  Future<void> _handleRegister() async {
    if (!_formKey.currentState!.validate()) return;

    final success = await logic.register(
      _usernameController.text,
      _emailController.text,
      _passwordController.text,
    );

    if (!mounted) return;

    if (success) {
      if (logic.successMessage != null) {
        MessageHelper.showSuccess(context, logic.successMessage!);
      }
      context.go('/login-form');
    } else {
      if (logic.errorMessage != null) {
        MessageHelper.showError(context, logic.errorMessage!);
      }
    }
  }

  Future<void> _handleGoogleSignIn() async {
    final success = await googleLogic.signInWithGoogle();

    if (!mounted) return;

    if (success) {
      context.go('/dashboard');
    } else {
      if (googleLogic.errorMessage != null) {
        GoogleAuthCard.showError(context, googleLogic.errorMessage!);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundBlack,
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
                const RegisterTitle(),
                SizedBox(height: 20.h),
                Center(
                  child: ListenableBuilder(
                    listenable: logic,
                    builder: (context, child) {
                      return GestureDetector(
                        onTap: logic.pickImage,
                        child: Stack(
                          children: [
                            Container(
                              width: 100.r,
                              height: 100.r,
                              decoration: BoxDecoration(
                                color: Colors.grey[800],
                                shape: BoxShape.circle,
                                image: logic.selectedImage != null
                                    ? DecorationImage(
                                        image: FileImage(logic.selectedImage!),
                                        fit: BoxFit.cover,
                                      )
                                    : null,
                              ),
                              child: logic.selectedImage == null
                                  ? Icon(
                                      Icons.person,
                                      size: 50.r,
                                      color: Colors.white,
                                    )
                                  : null,
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                padding: EdgeInsets.all(6.r),
                                decoration: const BoxDecoration(
                                  color: AppColors.primaryClassic,
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.camera_alt,
                                  size: 16.r,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 30.h),
                RegisterFormSection(
                  usernameController: _usernameController,
                  emailController: _emailController,
                  passwordController: _passwordController,
                ),
                SizedBox(height: 60.h),
                ListenableBuilder(
                  listenable: logic,
                  builder: (context, child) {
                    return RegisterButton(
                      isLoading: logic.isLoading,
                      onPressed: logic.isLoading ? null : _handleRegister,
                    );
                  },
                ),
                SizedBox(height: 24.h),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: AppColors.textSecondary.withValues(alpha: 0.3),
                        thickness: 1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Text(
                        'atau',
                        style: TextStyle(
                          color: AppColors.textSecondary,
                          fontSize: 13.sp,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: AppColors.textSecondary.withValues(alpha: 0.3),
                        thickness: 1,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24.h),
                ListenableBuilder(
                  listenable: googleLogic,
                  builder: (context, child) {
                    return GoogleSignInButton(
                      isLoading: googleLogic.isGoogleLoading,
                      onPressed: googleLogic.isGoogleLoading
                          ? null
                          : _handleGoogleSignIn,
                    );
                  },
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
