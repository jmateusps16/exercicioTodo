import 'dart:convert';

class TodoModel {
  final String? titulo;
  final String? subtitulo;
  final bool? finalizado;
  TodoModel({
    this.titulo,
    this.subtitulo,
    this.finalizado = false,
  });

  TodoModel copyWith({
    String? titulo,
    String? subtitulo,
    bool? finalizado,
  }) {
    return TodoModel(
      titulo: titulo ?? this.titulo,
      subtitulo: subtitulo ?? this.subtitulo,
      finalizado: finalizado ?? this.finalizado,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'titulo': titulo,
      'subtitulo': subtitulo,
      'finalizado': finalizado,
    };
  }

  factory TodoModel.fromMap(Map<String, dynamic> map) {
    return TodoModel(
      titulo: map['titulo'] as String,
      subtitulo: map['subtitulo'] as String,
      finalizado: map['finalizado'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory TodoModel.fromJson(String source) =>
      TodoModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'TodoModel(titulo: $titulo, subtitulo: $subtitulo, finalizado: $finalizado)';

  @override
  bool operator ==(covariant TodoModel other) {
    if (identical(this, other)) return true;

    return other.titulo == titulo &&
        other.subtitulo == subtitulo &&
        other.finalizado == finalizado;
  }

  @override
  int get hashCode =>
      titulo.hashCode ^ subtitulo.hashCode ^ finalizado.hashCode;
}
