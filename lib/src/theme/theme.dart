import 'package:flutter/material.dart';
import 'package:wid_design_system/src/theme/appbar_theme.dart';
import 'package:wid_design_system/src/theme/bottom_appbar_theme.dart';
import 'package:wid_design_system/src/theme/button_themes.dart';
import 'package:wid_design_system/src/theme/input_theme.dart';
import 'package:wid_design_system/src/theme/palette.dart';
import 'package:wid_design_system/src/theme/text_theme.dart';

/// Custom theme for Wid Design System
abstract class WidAppTheme {
  /// Light theme implementation
  static ThemeData get light {
    return common.copyWith(
      splashColor: WidAppColors.n300,
      scaffoldBackgroundColor: WidAppColors.white,
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: WidAppColors.black,
        selectionColor: WidAppColors.callToAction,
      ),
      brightness: Brightness.light,
      textTheme: WidTextTheme.lightTextTheme,
      elevatedButtonTheme: WidButtonThemes.elevatedButtonLightTheme,
      outlinedButtonTheme: WidButtonThemes.outlinedButtonLightTheme,
      textButtonTheme: WidButtonThemes.textButtonLightTheme,
      inputDecorationTheme: WidInputTheme.inputDecorationLightTheme,
      appBarTheme: WidAppbarTheme.lightAppbarTheme,
      bottomAppBarTheme: WidBottomAppbarTheme.lightBottomAppbarTheme,
      popupMenuTheme: const PopupMenuThemeData(
        color: WidAppColors.white,
      ),
      colorScheme: lightColorScheme,
    );
  }

  /// Dark theme implementation
  static ThemeData get dark {
    return common.copyWith(
      splashColor: WidAppColors.n800,
      scaffoldBackgroundColor: WidAppColors.black,
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: WidAppColors.light,
        selectionColor: WidAppColors.callToAction,
      ),
      brightness: Brightness.dark,
      textTheme: WidTextTheme.darkTextTheme,
      elevatedButtonTheme: WidButtonThemes.elevatedButtonDarkTheme,
      outlinedButtonTheme: WidButtonThemes.outlinedButtonDarkTheme,
      textButtonTheme: WidButtonThemes.textButtonDarkTheme,
      inputDecorationTheme: WidInputTheme.inputDecorationDarkTheme,
      appBarTheme: WidAppbarTheme.darkAppbarTheme,
      bottomAppBarTheme: WidBottomAppbarTheme.darkBottomAppbarTheme,
      popupMenuTheme: const PopupMenuThemeData(
        color: WidAppColors.black,
      ),
      colorScheme: darkColorScheme,
    );
  }

  /// Common theme properties
  static ThemeData get common {
    return ThemeData(
      useMaterial3: false,
      fontFamily: 'Quicksand',
      primaryColor: WidAppColors.primary,
      primarySwatch: WidAppColors.primary,
      iconTheme: iconTheme,
      progressIndicatorTheme: progressIndicatorTheme,
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: WidAppColors.callToAction,
        splashColor: WidAppColors.primary.shade800,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: WidAppColors.callToAction,
        unselectedItemColor: WidAppColors.n700,
        landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
        showUnselectedLabels: true,
      ),
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: Colors.transparent,
      ),
      switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.selected)) {
              return WidAppColors.callToAction;
            }
            return null;
          },
        ),
        trackColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.selected)) {
              return WidAppColors.callToAction.withAlpha(140);
            }
            return null;
          },
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.selected)) {
              return WidAppColors.callToAction;
            }
            return WidAppColors.n600;
          },
        ),
        shape: const ContinuousRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
      ),
      disabledColor: WidAppColors.n600,
    );
  }

  /// Custom light color theme
  static ColorScheme get lightColorScheme {
    return ThemeData.light().colorScheme.copyWith(
          background: WidAppColors.white,
          error: WidAppColors.error,
          primary: WidAppColors.white,
        );
  }

  /// Custom dark color theme
  static ColorScheme get darkColorScheme {
    return ThemeData.dark().colorScheme.copyWith(
          background: WidAppColors.dark,
          error: WidAppColors.error,
          primary: WidAppColors.dark,
        );
  }

  /// Custom theme for Icons
  static IconThemeData get iconTheme {
    return const IconThemeData(
      color: WidAppColors.callToAction,
    );
  }

  /// Custom theme for progress indicator
  static ProgressIndicatorThemeData get progressIndicatorTheme {
    return const ProgressIndicatorThemeData(color: WidAppColors.white);
  }
}
