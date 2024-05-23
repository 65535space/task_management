import 'package:flutter/material.dart';

class FirstPageButton extends StatelessWidget {
  const FirstPageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextButton(
      onPressed: null,
      child: Text("today"),
    );
  }
}
