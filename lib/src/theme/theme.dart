import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wid_design_system/src/theme/appbar_theme.dart';
import 'package:wid_design_system/src/theme/bottom_appbar_theme.dart';
import 'package:wid_design_system/src/theme/bottom_sheet_theme.dart';
import 'package:wid_design_system/src/theme/button_themes.dart';
import 'package:wid_design_system/src/theme/date_picker_theme.dart';
import 'package:wid_design_system/src/theme/input_theme.dart';
import 'package:wid_design_system/src/theme/text_theme.dart';
import 'package:wid_design_system/src/theme/time_picker_theme.dart';
import 'package:wid_design_system/src/utils/defaults.dart';
import 'package:wid_design_system/wid_design_system.dart';

abstract class _WidAppTheme {
  late final ThemeData light;
  late final ThemeData dark;
}

/// Custom theme for Wid Design System
class WidAppTheme extends _WidAppTheme {
  /// Returns a theme based on the provided [primaryColor].
  WidAppTheme({
    MaterialColor? primaryColor,
    String fontFamily = WidAppDefaults.fontFamily,
  }) {
    final theme = WidAppThemePrimary(
      primaryColor: primaryColor,
      fontFamily: fontFamily,
    );
    light = theme.light;
    dark = theme.dark;
  }

  /// Returns a high contrast black and white theme.
  WidAppTheme.fromBlackAndWhite({
    String fontFamily = WidAppDefaults.fontFamily,
  }) {
    final theme = WidAppBlackAndWhiteTheme(
      fontFamily: fontFamily,
    );
    light = theme.light;
    dark = theme.dark;
  }
}

/// Custom theme for Wid Design System
class WidAppThemePrimary extends _WidAppTheme {
  /// Default constructor
  WidAppThemePrimary({
    MaterialColor? primaryColor,
    this.fontFamily = WidAppDefaults.fontFamily,
  }) {
    this.primaryColor = primaryColor ?? WidAppColors.primary;
    textTheme = WidTextTheme(
      fontFamily: fontFamily,
    );
    buttonThemes = WidButtonThemes(
      fontFamily: fontFamily,
      primaryColor: primaryColor,
    );
    datePickerThemes = WidDatePickerThemes(
      primaryColor: primaryColor,
    );
    inputThemes = WidInputTheme();
    timePickerThemes = WidTimePickerTheme(
      primaryColor: primaryColor,
    );
  }

  /// Primary color for the themes
  late final MaterialColor primaryColor;

  /// Font family to use for the text styles
  late final String fontFamily;

  /// Custom text theme
  late final WidTextTheme textTheme;

  /// Custom button themes
  late final WidButtonThemes buttonThemes;

  /// Custom date picker themes
  late final WidDatePickerThemes datePickerThemes;

  /// Custom input themes
  late final WidInputTheme inputThemes;

  /// Custom time picker themes
  late final WidTimePickerTheme timePickerThemes;

  /// Light theme implementation
  late final ThemeData lightTheme = light;

  /// Dark theme implementation
  late final ThemeData darkTheme = dark;

  /// Light theme implementation
  @override
  ThemeData get light {
    return commonInstanceThemeConfig().copyWith(
      splashColor: WidAppColors.n300,
      hintColor: WidAppColors.n300,
      canvasColor: WidAppColors.light,
      scaffoldBackgroundColor: WidAppColors.n100,
      dialogBackgroundColor: WidAppColors.n100,
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: WidAppColors.black,
        selectionColor: primaryColor,
      ),
      brightness: Brightness.light,
      textTheme: textTheme.lightTextTheme,
      elevatedButtonTheme: buttonThemes.elevatedButtonLightTheme,
      outlinedButtonTheme: buttonThemes.outlinedButtonLightTheme,
      textButtonTheme: buttonThemes.textButtonLightTheme,
      inputDecorationTheme: inputThemes.inputDecorationLightTheme,
      appBarTheme: WidAppbarTheme.lightAppbarTheme,
      bottomAppBarTheme: WidBottomAppbarTheme.lightBottomAppbarTheme,
      bottomSheetTheme: WidBottomSheetTheme.lightBottomSheetTheme,
      popupMenuTheme: const PopupMenuThemeData(
        color: WidAppColors.light,
      ),
      colorScheme: lightColorScheme.copyWith(
        primary: primaryColor,
      ),
      timePickerTheme: timePickerThemes.timePickerLightTheme,
      datePickerTheme: datePickerThemes.datePickerLightTheme,
    );
  }

  /// Dark theme implementation
  @override
  ThemeData get dark {
    return commonInstanceThemeConfig().copyWith(
      splashColor: WidAppColors.n800,
      hintColor: WidAppColors.n800,
      canvasColor: WidAppColors.n800,
      scaffoldBackgroundColor: WidAppColors.black,
      dialogBackgroundColor: WidAppColors.n800,
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: WidAppColors.light,
        selectionColor: primaryColor,
      ),
      brightness: Brightness.dark,
      textTheme: textTheme.darkTextTheme,
      elevatedButtonTheme: buttonThemes.elevatedButtonDarkTheme,
      outlinedButtonTheme: buttonThemes.outlinedButtonDarkTheme,
      textButtonTheme: buttonThemes.textButtonDarkTheme,
      inputDecorationTheme: inputThemes.inputDecorationDarkTheme,
      appBarTheme: WidAppbarTheme.darkAppbarTheme,
      bottomAppBarTheme: WidBottomAppbarTheme.darkBottomAppbarTheme,
      bottomSheetTheme: WidBottomSheetTheme.darkBottomSheetTheme,
      popupMenuTheme: const PopupMenuThemeData(
        color: WidAppColors.n800,
      ),
      colorScheme: darkColorScheme.copyWith(
        primary: primaryColor,
      ),
      timePickerTheme: timePickerThemes.timePickerDarkTheme,
      datePickerTheme: datePickerThemes.datePickerDarkTheme,
    );
  }

  /// Common theme properties
  ThemeData commonInstanceThemeConfig() => ThemeData(
        useMaterial3: false,
        dropdownMenuTheme: const DropdownMenuThemeData(
          menuStyle: MenuStyle(
            maximumSize: MaterialStatePropertyAll<Size?>(Size.fromHeight(300)),
          ),
        ),
        primaryColor: primaryColor,
        primarySwatch: primaryColor,
        iconTheme: IconThemeData(
          color: primaryColor,
        ),
        progressIndicatorTheme: progressIndicatorTheme,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: primaryColor,
          splashColor: primaryColor.shade800,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: primaryColor,
          unselectedItemColor: WidAppColors.n700,
          landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
          showUnselectedLabels: true,
        ),
        switchTheme: SwitchThemeData(
          thumbColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.selected)) {
                return primaryColor;
              }
              return null;
            },
          ),
          trackColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.selected)) {
                return primaryColor.withAlpha(140);
              }
              return null;
            },
          ),
        ),
        checkboxTheme: CheckboxThemeData(
          fillColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.selected)) {
                return primaryColor;
              }
              return WidAppColors.n600;
            },
          ),
          shape: const ContinuousRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
        ),
        chipTheme: ChipThemeData(
          showCheckmark: false,
          selectedColor: primaryColor,
          backgroundColor: WidAppColors.n300,
          disabledColor: WidAppColors.n300,
          brightness: Brightness.light,
        ),
        dividerColor: WidAppColors.n500,
        disabledColor: WidAppColors.n600,
      );

  /// Common theme properties
  static ThemeData get common {
    return ThemeData(
      useMaterial3: false,
      dropdownMenuTheme: const DropdownMenuThemeData(
        menuStyle: MenuStyle(
          maximumSize: MaterialStatePropertyAll<Size?>(Size.fromHeight(300)),
        ),
      ),
      primaryColor: WidAppColors.primary,
      primarySwatch: WidAppColors.primary,
      iconTheme: const IconThemeData(
        color: WidAppColors.callToAction,
      ),
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
      chipTheme: const ChipThemeData(
        showCheckmark: false,
        selectedColor: WidAppColors.callToAction,
        backgroundColor: WidAppColors.n300,
        disabledColor: WidAppColors.n300,
        brightness: Brightness.light,
      ),
      dividerColor: WidAppColors.n500,
      disabledColor: WidAppColors.n600,
    );
  }

  /// Custom light color theme
  static ColorScheme get lightColorScheme {
    return ThemeData.light().colorScheme.copyWith(
          background: WidAppColors.white,
          error: WidAppColors.error,
          primary: WidAppColors.dark,
        );
  }

  /// Custom dark color theme
  static ColorScheme get darkColorScheme {
    return ThemeData.dark().colorScheme.copyWith(
          background: WidAppColors.dark,
          error: WidAppColors.error,
          primary: WidAppColors.light,
        );
  }

  /// Custom theme for progress indicator
  static ProgressIndicatorThemeData get progressIndicatorTheme {
    return const ProgressIndicatorThemeData(color: WidAppColors.white);
  }
}

/// High contrast black and white theme
class WidAppBlackAndWhiteTheme extends _WidAppTheme {
  /// Default constructor
  WidAppBlackAndWhiteTheme({
    String fontFamily = WidAppDefaults.fontFamily,
  }) {
    final commonData = ThemeData(
      useMaterial3: false,
      dropdownMenuTheme: const DropdownMenuThemeData(
        menuStyle: MenuStyle(
          maximumSize: MaterialStatePropertyAll<Size?>(Size.fromHeight(300)),
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
        showUnselectedLabels: true,
      ),
      checkboxTheme: const CheckboxThemeData(
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
      ),
      chipTheme: const ChipThemeData(
        showCheckmark: false,
      ),
    );
    final textTheme = WidTextTheme(
      fontFamily: fontFamily,
    );
    final blackButtonThemes = WidButtonThemes(
      fontFamily: fontFamily,
      primaryColor: materialColorWhite,
    );
    final whiteButtonThemes = WidButtonThemes(
      fontFamily: fontFamily,
      primaryColor: materialColorBlack,
    );
    final inputThemes = WidInputTheme();
    light = ThemeData.light(useMaterial3: false).copyWith(
      primaryColor: materialColorBlack,
      brightness: Brightness.light,
      colorScheme: ColorScheme.light(
        primary: materialColorBlack,
        secondary: materialColorBlack,
        error: WidAppColors.error,
      ),
      textTheme: textTheme.lightTextTheme,
      elevatedButtonTheme: whiteButtonThemes.elevatedButtonLightTheme,
      outlinedButtonTheme: whiteButtonThemes.outlinedButtonLightTheme,
      textButtonTheme: whiteButtonThemes.textButtonLightTheme,
      dropdownMenuTheme: commonData.dropdownMenuTheme,
      bottomNavigationBarTheme: commonData.bottomNavigationBarTheme,
      checkboxTheme: commonData.checkboxTheme,
      inputDecorationTheme: inputThemes.inputDecorationLightTheme,
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: materialColorBlack,
        foregroundColor: materialColorWhite,
      ),
      chipTheme: commonData.chipTheme.copyWith(
        selectedColor: materialColorBlack,
        brightness: Brightness.dark,
        backgroundColor: WidAppColors.n400,
        disabledColor: WidAppColors.n400,
      ),
      appBarTheme: AppBarTheme(
        centerTitle: false,
        foregroundColor: materialColorBlack,
        backgroundColor: Colors.transparent,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light,
        ),
        elevation: 0,
        iconTheme: IconThemeData(
          color: materialColorBlack,
        ),
      ),
    );
    dark = ThemeData.dark(useMaterial3: false).copyWith(
      primaryColor: materialColorWhite,
      brightness: Brightness.dark,
      colorScheme: ColorScheme.dark(
        primary: materialColorWhite,
        secondary: materialColorWhite,
        error: WidAppColors.error,
      ),
      textTheme: textTheme.darkTextTheme,
      elevatedButtonTheme: blackButtonThemes.elevatedButtonLightTheme,
      outlinedButtonTheme: blackButtonThemes.outlinedButtonLightTheme,
      textButtonTheme: blackButtonThemes.textButtonLightTheme,
      dropdownMenuTheme: commonData.dropdownMenuTheme,
      bottomNavigationBarTheme: commonData.bottomNavigationBarTheme,
      checkboxTheme: commonData.checkboxTheme,
      inputDecorationTheme: inputThemes.inputDecorationDarkTheme,
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: materialColorWhite,
        foregroundColor: materialColorBlack,
      ),
      chipTheme: commonData.chipTheme.copyWith(
        selectedColor: materialColorWhite,
        brightness: Brightness.light,
        backgroundColor: WidAppColors.n500,
        disabledColor: WidAppColors.n500,
      ),
      appBarTheme: AppBarTheme(
        centerTitle: false,
        foregroundColor: materialColorWhite,
        backgroundColor: Colors.transparent,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
        ),
        elevation: 0,
        iconTheme: IconThemeData(
          color: materialColorWhite,
        ),
      ),
    );
  }
}
