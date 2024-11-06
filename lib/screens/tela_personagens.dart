//Tela Principal de personagens

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rpg_card_app/models/personagem.dart';

class CharacterListScreen extends StatelessWidget {
  final List<Personagem> personagens = [
    Personagem(id: '1', nome: 'Verazza', classe: 'Magnata'),
    Personagem(id: '2', nome: 'Legolas', classe: 'Arqueiro'),
  ];

  

  CharacterListScreen({super.key});@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lista de Personagens")),
      body: ListView.builder(
        itemCount: personagens.length,
        itemBuilder: (context, index) {
          final personagem = personagens[index];
          return ListTile(
            title: Text(personagem.nome),
            subtitle: Text(personagem.classe),
          );
        },
      ),
    );
  }
}
