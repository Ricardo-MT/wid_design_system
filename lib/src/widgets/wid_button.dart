// ignore_for_file: constant_identifier_names
import 'package:flutter/material.dart';
import 'package:wid_design_system/src/theme/palette.dart';

import 'package:wid_design_system/src/widgets/wid_text.dart';

/// Button implementation with variants
class WidButton extends StatelessWidget {
  /// Constructor
  const WidButton({
    required this.onPressed,
    required this.text,
    super.key,
    this.variant = WidButtonVariant.contained,
    this.disabled = false,
  });

  /// Text to display
  final String text;

  /// Callback function
  final VoidCallback onPressed;

  /// contained, outlined, text, callToAction
  final WidButtonVariant variant;

  /// Disabled
  final bool disabled;

  @override
  Widget build(BuildContext context) {
    Widget button;
    switch (variant) {
      case WidButtonVariant.contained:
        button = ElevatedButton(
          onPressed: disabled ? null : onPressed,
          child: WidText(
            text: text,
            variant: WidTextVariant.headlineSmall,
            style: TextStyle(color: Theme.of(context).colorScheme.background),
          ),
        );
      case WidButtonVariant.text:
        button = TextButton(
          onPressed: disabled ? null : onPressed,
          child: WidText(
            text: text,
            variant: WidTextVariant.headlineSmall,
          ),
        );
      case WidButtonVariant.outlined:
        button = OutlinedButton(
          onPressed: disabled ? null : onPressed,
          child: WidText(
            text: text,
            variant: WidTextVariant.headlineSmall,
          ),
        );
      case WidButtonVariant.callToAction:
        button = ElevatedButton(
          onPressed: disabled ? null : onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: WidAppColors.callToAction,
          ).merge(Theme.of(context).elevatedButtonTheme.style),
          child: WidText(
            text: text,
            variant: WidTextVariant.headlineSmall,
          ),
        );
    }
    return button;
  }
}

/// Variants for buttons
enum WidButtonVariant {
  /// No borders, background color contrasts the scaffoldBackgroundColor
  contained,

  /// No borders, no background
  text,

  /// Outlined border, outline border color same as text, no background
  outlined,

  /// No borders, background color is WidAppColors.callToAction
  callToAction
}
