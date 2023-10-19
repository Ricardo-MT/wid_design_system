import 'package:flutter/material.dart';
import 'package:wid_design_system/src/theme/palette.dart';

/// Custom theme for Wid Design System
class WidTimePickerTheme {
  /// Light theme implementation
  static TimePickerThemeData get timePickerLightTheme {
    return TimePickerThemeData(
      dialHandColor: WidAppColors.primary,
      dialTextColor: WidAppColors.black,
      dayPeriodColor: WidAppColors.n300,
      hourMinuteColor: WidAppColors.n300,
      dialBackgroundColor: WidAppColors.n300,
      hourMinuteTextColor: WidAppColors.primary,
      dayPeriodBorderSide: BorderSide.none,
    );
  }

  /// Dark theme implementation
  static TimePickerThemeData get timePickerDarkTheme {
    return TimePickerThemeData(
      dialHandColor: WidAppColors.primary,
      dialTextColor: WidAppColors.white,
      dayPeriodColor: WidAppColors.n600,
      hourMinuteColor: WidAppColors.n600,
      dialBackgroundColor: WidAppColors.n600,
      hourMinuteTextColor: WidAppColors.primary,
      dayPeriodBorderSide: BorderSide.none,
    );
  }
}
