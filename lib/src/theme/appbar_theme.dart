import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wid_design_system/wid_design_system.dart';

/// Appbar theme implementation
class WidAppbarTheme {
  /// Custom light appbar theme
  static AppBarTheme get lightAppbarTheme {
    return const AppBarTheme(
      foregroundColor: WidAppColors.black,
      backgroundColor: WidAppColors.white,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
      ),
      elevation: 0,
      iconTheme: IconThemeData(
        color: WidAppColors.black,
      ),
    );
  }

  /// Custom dark appbar theme
  static AppBarTheme get darkAppbarTheme {
    return const AppBarTheme(
      foregroundColor: WidAppColors.light,
      backgroundColor: WidAppColors.black,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
      ),
      elevation: 0,
      iconTheme: IconThemeData(
        color: WidAppColors.white,
      ),
    );
  }
}
