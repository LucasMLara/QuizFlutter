import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;

  const Resultado(this.pontuacao);
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
    return Center(
        child: Text(
      fraseResultado,
      style: TextStyle(fontSize: 28),
    ));
  }
}
