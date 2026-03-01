import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mqfm_apps/utils/app_colors.dart';

class ImagePickerBottomSheet extends StatelessWidget {
  final Function(ImageSource) onImageSourceSelected;

  const ImagePickerBottomSheet({
    super.key,
    required this.onImageSourceSelected,
  });

  static void show(
    BuildContext context, {
    required Function(ImageSource) onImageSourceSelected,
  }) {
    showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
      ),
      builder: (BuildContext context) {
        return ImagePickerBottomSheet(
          onImageSourceSelected: onImageSourceSelected,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 16.w),
        child: Wrap(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 16.h, left: 16.w),
              child: Text(
                'Pilih Gambar Profil',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 16.w,
                vertical: 8.h,
              ),
              leading: Container(
                padding: EdgeInsets.all(10.r),
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
                style: TextStyle(color: Colors.white, fontSize: 16.sp),
              ),
              subtitle: Text(
                'Pilih foto dari perangkat',
                style: TextStyle(color: Colors.grey[500], fontSize: 12.sp),
              ),
              onTap: () {
                Navigator.of(context).pop();
                onImageSourceSelected(ImageSource.gallery);
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 16.w,
                vertical: 8.h,
              ),
              leading: Container(
                padding: EdgeInsets.all(10.r),
                decoration: BoxDecoration(
                  color: AppColors.primary.withOpacity(0.15),
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.photo_camera, color: AppColors.primary),
              ),
              title: Text(
                'Kamera',
                style: TextStyle(color: Colors.white, fontSize: 16.sp),
              ),
              subtitle: Text(
                'Ambil foto baru',
                style: TextStyle(color: Colors.grey[500], fontSize: 12.sp),
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
