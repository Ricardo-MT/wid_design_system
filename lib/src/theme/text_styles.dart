import 'package:flutter/cupertino.dart';

/// Class for managing the text styles used in Wid Design System
abstract class WidTextStyle {
  /// Text styles for labels
  static const TextStyle labelStyles = TextStyle(
    fontFamily: 'Quicksand',
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  /// Text styles for input fields
  static const TextStyle inputStyles = TextStyle(
    fontFamily: 'Quicksand',
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  /// Text styles for button labels
  static const TextStyle buttonTextStyles = TextStyle(
    fontFamily: 'Quicksand',
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );

  /// Text styles for header-like texts
  static const TextStyle headerStyles = TextStyle(
    fontFamily: 'Quicksand',
    fontSize: 24,
    fontWeight: FontWeight.w700,
  );

  /// Text styles for header-like texts
  static const TextStyle bodyStyles = TextStyle(
    fontFamily: 'Quicksand',
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  /// Default text styles
  static const TextStyle defaultStyles = TextStyle(
    fontFamily: 'Quicksand',
    fontWeight: FontWeight.w400,
  );
}
