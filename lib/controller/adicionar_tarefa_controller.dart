import 'package:psftodoapp/models/todoModel.dart';
import 'package:psftodoapp/repository/tarefa_repository.dart';

class AdicionarTarefaController {
  final TarefaRepository _adicionarRepository;

  AdicionarTarefaController([TarefaRepository? repository])
      : _adicionarRepository = repository ?? TarefaRepositoryHttp();

  Future<void> criarTarefa(TodoModel todo) async {
    final result = await _adicionarRepository.postTarefa(todo);
  }
}
