import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mqfm_apps/core/di/injection.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_strings.dart';
import 'package:mqfm_apps/core/utils/helpers/message_helper.dart';
import 'package:mqfm_apps/features/auth/presentation/bloc/login_bloc/login_bloc.dart';
import 'package:mqfm_apps/features/auth/presentation/bloc/login_bloc/login_event.dart';
import 'package:mqfm_apps/features/auth/presentation/bloc/login_bloc/login_state.dart';
import 'package:mqfm_apps/features/auth/presentation/bloc/register_bloc/register_bloc.dart';
import 'package:mqfm_apps/features/auth/presentation/bloc/register_bloc/register_event.dart';
import 'package:mqfm_apps/features/auth/presentation/bloc/register_bloc/register_state.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mqfm_apps/presentation/atoms/auth/register_button.dart';
import 'package:mqfm_apps/presentation/atoms/auth/register_title.dart';
import 'package:mqfm_apps/presentation/atoms/common/google_sign_in_button.dart';
import 'package:mqfm_apps/presentation/organisms/auth/register_form_section.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final ImagePicker _picker = ImagePicker();
  File? _selectedImage;

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _pickImage() async {
    final picked = await _picker.pickImage(source: ImageSource.gallery);
    if (picked != null) {
      setState(() => _selectedImage = File(picked.path));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<RegisterBloc>()),
        BlocProvider(create: (_) => getIt<LoginBloc>()),
      ],
      child: BlocConsumer<RegisterBloc, RegisterState>(
        listener: (context, state) {
          state.whenOrNull(
            success: (user) {
              MessageHelper.showSuccess(context, '${AppStrings.registerSuccess} ${user.username}');
              context.go('/login-form');
            },
            error: (message) => MessageHelper.showError(context, message),
          );
        },
        builder: (context, registerState) {
          final isLoading = registerState is RegisterLoading;

          return BlocListener<LoginBloc, LoginState>(
            listener: (context, state) {
              state.whenOrNull(
                success: (_) => context.go('/dashboard'),
                error: (message) => MessageHelper.showError(context, message),
              );
            },
            child: Scaffold(
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
                        const RegisterTitle(),
                        SizedBox(height: AppDims.h20),
                        Center(
                          child: GestureDetector(
                            onTap: _pickImage,
                            child: Stack(
                              children: [
                                Container(
                                  width: AppDims.r100,
                                  height: AppDims.r100,
                                  decoration: BoxDecoration(
                                    color: AppColors.shimmerBase,
                                    shape: BoxShape.circle,
                                    image: _selectedImage != null
                                        ? DecorationImage(image: FileImage(_selectedImage!), fit: BoxFit.cover)
                                        : null,
                                  ),
                                  child: _selectedImage == null
                                      ? Icon(Icons.person, size: AppDims.r50, color: AppColors.textWhite)
                                      : null,
                                ),
                                Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: Container(
                                    padding: EdgeInsets.all(AppDims.r6),
                                    decoration: const BoxDecoration(color: AppColors.primaryClassic, shape: BoxShape.circle),
                                    child: Icon(Icons.camera_alt, size: AppDims.r16, color: AppColors.textWhite),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: AppDims.h30),
                        RegisterFormSection(
                          usernameController: _usernameController,
                          emailController: _emailController,
                          passwordController: _passwordController,
                        ),
                        SizedBox(height: AppDims.h60),
                        RegisterButton(
                          isLoading: isLoading,
                          onPressed: isLoading ? null : () {
                            if (_formKey.currentState!.validate()) {
                              context.read<RegisterBloc>().add(RegisterEvent.register(
                                username: _usernameController.text,
                                email: _emailController.text,
                                password: _passwordController.text,
                                profilePicture: _selectedImage,
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
                        BlocBuilder<LoginBloc, LoginState>(
                          builder: (context, loginState) {
                            final isGoogleLoading = loginState is GoogleLoginLoading;
                            return GoogleSignInButton(
                              isLoading: isGoogleLoading,
                              onPressed: isGoogleLoading ? null : () {
                                context.read<LoginBloc>().add(const LoginEvent.googleLogin());
                              },
                            );
                          },
                        ),
                        SizedBox(height: AppDims.h20),
                      ],
                    ),
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

