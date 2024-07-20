import 'package:aula7/aula09/classes/disciplina.dart';
import 'package:aula7/aula09/widgets/disciplinas_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Aula09DisciplinasAleatorias extends StatelessWidget {
  const Aula09DisciplinasAleatorias({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Disciplina> disciplinas = Disciplina.gerarDisciplinas();
    disciplinas.shuffle();

    return ListView.builder(
      itemCount: 1,
      itemBuilder: (context, indice) => DisciplinaCard(
        disciplina: disciplinas[indice],
      ),
    );
  }
}
