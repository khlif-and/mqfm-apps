import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GuideTourManager {
  static final Set<String> _pendingKeys = {};
  static bool _isShowing = false;
  static const String _disableAllToursKey = 'tours_disabled_all';

  static Future<bool> isAllToursDisabled() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_disableAllToursKey) ?? false;
  }

  static Future<void> disableAllTours() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_disableAllToursKey, true);
  }

  static Future<void> enableAllTours() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_disableAllToursKey);
  }

  static Future<void> showTourIfNeeded({
    required BuildContext context,
    required List<TargetFocus> targets,
    required String tourKey,
  }) async {
    if (_pendingKeys.contains(tourKey)) return;
    if (_isShowing) return;

    final disabled = await isAllToursDisabled();
    if (disabled) return;

    _pendingKeys.add(tourKey);

    final prefs = await SharedPreferences.getInstance();
    final alreadyShown = prefs.getBool(tourKey) ?? false;

    if (alreadyShown) {
      _pendingKeys.remove(tourKey);
      return;
    }
    if (!context.mounted) {
      _pendingKeys.remove(tourKey);
      return;
    }

    _isShowing = true;
    await prefs.setBool(tourKey, true);
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
      onFinish: () {
        _pendingKeys.remove(tourKey);
        _isShowing = false;
      },
      onSkip: () {
        _pendingKeys.remove(tourKey);
        _isShowing = false;
        return true;
      },
    ).show(context: context);
  }

  static Future<void> resetTour(String tourKey) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(tourKey);
  }

  static Future<void> resetAllTours() async {
    final prefs = await SharedPreferences.getInstance();
    final keys = prefs.getKeys();
    for (final key in keys) {
      if (key.contains('tour_shown') || key.contains('tour')) {
        await prefs.remove(key);
      }
    }
  }
}
