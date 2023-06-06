import 'package:flutter/material.dart';

/// Widget that handles hiding the keyboard when touching outside
class WidTapToHideKeyboard extends StatelessWidget {
  /// Receives the child widget
  const WidTapToHideKeyboard({required this.child, super.key});

  /// Child Widget
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: child,
    );
  }
}
