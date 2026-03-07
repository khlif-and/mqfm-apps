import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';

class ImagePickerBottomSheet extends StatelessWidget {
  final Function(ImageSource) onImageSourceSelected;

  const ImagePickerBottomSheet({
    super.key,
    required this.onImageSourceSelected,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: AppDims.h24, horizontal: AppDims.w16),
        child: Wrap(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: AppDims.h16, left: AppDims.w16),
              child: Text(
                'Pilih Gambar Profil',
                style: TextStyle(
                  color: AppColors.textWhite,
                  fontSize: AppDims.sp18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(
                horizontal: AppDims.w16,
                vertical: AppDims.h8,
              ),
              leading: Container(
                padding: EdgeInsets.all(AppDims.r10),
                decoration: BoxDecoration(
                  color: AppColors.primary.withOpacity(0.15),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.photo_library,
                  color: AppColors.primary,
                ),
              ),
              title: Text(
                'Galeri',
                style: TextStyle(color: AppColors.textWhite, fontSize: AppDims.sp16),
              ),
              subtitle: Text(
                'Pilih foto dari perangkat',
                style: TextStyle(color: AppColors.textMuted, fontSize: AppDims.sp12),
              ),
              onTap: () {
                Navigator.of(context).pop();
                onImageSourceSelected(ImageSource.gallery);
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(
                horizontal: AppDims.w16,
                vertical: AppDims.h8,
              ),
              leading: Container(
                padding: EdgeInsets.all(AppDims.r10),
                decoration: BoxDecoration(
                  color: AppColors.primary.withOpacity(0.15),
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.photo_camera, color: AppColors.primary),
              ),
              title: Text(
                'Kamera',
                style: TextStyle(color: AppColors.textWhite, fontSize: AppDims.sp16),
              ),
              subtitle: Text(
                'Ambil foto baru',
                style: TextStyle(color: AppColors.textMuted, fontSize: AppDims.sp12),
              ),
              onTap: () {
                Navigator.of(context).pop();
                onImageSourceSelected(ImageSource.camera);
              },
            ),
          ],
        ),
      ),
    );
  }
}
