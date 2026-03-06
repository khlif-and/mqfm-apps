import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mqfm_apps/core/di/injection.dart';
import 'package:mqfm_apps/core/manager/user_manager.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_strings.dart';
import 'package:mqfm_apps/core/utils/helpers/message_helper.dart';
import 'package:mqfm_apps/features/auth/presentation/bloc/profile_bloc/profile_bloc.dart';
import 'package:mqfm_apps/features/auth/presentation/bloc/profile_bloc/profile_event.dart';
import 'package:mqfm_apps/features/auth/presentation/bloc/profile_bloc/profile_state.dart';
import 'package:mqfm_apps/presentation/atoms/common/custom_app_bar.dart';
import 'package:mqfm_apps/presentation/atoms/common/image_picker_bottom_sheet.dart';
import 'package:mqfm_apps/presentation/organisms/profile/edit_profile_form.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  File? _selectedImage;
  final ImagePicker _picker = ImagePicker();

  @override
  void initState() {
    super.initState();
    final user = UserManager.instance.currentUser;
    if (user != null) {
      _usernameController.text = user.username;
      _emailController.text = user.email;
    }
  }

  Future<void> _pickImage(ImageSource source) async {
    final XFile? image = await _picker.pickImage(source: source, maxWidth: 512, maxHeight: 512, imageQuality: 80);
    if (image != null) setState(() => _selectedImage = File(image.path));
  }

  void _showImageSourceActionSheet(BuildContext context) {
    ImagePickerBottomSheet.show(context, onImageSourceSelected: _pickImage);
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ProfileBloc>(),
      child: BlocConsumer<ProfileBloc, ProfileState>(
        listener: (context, state) {
          state.whenOrNull(
            updated: (user) {
              MessageHelper.showSuccess(context, AppStrings.updateSuccess);
              context.pop();
            },
            error: (message) => MessageHelper.showError(context, message),
          );
        },
        builder: (context, state) {
          final isLoading = state is ProfileLoading;
          final user = UserManager.instance.currentUser;
          return Scaffold(
            backgroundColor: AppColors.background,
            appBar: const CustomAppBar(title: AppStrings.editProfile),
            body: EditProfileForm(
              user: user,
              isLoading: isLoading,
              usernameController: _usernameController,
              emailController: _emailController,
              selectedImage: _selectedImage,
              onPickImage: () => _showImageSourceActionSheet(context),
              onSave: () {
                final username = _usernameController.text.trim();
                final email = _emailController.text.trim();
                context.read<ProfileBloc>().add(ProfileEvent.update(
                  userId: UserManager.instance.currentUser?.id ?? 0,
                  username: username.isNotEmpty ? username : null,
                  email: email.isNotEmpty ? email : null,
                  profilePicture: _selectedImage,
                ));
              },
            ),
          );
        },
      ),
    );
  }
}

