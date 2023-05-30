import 'package:flutter/material.dart';

/// Text implementation for the Wid Design System
class WidText extends StatelessWidget {
  /// Constructor
  const WidText({
    required this.text,
    this.variant = WidTextVariant.bodyMedium,
    super.key,
  });

  /// Text widget implementing displayLarge styles
  const WidText.displayLarge({
    required this.text,
    super.key,
  }) : variant = WidTextVariant.displayLarge;

  /// Text widget implementing displayMedium styles
  const WidText.displayMedium({
    required this.text,
    super.key,
  }) : variant = WidTextVariant.displayMedium;

  /// Text widget implementing displaySmall styles
  const WidText.displaySmall({
    required this.text,
    super.key,
  }) : variant = WidTextVariant.displaySmall;

  /// Text widget implementing headlineLarge styles
  const WidText.headlineLarge({
    required this.text,
    super.key,
  }) : variant = WidTextVariant.headlineLarge;

  /// Text widget implementing headlineMedium styles
  const WidText.headlineMedium({
    required this.text,
    super.key,
  }) : variant = WidTextVariant.headlineMedium;

  /// Text widget implementing headlineSmall styles
  const WidText.headlineSmall({
    required this.text,
    super.key,
  }) : variant = WidTextVariant.headlineSmall;

  /// Text widget implementing titleLarge styles
  const WidText.titleLarge({
    required this.text,
    super.key,
  }) : variant = WidTextVariant.titleLarge;

  /// Text widget implementing bodyLarge styles
  const WidText.bodyLarge({
    required this.text,
    super.key,
  }) : variant = WidTextVariant.bodyLarge;

  /// Text widget implementing bodyMedium styles
  const WidText.bodyMedium({
    required this.text,
    super.key,
  }) : variant = WidTextVariant.bodyMedium;

  /// Text widget implementing bodySmall styles
  const WidText.bodySmall({
    required this.text,
    super.key,
  }) : variant = WidTextVariant.bodySmall;

  /// Text widget implementing labelLarge styles
  const WidText.labelLarge({
    required this.text,
    super.key,
  }) : variant = WidTextVariant.labelLarge;

  /// Text widget implementing labelMedium styles
  const WidText.labelMedium({
    required this.text,
    super.key,
  }) : variant = WidTextVariant.labelMedium;

  /// Text widget implementing labelSmall styles
  const WidText.labelSmall({
    required this.text,
    super.key,
  }) : variant = WidTextVariant.labelSmall;

  /// Text to display
  final String text;

  /// The set of predefined text styles
  final WidTextVariant variant;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: getStylesFromContextByVariant(context, variant),
    );
  }
}

/// Returns text styles from the Theme context based on the text variant
TextStyle? getStylesFromContextByVariant(
  BuildContext context,
  WidTextVariant variant,
) {
  final textTheme = Theme.of(context).textTheme;
  if (variant == WidTextVariant.displayLarge) return textTheme.displayLarge;
  if (variant == WidTextVariant.displayMedium) return textTheme.displayMedium;
  if (variant == WidTextVariant.displaySmall) return textTheme.displaySmall;
  if (variant == WidTextVariant.headlineLarge) return textTheme.headlineLarge;
  if (variant == WidTextVariant.headlineMedium) return textTheme.headlineMedium;
  if (variant == WidTextVariant.headlineSmall) return textTheme.headlineSmall;
  if (variant == WidTextVariant.titleLarge) return textTheme.titleLarge;
  if (variant == WidTextVariant.bodyLarge) return textTheme.bodyLarge;
  if (variant == WidTextVariant.bodyMedium) return textTheme.bodyMedium;
  if (variant == WidTextVariant.bodySmall) return textTheme.bodySmall;
  if (variant == WidTextVariant.labelLarge) return textTheme.labelLarge;
  if (variant == WidTextVariant.labelMedium) return textTheme.labelMedium;
  if (variant == WidTextVariant.labelSmall) return textTheme.labelSmall;
  return textTheme.bodyMedium;
}

/// Variants with predefined styles for displaying texts
enum WidTextVariant {
  /// Implements text styles from Theme.textContext.displayLarge
  displayLarge,

  /// Implements text styles from Theme.textContext.displayMedium
  displayMedium,

  /// Implements text styles from Theme.textContext.displaySmall
  displaySmall,

  /// Implements text styles from Theme.textContext.headlineLarge
  headlineLarge,

  /// Implements text styles from Theme.textContext.headlineMedium
  headlineMedium,

  /// Implements text styles from Theme.textContext.headlineSmall
  headlineSmall,

  /// Implements text styles from Theme.textContext.titleLarge
  titleLarge,

  /// Implements text styles from Theme.textContext.bodyLarge
  bodyLarge,

  /// Implements text styles from Theme.textContext.bodyMedium
  bodyMedium,

  /// Implements text styles from Theme.textContext.bodySmall
  bodySmall,

  /// Implements text styles from Theme.textContext.labelLarge
  labelLarge,

  /// Implements text styles from Theme.textContext.labelMedium
  labelMedium,

  /// Implements text styles from Theme.textContext.labelSmall
  labelSmall,
}
