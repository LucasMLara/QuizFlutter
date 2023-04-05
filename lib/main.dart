import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

main() => runApp(PerguntaApp());

class PerguntasAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      {
        'texto': 'Qual é sua cor favorita?',
        'respostas': ['Preto', 'Vermelho', 'Verde', 'branco']
      },
      {
        'texto': 'Qual é seu animal favorito?',
        'respostas': ['Coelho', 'Cobra', 'Elefante', 'Leão']
      },
      {
        'texto': 'Qual é seu instrutor favorito?',
        'respostas': ['Maria', 'João', 'Leo', 'Pedro']
      },
    ];
    List<Widget> respostas = [];
    for (var resp in perguntas[_perguntaSelecionada].cast()['respostas']) {
      respostas.add(Resposta(resp, _responder));
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[_perguntaSelecionada]['texto'].toString()),
            ...respostas
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  PerguntasAppState createState() {
    return PerguntasAppState();
  }
}
