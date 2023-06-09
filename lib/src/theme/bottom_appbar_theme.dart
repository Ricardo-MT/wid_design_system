import 'package:flutter/material.dart';
import 'package:wid_design_system/wid_design_system.dart';

/// BottomAppbar theme implementation
class WidBottomAppbarTheme {
  /// Custom light theme
  static BottomAppBarTheme get lightBottomAppbarTheme {
    return const BottomAppBarTheme(
      color: WidAppColors.white,
      surfaceTintColor: WidAppColors.black,
      shadowColor: WidAppColors.black,
    );
  }

  /// Custom dark theme
  static BottomAppBarTheme get darkBottomAppbarTheme {
    return const BottomAppBarTheme(
      color: WidAppColors.black,
      surfaceTintColor: WidAppColors.white,
      shadowColor: WidAppColors.white,
    );
  }
}
