// lib/main.dart
import 'package:flutter/material.dart';
import 'screens/tela_principal.dart';

void main() => runApp(RPGCardGameApp());

class RPGCardGameApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RPG Card Game',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}
