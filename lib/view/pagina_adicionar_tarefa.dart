import 'package:flutter/material.dart';
import 'package:psftodoapp/controller/adicionar_tarefa_controller.dart';
import 'package:psftodoapp/models/todoModel.dart';

class PaginaAdicionarTarefa extends StatefulWidget {
  const PaginaAdicionarTarefa({Key? key}) : super(key: key);

  @override
  State<PaginaAdicionarTarefa> createState() => _PaginaAdicionarTarefaState();
}

class _PaginaAdicionarTarefaState extends State<PaginaAdicionarTarefa> {
  final adicionar = AdicionarTarefaController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adicionar Tarefa'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            const SizedBox(
              height: 12,
            ),
            const SizedBox(
              height: 24,
            ),
            Column(
              children: [
                TextFormField(
                  keyboardType: const TextInputType.numberWithOptions(
                    signed: true,
                  ),
                  textInputAction: TextInputAction.send,
                  decoration: const InputDecoration(hintText: 'Título'),
                ),
                TextFormField(
                  keyboardType: TextInputType.multiline,
                  decoration: const InputDecoration(
                    labelText: 'Subtitulo',
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          adicionar.criarTarefa(TodoModel());
          Navigator.pop(context);
        },
        child: const Icon(
          Icons.check,
        ),
      ),
    );
  }
}
