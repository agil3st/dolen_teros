import 'package:flutter/material.dart';

class ColorLibrary {

  static const Color jazzyJade = Color(0xFF51C9C2);
  static const Color ambrosiaCake = Color(0xFFEEE9CF);
  static const Color whiteWash = Color(0xFFFCFFF5);
  static const Color cherryBlossomPink = Color(0xFFFEBAC6);

  static const Color dark = Color(0xFF333333);
  static const Color light = Color(0xFFFCFFF5);
  static const Color yellow = Color(0xFFFCaa00);
  static const Color secondary = Color(0xFF968706);
  static const Color hotPink = Color(0xFFCD314C);
  static const Color cherryRed = Color(0xFFCD314C);

  static final LinearGradient baseGradient = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [jazzyJade, ambrosiaCake, cherryBlossomPink],
      stops: [-0.5, 0.7, 1]
  );

}