import 'package:flutter/material.dart';

class KeyWidget extends StatelessWidget {
  final Color color;
  final VoidCallback onPressed;

  const KeyWidget({
    super.key,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: onPressed,
        child: Container(
          color: color,
        ),
      ),
    );
  }
}
