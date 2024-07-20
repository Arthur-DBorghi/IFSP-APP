import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

class TipoLogin extends StatefulWidget {
  const TipoLogin(
      {required this.selectedList, required this.alterarTipoLogin, super.key});

  final List<bool> selectedList;
  final Function(int) alterarTipoLogin;

  @override
  State<TipoLogin> createState() => _TipoLoginState();
}

class _TipoLoginState extends State<TipoLogin> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Text('Logar com'),
        const SizedBox(
          width: 8,
        ),
        ToggleButtons(
          borderRadius: BorderRadius.circular(10),
          isSelected: widget.selectedList,
          onPressed: widget.alterarTipoLogin,
          children: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Email'),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('CPF'),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Telefone'),
            ),
          ],
        )
      ],
    );
  }
}
