import 'package:aula7/aula09/classes/disciplina_aleatoria.dart';
import 'package:flutter/material.dart';

class Aula09Dashboard extends StatelessWidget {
  const Aula09Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Aula09DisciplinasAleatorias(),
    );
  }
}
