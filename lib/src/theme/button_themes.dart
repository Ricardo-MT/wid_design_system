import 'package:flutter/material.dart';
import 'package:wid_design_system/wid_design_system.dart';

/// Theme properties for buttons
class WidButtonThemes {
  /// Elevated button for dark theme
  static ElevatedButtonThemeData get elevatedButtonDarkTheme {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        padding: _buttonsPadding,
        backgroundColor: WidAppColors.light,
        foregroundColor: WidAppColors.dark,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(WidAppDimensions.borderRadiusControllers),
          ),
        ),
      ),
    );
  }

  /// Elevated button for dark theme
  static ElevatedButtonThemeData get elevatedButtonLightTheme {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        padding: _buttonsPadding,
        backgroundColor: WidAppColors.dark,
        foregroundColor: WidAppColors.light,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(WidAppDimensions.borderRadiusControllers),
          ),
        ),
      ),
    );
  }

  /// Outlined button for dark theme
  static OutlinedButtonThemeData get outlinedButtonDarkTheme {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        padding: _buttonsPadding,
        side: BorderSide(
          color: WidAppColors.light,
          width: WidAppDimensions.borderWidth,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(WidAppDimensions.borderRadiusControllers),
          ),
        ),
      ),
    );
  }

  /// Outlined button for light theme
  static OutlinedButtonThemeData get outlinedButtonLightTheme {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        padding: _buttonsPadding,
        side: BorderSide(
          color: WidAppColors.dark,
          width: WidAppDimensions.borderWidth,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(WidAppDimensions.borderRadiusControllers),
          ),
        ),
      ),
    );
  }

  /// Text button theme for light theme
  static TextButtonThemeData get textButtonLightTheme {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
        padding: _buttonsPadding,
      ),
    );
  }

  /// Text button theme for dark theme
  static TextButtonThemeData get textButtonDarkTheme {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
        padding: _buttonsPadding,
      ),
    );
  }
}

const _buttonsPadding = EdgeInsets.symmetric(horizontal: 16, vertical: 10);
