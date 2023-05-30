import 'package:flutter/material.dart';

final Map<int, Color> _yellow = {
  50: const Color(0xFFFFF9E3),
  100: const Color(0xFFFFEFB9),
  200: const Color(0xFFFFE48A),
  300: const Color(0xFFFFD95B),
  400: const Color(0xFFFFD137),
  500: WidAppColors.yellow,
  600: const Color(0xFFFFC312),
  700: const Color(0xFFFFBC0E),
  800: const Color(0xFFFFB50B),
  900: const Color(0xFFFFA906),
};

/// Color palette for Wid Design System
class WidAppColors {
  /// Color for success/completion feedback
  static const Color success = Color.fromARGB(255, 53, 191, 46);

  /// Color for info/warning feedback
  static const Color info = Color(0xFFFFC914);

  /// Color for error/alert feedback
  static const Color error = Color(0xFFFB2346);

  /// Custom yellow color
  static const Color yellow = Color(0xFFFFC914);

  /// Custom white color
  static const Color white = Color(0xFFFFFFFF);

  /// Custom black color
  static const Color black = Color(0xFF1C1C1C);

  /// Custom grey color (shade 0)
  static const Color grey0 = Color(0xFF707070);

  /// Custom grey color (shade 1)
  static const Color grey1 = Color(0xFF7B7B7B);

  /// Custom grey color (shade 2)
  static const Color grey2 = Color(0xFFC7C7C7);

  /// Custom grey color (shade 3)
  static const Color grey3 = Color(0xFFF5F5F5);

  /// Background color
  static const Color background = white;

  /// Primary color
  static MaterialColor primary =
      MaterialColor(WidAppColors.yellow.value, _yellow);
}
