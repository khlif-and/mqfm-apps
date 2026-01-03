import 'package:flutter/material.dart';

class PlayerBackground extends StatelessWidget {
  final Widget child;

  const PlayerBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFFB94E4E), Color(0xFF682A2A), Color(0xFF1E1C1C)],
        ),
      ),
      child: SafeArea(child: child),
    );
  }
}
