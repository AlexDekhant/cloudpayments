import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Widget child;
  final Color backgroundColor;
  final VoidCallback onPressed;

  CustomButton({required this.child, required this.backgroundColor, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(backgroundColor),
        minimumSize: WidgetStateProperty.all(Size(double.infinity, 48.0)),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
