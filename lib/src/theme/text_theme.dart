import 'package:flutter/material.dart';
import 'package:wid_design_system/wid_design_system.dart';

/// Text theme implementation
class WidTextTheme {
  /// Custom light text theme
  static TextTheme get lightTextTheme {
    return Typography.blackCupertino.merge(defaultTextTheme).apply(
          // bodyColor: WidAppColors.dark,
          // displayColor: WidAppColors.dark,
          fontFamily: 'Quicksand',
        );
  }

  /// Custom dark text theme
  static TextTheme get darkTextTheme {
    return Typography.whiteCupertino.merge(defaultTextTheme).apply(
          // bodyColor: WidAppColors.dark,
          // displayColor: WidAppColors.dark,
          fontFamily: 'Quicksand',
        );
  }

  /// Custom text theme
  static TextTheme get defaultTextTheme {
    return TextTheme(
      displayLarge: WidTextStyle.headerStyles.copyWith(
        fontSize: 38,
      ),

      /// H2
      displayMedium: WidTextStyle.headerStyles.copyWith(fontSize: 32),

      /// H3
      displaySmall: WidTextStyle.headerStyles.copyWith(
        fontSize: 24,
      ),

      /// H3
      headlineLarge: WidTextStyle.headerStyles.copyWith(fontSize: 24),

      /// H4
      headlineMedium: WidTextStyle.headerStyles.copyWith(fontSize: 18),

      /// H5
      headlineSmall: WidTextStyle.headerStyles.copyWith(fontSize: 14),

      /// H3
      titleLarge: WidTextStyle.headerStyles.copyWith(fontSize: 24),
      bodyLarge: WidTextStyle.bodyStyles,
      bodyMedium: WidTextStyle.bodyStyles.copyWith(fontSize: 14),
      bodySmall: WidTextStyle.bodyStyles.copyWith(fontSize: 12),
      labelLarge: WidTextStyle.labelStyles,
      labelMedium: WidTextStyle.labelStyles.copyWith(fontSize: 14),
      labelSmall: WidTextStyle.labelStyles.copyWith(fontSize: 12),
    );
  }
}
