import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;

  Resultado(this.pontuacao, {super.key});

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabens';
    } else if (pontuacao < 12) {
      return 'Voce é bom';
    } else if (pontuacao < 16) {
      return 'Impressionante!';
    } else {
      return 'Nivel Jedi';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      fraseResultado,
      style: const TextStyle(fontSize: 28),
    ));
  }
}