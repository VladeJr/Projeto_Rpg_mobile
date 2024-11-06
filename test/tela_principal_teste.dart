//Testes da Tela Inicial

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import '../lib/screens/tela_principal.dart';

void main() {
  testWidgets('Deve exibir o título da tela Home', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: HomeScreen()));


    expect(find.text("Bem-vindo ao RPG Card Game!"), findsOneWidget);
  });
}
