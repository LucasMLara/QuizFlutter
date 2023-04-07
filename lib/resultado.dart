import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() qndReiniciarQuestionario;

  const Resultado(this.pontuacao, this.qndReiniciarQuestionario);
  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabéns';
    } else if (pontuacao < 12) {
      return 'Voce é bom';
    } else if (pontuacao < 16) {
      return 'impressionante';
    } else {
      return 'Nivel Jedi!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
            child: Text(
          fraseResultado,
          style: TextStyle(fontSize: 28),
        )),
        TextButton(
          child: Text(
            'Reiniciar?',
            style: TextStyle(fontSize: 18),
          ),
          onPressed: qndReiniciarQuestionario,
        )
      ],
    );
  }
}
