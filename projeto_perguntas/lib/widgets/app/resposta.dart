import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String text;

  const Resposta(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => {},
      child: Text(text),
    );
  }
}
