import 'package:mqfm_apps/core/utils/helpers/regex_helper.dart';

class Validators {
  Validators._();

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email tidak boleh kosong';
    }
    final bool emailValid = RegexHelper.emailRegex.hasMatch(value);

    if (!emailValid) {
      return 'Masukkan format email yang valid';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password tidak boleh kosong';
    }
    if (value.length < 6) {
      return 'Password minimal 6 karakter';
    }
    return null;
  }
}
