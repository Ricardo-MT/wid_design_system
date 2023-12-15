import 'package:flutter/material.dart';
import 'package:wid_design_system/src/utils/defaults.dart';
import 'package:wid_design_system/wid_design_system.dart';

/// Theme properties for buttons
class WidButtonThemes {
  /// Default constructor
  WidButtonThemes({
    String fontFamily = WidAppDefaults.fontFamily,
    MaterialColor? primaryColor,
  }) {
    _primaryColor = primaryColor ?? WidAppColors.primary;
    _textStyles = TextStyle(
      fontWeight: FontWeight.w600,
      fontFamily: fontFamily,
    );
  }

  late final TextStyle _textStyles;
  late final MaterialColor _primaryColor;

  /// Elevated button for dark theme
  ElevatedButtonThemeData get elevatedButtonDarkTheme {
    return ElevatedButtonThemeData(
      style: ButtonStyle(
        padding: MaterialStateProperty.all(_buttonsPadding),
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
  ElevatedButtonThemeData get elevatedButtonLightTheme {
    return ElevatedButtonThemeData(
      style: ButtonStyle(
        padding: MaterialStateProperty.all(_buttonsPadding),
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
  OutlinedButtonThemeData get outlinedButtonDarkTheme {
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
              width: WidAppDimensions.borderWidth,
            );
          }
          return BorderSide(
            color: _primaryColor,
            width: WidAppDimensions.borderWidth,
          );
        }),
        textStyle: MaterialStateProperty.all(_textStyles),
      ),
    );
  }

  /// Outlined button for light theme
  OutlinedButtonThemeData get outlinedButtonLightTheme {
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
              width: WidAppDimensions.borderWidth,
            );
          }
          return BorderSide(
            color: _primaryColor,
            width: WidAppDimensions.borderWidth,
          );
        }),
        textStyle: MaterialStateProperty.all(_textStyles),
      ),
    );
  }

  /// Text button theme for light theme
  TextButtonThemeData get textButtonLightTheme {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
        padding: _buttonsPadding,
        textStyle: _textStyles,
      ),
    );
  }

  /// Text button theme for dark theme
  TextButtonThemeData get textButtonDarkTheme {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
        padding: _buttonsPadding,
        textStyle: _textStyles,
      ),
    );
  }
}

const _buttonsPadding = EdgeInsets.symmetric(horizontal: 16, vertical: 10);
