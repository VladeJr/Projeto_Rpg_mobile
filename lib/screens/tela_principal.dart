// lib/screens/home_screen.dart
import 'package:flutter/material.dart';
import 'tela_personagens.dart'; // Importa a tela de listagem de personagens

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("RPG Card Game App")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CharacterListScreen()),
            );
          },
          child: Text("Ver Personagens"),
        ),
      ),
    );
  }
}
