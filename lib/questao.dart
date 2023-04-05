import 'package:flutter/cupertino.dart';

class Questao extends StatelessWidget {
  late final String texto;

  Questao(this.texto);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(20),
        child: Text(
          texto,
          style: TextStyle(fontSize: 28),
          textAlign: TextAlign.center,
        ));
  }
}
