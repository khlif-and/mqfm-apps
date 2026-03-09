import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mqfm_apps/core/di/injection.dart';
import 'package:mqfm_apps/core/manager/user_manager.dart';
import 'package:mqfm_apps/core/routes/app_path_routes.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/core/utils/helpers/message_helper.dart';
import 'package:mqfm_apps/features/auth/applications/otp_bloc/otp_bloc.dart';
import 'package:mqfm_apps/features/auth/applications/otp_bloc/otp_event.dart';
import 'package:mqfm_apps/features/auth/applications/otp_bloc/otp_state.dart';
import 'package:mqfm_apps/presentation/molecules/auth/otp_input_row.dart';

class OtpVerifyPage extends StatefulWidget {
  final String email;
  const OtpVerifyPage({super.key, required this.email});

  @override
  State<OtpVerifyPage> createState() => _OtpVerifyPageState();
}

class _OtpVerifyPageState extends State<OtpVerifyPage> {
  final List<TextEditingController> _controllers =
      List.generate(6, (_) => TextEditingController());
  final List<FocusNode> _focusNodes = List.generate(6, (_) => FocusNode());

  @override
  void dispose() {
    for (final c in _controllers) {
      c.dispose();
    }
    for (final f in _focusNodes) {
      f.dispose();
    }
    super.dispose();
  }

  String get _otpCode => _controllers.map((c) => c.text).join();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<OtpBloc>()
        ..add(OtpEvent.generate(email: widget.email)),
      child: BlocConsumer<OtpBloc, OtpState>(
        listener: (context, state) {
          state.whenOrNull(
            generated: (message) =>
                MessageHelper.showSuccess(context, message),
            verified: (user) {
              UserManager.instance.setUser(user);
              context.go(AppPathRoutes.onboardingPick);
            },
            error: (message) =>
                MessageHelper.showError(context, message),
          );
        },
        builder: (context, state) {
          final isLoading = state is OtpLoading;
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
              padding: EdgeInsets.symmetric(horizontal: AppDims.w24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: AppDims.h30),
                  Icon(Icons.mark_email_read_rounded,
                      size: AppDims.r60, color: AppColors.primaryClassic),
                  SizedBox(height: AppDims.h24),
                  Text(
                    "Verifikasi Email",
                    style: TextStyle(
                      color: AppColors.textWhite,
                      fontSize: AppDims.sp24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: AppDims.h12),
                  Text(
                    "Masukkan kode OTP yang dikirim ke",
                    style: TextStyle(
                      color: AppColors.textSecondary,
                      fontSize: AppDims.sp14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: AppDims.h4),
                  Text(
                    widget.email,
                    style: TextStyle(
                      color: AppColors.primaryClassic,
                      fontSize: AppDims.sp14,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: AppDims.h30),
                  OtpInputRow(controllers: _controllers, focusNodes: _focusNodes),
                  SizedBox(height: AppDims.h30),
                  SizedBox(
                    width: double.infinity,
                    height: AppDims.h50,
                    child: ElevatedButton(
                      onPressed: isLoading
                          ? null
                          : () {
                              if (_otpCode.length == 6) {
                                context.read<OtpBloc>().add(
                                      OtpEvent.verify(
                                        email: widget.email,
                                        code: _otpCode,
                                      ),
                                    );
                              }
                            },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primaryClassic,
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(AppDims.r24),
                        ),
                      ),
                      child: isLoading
                          ? SizedBox(
                              width: AppDims.r24,
                              height: AppDims.r24,
                              child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                  color: AppColors.textWhite),
                            )
                          : Text(
                              "Verifikasi",
                              style: TextStyle(
                                color: AppColors.textWhite,
                                fontSize: AppDims.sp16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                    ),
                  ),
                  SizedBox(height: AppDims.h16),
                  TextButton(
                    onPressed: isLoading
                        ? null
                        : () {
                            context.read<OtpBloc>().add(
                                  OtpEvent.generate(email: widget.email),
                                );
                          },
                    child: Text(
                      "Kirim Ulang Kode OTP",
                      style: TextStyle(
                        color: AppColors.textSecondary,
                        fontSize: AppDims.sp14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
