import 'package:flutter/material.dart';
import 'package:wid_design_system/wid_design_system.dart';

/// BottomSheet theme implementation
class WidBottomSheetTheme {
  /// Custom light theme
  static BottomSheetThemeData get lightBottomSheetTheme {
    return const BottomSheetThemeData(
      backgroundColor: WidAppColors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
      ),
    );
  }

  /// Custom dark theme
  static BottomSheetThemeData get darkBottomSheetTheme {
    return const BottomSheetThemeData(
      backgroundColor: WidAppColors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
      ),
    );
  }
}
