import 'package:mqfm_apps/core/routes/app_path_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mqfm_apps/core/di/injection.dart';
import 'package:mqfm_apps/core/manager/user_manager.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_strings.dart';
import 'package:mqfm_apps/core/utils/helpers/message_helper.dart';
import 'package:mqfm_apps/features/auth/applications/login_bloc/login_bloc.dart';
import 'package:mqfm_apps/features/auth/applications/login_bloc/login_event.dart';
import 'package:mqfm_apps/features/auth/applications/login_bloc/login_state.dart';
import 'package:mqfm_apps/presentation/atoms/auth/login_button.dart';
import 'package:mqfm_apps/presentation/atoms/auth/login_title.dart';
import 'package:mqfm_apps/presentation/molecules/common/google_sign_in_button.dart';
import 'package:mqfm_apps/presentation/molecules/auth/login_form_section.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<LoginBloc>(),
      child: BlocConsumer<LoginBloc, LoginState>(
        listener: (context, state) {
          state.whenOrNull(
            success: (user) {
              UserManager.instance.setUser(user);
              MessageHelper.showSuccess(context, '${AppStrings.loginSuccess} ${user.username}');
              context.go(AppPathRoutes.dashboard);
            },
            error: (message) => MessageHelper.showError(context, message),
          );
        },
        builder: (context, state) {
          final isLoading = state is LoginLoading;
          final isGoogleLoading = state is GoogleLoginLoading;

          return Scaffold(
            backgroundColor: AppColors.backgroundBlack,
            appBar: AppBar(
              backgroundColor: AppColors.transparent,
              elevation: 0,
              leading: IconButton(
                icon: Icon(Icons.arrow_back, color: AppColors.textWhite),
                onPressed: () => Navigator.pop(context),
              ),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: AppDims.w24),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: AppDims.h10),
                      const LoginTitle(),
                      SizedBox(height: AppDims.h40),
                      LoginFormSection(
                        emailController: _emailController,
                        passwordController: _passwordController,
                      ),
                      SizedBox(height: AppDims.h60),
                      LoginButton(
                        isLoading: isLoading,
                        onPressed: isLoading ? null : () {
                          if (_formKey.currentState!.validate()) {
                            context.read<LoginBloc>().add(LoginEvent.login(
                              email: _emailController.text,
                              password: _passwordController.text,
                            ));
                          }
                        },
                      ),
                      SizedBox(height: AppDims.h24),
                      Row(
                        children: [
                          Expanded(child: Divider(color: AppColors.textSecondary.withValues(alpha: 0.3), thickness: 1)),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: AppDims.w16),
                            child: Text(AppStrings.dividerOr, style: TextStyle(color: AppColors.textSecondary, fontSize: AppDims.sp13)),
                          ),
                          Expanded(child: Divider(color: AppColors.textSecondary.withValues(alpha: 0.3), thickness: 1)),
                        ],
                      ),
                      SizedBox(height: AppDims.h24),
                      GoogleSignInButton(
                        isLoading: isGoogleLoading,
                        onPressed: isGoogleLoading ? null : () {
                          context.read<LoginBloc>().add(const LoginEvent.googleLogin());
                        },
                      ),
                      SizedBox(height: AppDims.h20),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
