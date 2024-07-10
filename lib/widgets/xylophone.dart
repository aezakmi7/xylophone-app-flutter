import 'package:flutter/material.dart';

class XylophoneWidget extends StatelessWidget {
  const XylophoneWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Center(
      child: TextButton(onPressed: () {}, child: const Text('ClickMe!')),
    ));
  }
}
