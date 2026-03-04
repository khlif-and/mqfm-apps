import 'dart:io';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mqfm_apps/presentation/atoms/common/image_picker_bottom_sheet.dart';
import 'package:mqfm_apps/presentation/atoms/common/custom_app_bar.dart';
import 'package:mqfm_apps/presentation/logic/profile/edit_profile_logic.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/helpers/message_helper.dart';
import 'package:mqfm_apps/core/utils/manager/user_manager.dart';
import 'package:mqfm_apps/presentation/organisms/profile/edit_profile_form.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final EditProfileLogic logic = EditProfileLogic();
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
    logic.addListener(_onLogicChange);
  }

  void _onLogicChange() {
    if (mounted) {
      if (logic.successMessage != null) {
        MessageHelper.showSuccess(context, logic.successMessage!);
      }
      if (logic.errorMessage != null) {
        MessageHelper.showError(context, logic.errorMessage!);
      }
    }
  }

  Future<void> _pickImage(ImageSource source) async {
    final XFile? image = await _picker.pickImage(
      source: source,
      maxWidth: 512,
      maxHeight: 512,
      imageQuality: 80,
    );
    if (image != null) {
      setState(() {
        _selectedImage = File(image.path);
      });
    }
  }

  void _showImageSourceActionSheet(BuildContext context) {
    ImagePickerBottomSheet.show(context, onImageSourceSelected: _pickImage);
  }

  Future<void> _handleSave() async {
    final username = _usernameController.text.trim();
    final email = _emailController.text.trim();
    final success = await logic.updateProfile(
      UserManager.instance.currentUser?.id ?? 0,
      username: username.isNotEmpty ? username : null,
      email: email.isNotEmpty ? email : null,
      profilePicture: _selectedImage,
    );
    if (success && mounted) {
      context.pop();
    }
  }

  @override
  void dispose() {
    logic.removeListener(_onLogicChange);
    logic.dispose();
    _usernameController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final user = UserManager.instance.currentUser;

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: const CustomAppBar(title: "Edit Profil"),
      body: ListenableBuilder(
        listenable: logic,
        builder: (context, child) {
          return EditProfileForm(
            user: user,
            logic: logic,
            usernameController: _usernameController,
            emailController: _emailController,
            selectedImage: _selectedImage,
            onPickImage: () => _showImageSourceActionSheet(context),
            onSave: _handleSave,
          );
        },
      ),
    );
  }
}
