import 'package:flutter/material.dart';
import 'package:wid_design_system/wid_design_system.dart';

/// Input theme implementation
class WidInputTheme {
  /// Text input decoration for light theme
  static InputDecorationTheme get inputDecorationLightTheme {
    return InputDecorationTheme(
      isDense: true,
      isCollapsed: true,
      contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
      hintStyle: const TextStyle(color: WidAppColors.n600),
      helperStyle: const TextStyle(color: WidAppColors.n600),
      labelStyle: const TextStyle(color: WidAppColors.n800),
      floatingLabelStyle: const TextStyle(color: WidAppColors.n600),
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: WidAppColors.dark,
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
          color: WidAppColors.callToAction,
          width: WidAppDimensions.borderWidth,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius:
            BorderRadius.circular(WidAppDimensions.borderRadiusControllers),
        borderSide: BorderSide(
          color: WidAppColors.dark,
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
  static InputDecorationTheme get inputDecorationDarkTheme {
    return InputDecorationTheme(
      isDense: true,
      isCollapsed: true,
      contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
      hintStyle: const TextStyle(color: WidAppColors.n600),
      helperStyle: const TextStyle(color: WidAppColors.n600),
      labelStyle: const TextStyle(color: WidAppColors.n300),
      floatingLabelStyle: const TextStyle(color: WidAppColors.n700),
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: WidAppColors.light,
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
          color: WidAppColors.callToAction,
          width: WidAppDimensions.borderWidth,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius:
            BorderRadius.circular(WidAppDimensions.borderRadiusControllers),
        borderSide: BorderSide(
          color: WidAppColors.light,
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
