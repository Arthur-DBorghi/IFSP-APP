import 'package:aula7/aula09/classes/disciplina.dart';
import 'package:aula7/aula09/widgets/disciplinas_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Aula9Disciplinas extends StatelessWidget {
  const Aula9Disciplinas({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Disciplina> disciplinas = Disciplina.gerarDisciplinas();

    return ListView.builder(
      itemCount: disciplinas.length,
      itemBuilder: (context, index) => DisciplinaCard(
        disciplina: disciplinas[index],
      ),
    );
  }
}
