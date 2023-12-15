import 'package:flutter/material.dart';
import 'package:wid_design_system/src/theme/palette.dart';

/// Custom theme for Wid Design System
class WidTimePickerTheme {
  /// Default constructor
  WidTimePickerTheme({
    MaterialColor? primaryColor,
  }) {
    _primaryColor = primaryColor ?? WidAppColors.primary;
  }

  late final MaterialColor _primaryColor;

  /// Light theme implementation
  TimePickerThemeData get timePickerLightTheme {
    return TimePickerThemeData(
      dialHandColor: _primaryColor,
      dialTextColor: WidAppColors.black,
      dayPeriodColor: WidAppColors.n300,
      hourMinuteColor: WidAppColors.n300,
      dialBackgroundColor: WidAppColors.n300,
      hourMinuteTextColor: _primaryColor,
      dayPeriodBorderSide: BorderSide.none,
    );
  }

  /// Dark theme implementation
  TimePickerThemeData get timePickerDarkTheme {
    return TimePickerThemeData(
      dialHandColor: _primaryColor,
      dialTextColor: WidAppColors.white,
      dayPeriodColor: WidAppColors.n600,
      hourMinuteColor: WidAppColors.n600,
      dialBackgroundColor: WidAppColors.n600,
      hourMinuteTextColor: _primaryColor,
      dayPeriodBorderSide: BorderSide.none,
    );
  }
}
