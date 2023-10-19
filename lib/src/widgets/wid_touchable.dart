import 'package:flutter/material.dart';

/// Widget for wrapping any other widget and give it onPress interaction
class WidTouchable extends StatelessWidget {
  /// Constructor
  const WidTouchable({required this.child, required this.onPress, super.key});

  /// Child widget
  final Widget child;

  /// onPress callback
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onPress,
        child: child,
      ),
    );
  }
}
