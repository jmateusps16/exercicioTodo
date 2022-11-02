import 'package:flutter/material.dart';
import 'package:psftodoapp/view/pagina_adicionar_tarefa.dart';
import 'package:psftodoapp/view/pagina_inicial.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'TODOS', initialRoute: '/', routes: {
      '/': (context) => const PaginaInicial(),
      'adicionarTarefa': (context) => const PaginaAdicionarTarefa(),
    });
  }
}
