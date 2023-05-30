import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wid_design_system/src/theme/palette.dart';
import 'package:wid_design_system/src/theme/text.dart';

/// Custom theme for Wid Design System
abstract class WidAppTheme {
  /// Light theme implementation
  static ThemeData get light {
    return ThemeData(
      fontFamily: 'Quicksand',
      splashColor: WidAppColors.grey1,
      scaffoldBackgroundColor: Colors.white,
      brightness: Brightness.light,
      primaryColor: WidAppColors.primary,
      textTheme: textTheme,
      iconTheme: iconTheme,
      progressIndicatorTheme: progressIndicatorTheme,
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: WidAppColors.yellow,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light,
        ),
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: WidAppColors.yellow,
        unselectedItemColor: WidAppColors.grey1,
        landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
        showUnselectedLabels: false,
      ),
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: Colors.transparent,
      ),
      colorScheme: lightColorScheme
          .copyWith(background: Colors.white)
          .copyWith(error: WidAppColors.error),
    );
  }

  /// Dark theme implementation
  static ThemeData get dark {
    return ThemeData(
      fontFamily: 'Quicksand',
      splashColor: WidAppColors.grey1,
      scaffoldBackgroundColor: WidAppColors.black,
      brightness: Brightness.dark,
      primaryColor: WidAppColors.primary,
      textTheme: textTheme,
      iconTheme: iconTheme,
      progressIndicatorTheme: progressIndicatorTheme,
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: WidAppColors.yellow,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: WidAppColors.black,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
        ),
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: WidAppColors.yellow,
        unselectedItemColor: WidAppColors.grey1,
        landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
        showUnselectedLabels: false,
      ),
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: Colors.transparent,
      ),
      colorScheme: darkColorScheme
          .copyWith(background: Colors.white)
          .copyWith(error: WidAppColors.error),
    );
  }

  /// Custom text theme
  static TextTheme get textTheme {
    return Typography.blackCupertino
        .copyWith(
          displayLarge: WidTextStyle.headerStyles,
          displayMedium: WidTextStyle.headerStyles.copyWith(fontSize: 20),
          displaySmall: WidTextStyle.headerStyles.copyWith(fontSize: 18),
          headlineLarge: WidTextStyle.headerStyles,
          headlineMedium: WidTextStyle.headerStyles.copyWith(fontSize: 16),
          headlineSmall: WidTextStyle.headerStyles.copyWith(fontSize: 14),
          titleLarge: WidTextStyle.headerStyles.copyWith(fontSize: 12),
          bodyLarge: WidTextStyle.bodyStyles,
          bodyMedium: WidTextStyle.bodyStyles.copyWith(fontSize: 14),
          bodySmall: WidTextStyle.bodyStyles.copyWith(fontSize: 12),
          labelLarge: WidTextStyle.buttonTextStyles,
          labelMedium: WidTextStyle.buttonTextStyles.copyWith(fontSize: 14),
          labelSmall: WidTextStyle.buttonTextStyles.copyWith(fontSize: 12),
        )
        .apply(
          // bodyColor: WidAppColors.NEGRO,
          // displayColor: WidAppColors.NEGRO,
          fontFamily: 'Quicksand',
        );
  }

  /// Custom light color theme
  static ColorScheme get lightColorScheme {
    return ThemeData.light().colorScheme.copyWith(
          primary: WidAppColors.yellow,
          onPrimary: WidAppColors.black,
          secondary: WidAppColors.grey1,
          onSecondary: WidAppColors.black,
          error: WidAppColors.error,
          tertiary: WidAppColors.grey2,
          brightness: Brightness.light,
        );
  }

  /// Custom dark color theme
  static ColorScheme get darkColorScheme {
    return ThemeData.dark().colorScheme.copyWith(
          primary: WidAppColors.black,
          onPrimary: WidAppColors.yellow,
          secondary: WidAppColors.black,
          onSecondary: WidAppColors.grey1,
          error: WidAppColors.error,
          tertiary: WidAppColors.grey2,
          brightness: Brightness.dark,
        );
  }

  /// Custom theme for Icons
  static IconThemeData get iconTheme {
    return const IconThemeData(
      color: WidAppColors.yellow,
    );
  }

  /// Custom theme for progress indicator
  static ProgressIndicatorThemeData get progressIndicatorTheme {
    return const ProgressIndicatorThemeData(color: Colors.white);
  }
}
