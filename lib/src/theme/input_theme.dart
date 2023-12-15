import 'package:flutter/material.dart';
import 'package:wid_design_system/wid_design_system.dart';

/// Input theme implementation
class WidInputTheme {
  /// Default constructor
  WidInputTheme();

  /// Text input decoration for light theme
  InputDecorationTheme get inputDecorationLightTheme {
    return InputDecorationTheme(
      isDense: true,
      isCollapsed: true,
      contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: WidAppColors.n300,
          width: WidAppDimensions.borderWidth,
        ),
        borderRadius:
            BorderRadius.circular(WidAppDimensions.borderRadiusControllers),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius:
            BorderRadius.circular(WidAppDimensions.borderRadiusControllers),
        borderSide: BorderSide(
          color: WidAppColors.error,
          width: WidAppDimensions.borderWidth,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius:
            BorderRadius.circular(WidAppDimensions.borderRadiusControllers),
        borderSide: BorderSide(
          color: WidAppColors.n300,
          width: WidAppDimensions.borderWidth,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius:
            BorderRadius.circular(WidAppDimensions.borderRadiusControllers),
        borderSide: BorderSide(
          color: WidAppColors.n300,
          width: WidAppDimensions.borderWidth,
        ),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius:
            BorderRadius.circular(WidAppDimensions.borderRadiusControllers),
        borderSide: BorderSide(
          color: WidAppColors.n100,
          width: WidAppDimensions.borderWidth,
        ),
      ),
    );
  }

  /// Text input decoration for dark theme
  InputDecorationTheme get inputDecorationDarkTheme {
    return InputDecorationTheme(
      isDense: true,
      isCollapsed: true,
      contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: WidAppColors.n200,
          width: WidAppDimensions.borderWidth,
        ),
        borderRadius:
            BorderRadius.circular(WidAppDimensions.borderRadiusControllers),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius:
            BorderRadius.circular(WidAppDimensions.borderRadiusControllers),
        borderSide: BorderSide(
          color: WidAppColors.error,
          width: WidAppDimensions.borderWidth,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius:
            BorderRadius.circular(WidAppDimensions.borderRadiusControllers),
        borderSide: BorderSide(
          color: WidAppColors.n200,
          width: WidAppDimensions.borderWidth,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius:
            BorderRadius.circular(WidAppDimensions.borderRadiusControllers),
        borderSide: BorderSide(
          color: WidAppColors.n200,
          width: WidAppDimensions.borderWidth,
        ),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius:
            BorderRadius.circular(WidAppDimensions.borderRadiusControllers),
        borderSide: BorderSide(
          color: WidAppColors.n800,
          width: WidAppDimensions.borderWidth,
        ),
      ),
    );
  }
}
