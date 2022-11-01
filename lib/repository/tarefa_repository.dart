import 'package:psftodoapp/models/todoModel.dart';
import 'package:http/http.dart' as http;

abstract class TarefaRepository {
  Future<bool> criarTarefaRepository(TodoModel todoModel);
}

class TarefaRepositoryHttp implements TarefaRepository {
  final baseUrl = 'https://crudcrud.com/api/e445910476f64a2fb110171c73eb26fa';
  @override
  Future<bool> criarTarefaRepository(TodoModel todoModel) async {
    final response = await http.post(Uri.parse('$baseUrl+/todos'));
    print(response.statusCode);
    return true;
  }
}
