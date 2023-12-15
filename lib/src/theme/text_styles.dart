import 'package:flutter/cupertino.dart';

/// Class for managing the text styles used in Wid Design System
abstract class WidTextStyle {
  /// Text styles for labels
  static const TextStyle labelStyles = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  /// Text styles for input fields
  static const TextStyle inputStyles = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  /// Text styles for button labels
  static const TextStyle buttonTextStyles = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );

  /// Text styles for header-like texts
  static const TextStyle headerStyles = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
  );

  /// Text styles for header-like texts
  static const TextStyle bodyStyles = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  /// Default text styles
  static const TextStyle defaultStyles = TextStyle(
    fontWeight: FontWeight.w400,
  );
}
