import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiConstants {
  static String get baseUrl => dotenv.env['BASE_URL'] ?? '';
  static String get baseUrlScraping => dotenv.env['BASE_URL_SCRAPING'] ?? '';

  static String buildMediaUrl(String? relativePath) {
    if (relativePath == null || relativePath.isEmpty) return '';
    if (relativePath.startsWith('http')) return relativePath;
    return '$baseUrl/$relativePath';
  }
}
