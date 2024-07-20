import 'package:aula7/aula08/aula8.dart';
import 'package:aula7/aula09/aula09.dart';
import 'package:aula7/aula09/view/aula9_dashboard.dart';
import 'package:aula7/aula09/view/aula9_disciplinas.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const Aula08(),
    ),
    GoRoute(
      path: '/aula9/:name',
      builder: (context, state) {
        final name = state.pathParameters['name'];
        print('Nome recebeido: $name');
        return Aula09(title: 'Ola $name');
      },
    ),
    GoRoute(
      path: '/aula9_dashboard',
      builder: (context, state) => const Aula09Dashboard(),
    ),
    GoRoute(
      path: '/aula9_disciplinas',
      builder: (context, state) => const Aula9Disciplinas(),
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      routerConfig: _router,
    );
  }
}
