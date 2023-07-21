import 'package:flutter/material.dart';

class AppTextTheme {
  // placeholder for text themes in the app

  // title text style on light bg
  static const TextStyle textTitleLight =
      TextStyle(fontSize: 18, fontWeight: FontWeight.w700);

  static const TextStyle textSubtitleLight = TextStyle(
      fontSize: 15, fontWeight: FontWeight.w600, color: Colors.blueGrey);
}

class AppTheme {
  // placeholder for UI themes in the app
  static const LinearGradient cardLinearGradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFF8672F3),
        Color(0xFF7763DC),
        Colors.purpleAccent,
        Colors.amber,
      ]);
}
