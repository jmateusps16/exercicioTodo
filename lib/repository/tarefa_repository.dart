import 'dart:convert';
import 'package:psftodoapp/models/todoModel.dart';
import 'package:http/http.dart' as http;

abstract class TarefaRepository {
  Future<bool> putTarefa(TodoModel tarefaModelo);
  Future<List<TodoModel>> getTarefa();
  Future<bool> deleteTarefa(String titulo);
}

class TarefaRepositoryHttp implements TarefaRepository {
  final baseUrl = 'https://crudcrud.com/api/e445910476f64a2fb110171c73eb26fa';
  @override
  Future<bool> putTarefa(TodoModel company) async {
    final response = await http.post(
      Uri.parse('$baseUrl/todoList'),
      body: company.toJson(),
      headers: {
        "content-type": "application/json",
        "accept": "application/json",
      },
    );
    print(response.statusCode);
    return true;
  }

  @override
  Future<List<TodoModel>> getTarefa() async {
    final response = await http.get(
      Uri.parse('$baseUrl/todoList'),
    );
    print(response.body);
    print(jsonDecode(response.body));
    print(List.from(jsonDecode(response.body)));
    final list = List.from(jsonDecode(response.body));
    final company = list.map((e) => TodoModel.fromMap(e)).toList();
    return company;
  }

  @override
  Future<bool> deleteTarefa(String titulo) async {
    final response = await http.delete(
      Uri.parse('$baseUrl/todoList/$titulo'),
    );
    return response.statusCode == 200;
  }
}
