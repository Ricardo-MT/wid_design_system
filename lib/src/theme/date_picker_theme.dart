import 'package:flutter/material.dart';
import 'package:wid_design_system/src/theme/palette.dart';

/// Custom theme for Wid Design System
class WidDatePickerThemes {
  /// Default constructor
  WidDatePickerThemes({
    MaterialColor? primaryColor,
  }) {
    _primaryColor = primaryColor ?? WidAppColors.primary;
  }

  late final MaterialColor _primaryColor;

  /// Light theme implementation
  DatePickerThemeData get datePickerLightTheme {
    return DatePickerThemeData(
      headerForegroundColor: WidAppColors.light,
      headerBackgroundColor: _primaryColor,
      todayBackgroundColor: const MaterialStatePropertyAll(Colors.transparent),
      todayForegroundColor: MaterialStatePropertyAll(_primaryColor),
      dayBackgroundColor: MaterialStateColor.resolveWith((states) {
        if (states.contains(MaterialState.selected)) {
          return _primaryColor;
        }
        return Colors.transparent;
      }),
    );
  }

  /// Dark theme implementation
  DatePickerThemeData get datePickerDarkTheme {
    return DatePickerThemeData(
      headerForegroundColor: WidAppColors.light,
      headerBackgroundColor: WidAppColors.n800,
      todayBackgroundColor: const MaterialStatePropertyAll(Colors.transparent),
      todayForegroundColor: MaterialStatePropertyAll(_primaryColor),
      dayBackgroundColor: MaterialStateColor.resolveWith((states) {
        if (states.contains(MaterialState.selected)) {
          return _primaryColor;
        }
        return Colors.transparent;
      }),
    );
  }
}
