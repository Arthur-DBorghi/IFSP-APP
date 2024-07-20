import 'package:aula7/aula09/view/aula9_dashboard.dart';
import 'package:aula7/aula09/view/aula9_disciplinas.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Aula09 extends StatefulWidget {
  final String title;
  const Aula09({super.key, this.title = ''});

  @override
  State<Aula09> createState() => _Aula09State();
}

class _Aula09State extends State<Aula09> {
  late String title;
  var _itemSelecionado = 0;
  final _subtelas = const [Aula09Dashboard(), Aula9Disciplinas()];

  @override
  void initState() {
    title = widget.title;
    super.initState();
  }

  void _alterarBottomNav(int idx) {
    if (idx == 2) {
      //---------------------------------------------------------------
      showDialog(
        context: context,
        builder: (BuildContext contexto) {
          return AlertDialog(
            title: const Text('Confirmar'),
            content: const SingleChildScrollView(
              child: SizedBox(
                height: 60,
                width: 40,
                child: Text('Tem certeza que deseja sair?'),
              ),
            ),
            actions: [
              ElevatedButton(
                onPressed: (() {
                  context.go('/');
                }),
                child: const Text('Sim'),
              ),
              ElevatedButton(
                onPressed: (() {
                  Navigator.pop(context);
                }),
                child: const Text('Voltar'),
              ),
            ],
          );
          //---------------------------------------------------------------
        },
      );
    } else {
      setState(() {
        _itemSelecionado = idx;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didpop) async {},
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
          backgroundColor: Colors.black38,
        ),
        body: _subtelas[_itemSelecionado],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _itemSelecionado,
          selectedItemColor: Colors.white,
          backgroundColor: Colors.green,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Dashboard'),
            BottomNavigationBarItem(
                icon: Icon(Icons.book),
                label: 'disciplinas',
                activeIcon: Icon(Icons.menu_book)),
            BottomNavigationBarItem(icon: Icon(Icons.logout), label: 'sair')
          ],
          onTap: _alterarBottomNav,
        ),
      ),
    );
  }
}
