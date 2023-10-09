import 'package:flutter/material.dart';

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual é a sua cor favorita ?',
      'Qual o seu animal favorito ?',
    ];

    void responder() {
      setState(() {
        if (perguntaSelecionada >= perguntas.length - 1) {
          perguntaSelecionada = 0;
        } else {
          perguntaSelecionada++;
        }
      });
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Questionário"),
        ),
        body: Column(
          children: <Widget>[
            Text(perguntas[perguntaSelecionada]),
            ElevatedButton(
                onPressed: responder, child: const Text("Resposta 1")),
            ElevatedButton(
                onPressed: responder, child: const Text("Resposta 2")),
            ElevatedButton(
                onPressed: responder, child: const Text("Resposta 3"))
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});
  @override
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
