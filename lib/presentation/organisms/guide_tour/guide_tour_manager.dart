import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GuideTourManager {
  static Future<void> showTourIfNeeded({
    required BuildContext context,
    required List<TargetFocus> targets,
    required String tourKey,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    final alreadyShown = prefs.getBool(tourKey) ?? false;

    if (alreadyShown) return;
    if (!context.mounted) return;

    TutorialCoachMark(
      targets: targets,
      colorShadow: Colors.black,
      opacityShadow: 0.85,
      textSkip: 'LEWATI',
      textStyleSkip: const TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
      paddingFocus: 10,
      focusAnimationDuration: const Duration(milliseconds: 400),
      pulseAnimationDuration: const Duration(milliseconds: 700),
      onFinish: () async {
        await prefs.setBool(tourKey, true);
      },
      onSkip: () {
        prefs.setBool(tourKey, true);
        return true;
      },
    ).show(context: context);
  }

  static Future<void> resetTour(String tourKey) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(tourKey);
  }
}
