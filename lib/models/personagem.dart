//Class de Personagem

import 'package:rpg_card_app/models/rolagem_dados.dart';

class Personagem {
  final String id;
  final String nome;
  final String classe;
  final List<RolagemDados> rolagens;

  Personagem({required this.id, required this.nome, required this.classe, this.rolagens = const []});


factory Personagem.fromJson(Map<String, dynamic> json) {
    return Personagem(
      id: json['id'],
      nome: json['nome'],
      classe: json['classe'],
    );
  }
}
