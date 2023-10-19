import 'package:flutter/material.dart';
import 'package:wid_design_system/wid_design_system.dart';

/// Theme properties for buttons
class WidButtonThemes {
  /// Elevated button for dark theme
  static ElevatedButtonThemeData get elevatedButtonDarkTheme {
    return ElevatedButtonThemeData(
      style: ButtonStyle(
        padding: MaterialStateProperty.all(_buttonsPadding),
        backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
          if (states.contains(MaterialState.disabled)) {
            return WidAppColors.n300;
          }
          return WidAppColors.primary.shade600;
        }),
        foregroundColor: MaterialStateProperty.resolveWith<Color>((states) {
          if (states.contains(MaterialState.disabled)) {
            return WidAppColors.n400;
          }
          return WidAppColors.light;
        }),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(WidAppDimensions.borderRadiusControllers),
            ),
          ),
        ),
        textStyle: MaterialStateProperty.all(_textStyles),
      ),
    );
  }

  /// Elevated button for light theme
  static ElevatedButtonThemeData get elevatedButtonLightTheme {
    return ElevatedButtonThemeData(
      style: ButtonStyle(
        padding: MaterialStateProperty.all(_buttonsPadding),
        backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
          if (states.contains(MaterialState.disabled)) {
            return WidAppColors.n300;
          }
          return WidAppColors.primary.shade600;
        }),
        foregroundColor: MaterialStateProperty.resolveWith<Color>((states) {
          if (states.contains(MaterialState.disabled)) {
            return WidAppColors.n400;
          }
          return WidAppColors.light;
        }),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(WidAppDimensions.borderRadiusControllers),
            ),
          ),
        ),
        textStyle: MaterialStateProperty.all(_textStyles),
      ),
    );
  }

  /// Outlined button for dark theme
  static OutlinedButtonThemeData get outlinedButtonDarkTheme {
    return OutlinedButtonThemeData(
      style: ButtonStyle(
        padding: MaterialStateProperty.all(_buttonsPadding),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(WidAppDimensions.borderRadiusControllers),
            ),
          ),
        ),
        side: MaterialStateProperty.resolveWith<BorderSide>((states) {
          if (states.contains(MaterialState.disabled)) {
            return BorderSide(
              color: WidAppColors.n600,
              width: WidAppDimensions.borderWidth,
            );
          }
          return BorderSide(
            color: WidAppColors.primary,
            width: WidAppDimensions.borderWidth,
          );
        }),
        foregroundColor: MaterialStateProperty.resolveWith<Color>((states) {
          if (states.contains(MaterialState.disabled)) {
            return WidAppColors.n600;
          }
          return WidAppColors.primary;
        }),
        textStyle: MaterialStateProperty.all(_textStyles),
      ),
    );
  }

  /// Outlined button for light theme
  static OutlinedButtonThemeData get outlinedButtonLightTheme {
    return OutlinedButtonThemeData(
      style: ButtonStyle(
        padding: MaterialStateProperty.all(_buttonsPadding),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(WidAppDimensions.borderRadiusControllers),
            ),
          ),
        ),
        side: MaterialStateProperty.resolveWith<BorderSide>((states) {
          if (states.contains(MaterialState.disabled)) {
            return BorderSide(
              color: WidAppColors.n500,
              width: WidAppDimensions.borderWidth,
            );
          }
          return BorderSide(
            color: WidAppColors.primary,
            width: WidAppDimensions.borderWidth,
          );
        }),
        foregroundColor: MaterialStateProperty.resolveWith<Color>((states) {
          if (states.contains(MaterialState.disabled)) {
            return WidAppColors.n500;
          }
          return WidAppColors.primary;
        }),
        textStyle: MaterialStateProperty.all(_textStyles),
      ),
    );
  }

  /// Text button theme for light theme
  static TextButtonThemeData get textButtonLightTheme {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
        padding: _buttonsPadding,
        foregroundColor: WidAppColors.primary,
        textStyle: _textStyles,
      ),
    );
  }

  /// Text button theme for dark theme
  static TextButtonThemeData get textButtonDarkTheme {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
        padding: _buttonsPadding,
        foregroundColor: WidAppColors.primary,
        textStyle: _textStyles,
      ),
    );
  }
}

const _buttonsPadding = EdgeInsets.symmetric(horizontal: 16, vertical: 10);
const _textStyles = TextStyle(
  fontWeight: FontWeight.w600,
  fontFamily: 'Quicksand',
);
