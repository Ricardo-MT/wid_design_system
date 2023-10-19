import 'package:flutter/material.dart';
import 'package:wid_design_system/src/theme/palette.dart';

/// Custom theme for Wid Design System
class WidDatePickerThemes {
  /// Light theme implementation
  static DatePickerThemeData get datePickerLightTheme {
    return DatePickerThemeData(
      headerForegroundColor: WidAppColors.light,
      headerBackgroundColor: WidAppColors.primary,
      todayBackgroundColor: const MaterialStatePropertyAll(Colors.transparent),
      todayForegroundColor: MaterialStatePropertyAll(WidAppColors.primary),
      dayBackgroundColor: MaterialStateColor.resolveWith((states) {
        if (states.contains(MaterialState.selected)) {
          return WidAppColors.primary;
        }
        return Colors.transparent;
      }),
    );
  }

  /// Dark theme implementation
  static DatePickerThemeData get datePickerDarkTheme {
    return DatePickerThemeData(
      headerForegroundColor: WidAppColors.light,
      headerBackgroundColor: WidAppColors.n800,
      todayBackgroundColor: const MaterialStatePropertyAll(Colors.transparent),
      todayForegroundColor: MaterialStatePropertyAll(WidAppColors.primary),
      dayBackgroundColor: MaterialStateColor.resolveWith((states) {
        if (states.contains(MaterialState.selected)) {
          return WidAppColors.primary;
        }
        return Colors.transparent;
      }),
    );
  }
}
